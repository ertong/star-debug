package com.stardebug;

import android.util.Log;

import okhttp3.*;
import okhttp3.dnsoverhttps.DnsOverHttps;
import org.jetbrains.annotations.NotNull;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class HttpTester {
    static Pattern reIp = Pattern.compile("(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)");

    static OkHttpClient _dnsClient;

    static synchronized void ensureDnsClient(){
        if (_dnsClient !=null)
            return;
        _dnsClient = new OkHttpClient.Builder()
                .callTimeout(800, TimeUnit.MILLISECONDS)
                .dns(new Dns() {
                    @NotNull
                    @Override
                    public List<InetAddress> lookup(@NotNull String s) throws UnknownHostException {
                        if (s.contains(":") || reIp.matcher(s).matches())
                            return List.of(InetAddress.getByName(s));

                        if ("dns.google".equals(s))
                            return List.of(InetAddress.getByAddress(new byte[]{8, 8, 4, 4}));

                        return List.of();
                    }
                })
                .build();
    }
    static HashMap<String, Object> run(String url, String method, String dnsResolveTo, String dohUrl) throws Exception {
        ensureDnsClient();
        DnsOverHttps dns = new DnsOverHttps.Builder()
                .client(_dnsClient)
                .url(Objects.requireNonNull(HttpUrl.parse(dohUrl != null ? dohUrl : "https://1.0.0.1/dns-query")))
                .build();

        OkHttpClient client = new OkHttpClient.Builder()
                .callTimeout(3, TimeUnit.SECONDS)
                .dns(new Dns() {
                    @NotNull
                    @Override
                    public List<InetAddress> lookup(@NotNull String s) throws UnknownHostException {
//                        System.out.println("Resolve "+s);
                        if (s.contains(":") || reIp.matcher(s).matches())
                            return List.of(InetAddress.getByName(s));

                        if ("dns.google".equals(s))
                            return List.of(InetAddress.getByAddress(new byte[]{8, 8, 4, 4}));

                        if (dnsResolveTo != null) {
                            return List.of(InetAddress.getByName(dnsResolveTo));
                        }
                        List<InetAddress> res;
                        try{
                            res = dns.lookup(s);
                        } catch (Exception e ){
                            res = List.of(InetAddress.getByName(s));
                        }
                        return  res;
                    }
                })
                .build();

        try {
            Request request = new Request.Builder()
                    .url(url)
                    .method(method, null)
                    .build();

            try (Response response = client.newCall(request).execute()) {
                HashMap<String, Object> res = new HashMap<>();
                res.put("code", response.code());
                res.put("body", response.body().string());
                return res;
            }
        } finally {
            client.dispatcher().executorService().shutdown();
            client.connectionPool().evictAll();
        }
    }
}