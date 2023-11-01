# Custom Support System API Documentation

The API is intended to provide a chat-like system to process support requests to third party support service.

- The App does not provide any default support service.
- User can add one or several support systems.

NOT a goal:
- Replace official Starlink support. 

## General info

- API is built as JSON HTTP REST-like service.
- All endpoints have common `BASEURL` - url without query string. 
  So, if `BASEURL` is `https://api.example.com/path-to-service`, endpoints can have urls 
  like `https://api.example.com/path-to-service/info` or `https://api.example.com/path-to-service/news`.
- With every request client sends `X-DEVICE-ID` header - random base64-urlsafe string - token of the app instance - generated once for every app installation. 

## Registration

- Support service system advertises registration url. It can be single public url, or per-user private urls.
- To add support service to the app, user enters registration url of the service.
- Initially, registration url is a `BASEURL` of the service. `BASEURL` can be changed if `/info` endpoint 
  returns new `BASEURL`.

## GET `/info`

Returns a description of the Support System Service.

**Request**: GET `$BASEURL/info`

#### Example Response Body
```json
{
  "service_name": "Narodniy Starlink Support System",
  "description": "Supported by volonteers.",
  "logo": "https://api.example.com/some-square-logo.png",
  "base_url": "https://new-base-url",
  "version": "1.0"
}
```
`base_url` - is optional. If it is returned, the app will use the new url in subsequent requests.

## GET `/news`

Returns information messages from the support service - latest news, working hours, etc.

**Request**: GET `$BASEURL/news`

### Example Response Body
```json
{
  "messages": [
    {
      "id": 1,
      "title": "Important Announcement",
      "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum aliquam nisl eget lacus aliquam, sed lacinia mi faucibus.",
      "timestamp": "2023-05-22T10:30:00Z"
    },
    {
      "id": 2,
      "title": "Scheduled Maintenance",
      "content": "Etiam et ante non augue auctor sagittis. Quisque lacinia enim at orci elementum, nec viverra enim bibendum.",
      "timestamp": "2023-05-20T08:15:00Z"
    }
  ]
}
```

- `content` is a Markdown text.
- There should be no too many items returned in this response. Only recent and up-to-date announcements are expected. 
  Up to 10-20 items should be OK. 

## PUT `/message`

Creates a new message from the app to the Support System.

**Request**: PUT `$BASEURL/message`
```json
[
  {
    "dish_id": "ut01000000-00000000-002a2827",
    "type": "message",
    "client_id": "some-string-message-id",
    "message": "I'm unable to log in to my account. Please assist.",
    "time_written": "2023-05-20T08:15:00Z"
  }
]
```
Here:
 - `dish_id` - id of the dish the support is requested.
 - `type` - message type:
   - `message` - just plain test message. `message` field is required.
   - `debug-data` - Debug Data json. `debug_data` field is required.
 - `client_id` - some message id generated by client app. 
   Server should be able to accept the same message multiple times and deduplicate them.
 
**Response**:
```json
{}
```
The server cannot reject any messages. If the response code is 200 - all messages are received, stored and saved.
Otherwise, all the messages are up to resend.
If, for some reason, some message cannot be received (wrong ids, wrong format, wrong type, etc.), the server should log it 
and silently ignore.

## POST `/messages`

Receives the list of new messages.

**Request**: POST `$BASEURL/messages`
```json
{
  "dishes": {
    "ut01000000-00000000-002a2827": 123,
    "ut01000000-00000000-002a2828": 125
  }
}
```
The request contains the list of all dish ids the app expecting to receive messages for. 
The values are ids of the last messages the app has for specified dishes (0 if there are no ones).

**Response**:
```json
{
  "messages":[
    {
      "id": 1, 
      "dish_id": "ut01000000-00000000-002a2827",
      "client_id": "message-client-id", 
      "type": "message",
      "message": "I'm unable to log in to my account. Please assist.",
      "time_received": "2023-05-20T08:15:00Z",
      "time_written": "2023-05-20T08:15:00Z"
    },
    {
      "id": 2,
      "dish_id": "ut01000000-00000000-002a2827",
      "type": "message",
      "message": "Please wait for the support be available.",
      "time_written": "2023-05-20T08:15:00Z"
    }
  ]
}
```

## TODO

- Upload blobs