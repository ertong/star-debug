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

    static HashMap<String, Object> run(String url, String method, String dnsResolveTo, String dohUrl) throws Exception {
        OkHttpClient bootstrapClient = new OkHttpClient.Builder()
                .callTimeout(2, TimeUnit.SECONDS)
                .build();

        DnsOverHttps dns = new DnsOverHttps.Builder().client(bootstrapClient)
                .url(Objects.requireNonNull(HttpUrl.parse(dohUrl != null ? dohUrl : "https://1.1.1.1/dns-query")))
                .build();

        OkHttpClient client = bootstrapClient.newBuilder()
                .dns(new Dns() {
                    @NotNull
                    @Override
                    public List<InetAddress> lookup(@NotNull String s) throws UnknownHostException {
                        if (dnsResolveTo != null) {
                            return List.of(InetAddress.getByName(dnsResolveTo));
                        }

                        if (s.contains(":") || reIp.matcher(s).matches())
                            return List.of(InetAddress.getByName(s));

                        if ("dns.google".equals(s))
                            return List.of(InetAddress.getByAddress(new byte[]{8, 8, 8, 8}));


                        return dns.lookup(s);
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
                String body = response.body().string();
                res.put("body", body);
                return res;
            }
        } finally {
            client.dispatcher().executorService().shutdown();
            client.connectionPool().evictAll();
        }
    }
}
