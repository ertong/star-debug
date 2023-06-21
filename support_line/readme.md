# Custom Support System API Documentation

## General info

The API is intended to provide a chat like system to process support requests.
Each session is associated with the actual device ID and an application token,
generated on the client's side to distinct different users of the same device,
contacting from the apps on different phones.

## `/info` Endpoint

### Description
This endpoint returns a description of the Support System Service.

### Request
- Method: GET
- URL: `https://api.example.com/info`

### Response
- Status Code: 200 (OK)
- Content Type: application/json

#### Example Response Body
```json
{
  "service_name": "Narodniy Starlink Support System",
  "description": "Supported by volonteers.",
  "version": "1.0"
}
```

## `/news` Endpoint

### Description
This endpoint returns information messages from the support service - latest news, working hours, etc.

### Request
- Method: GET
- URL: `https://api.example.com/news`

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

## `/messages` Endpoint

### Description
This endpoint allows adding either a new support request or continue the existing conversation,
list messages.
The structure of the conversation is intended to be flat, like a standard chat.
It is possible to provide extra functionality by different messages types.  

### Request
- Method: GET
- URL: `https://api.example.com/messages`

### Headers:
- Authorization: Basic <base64 encoded string of the format: "device_id:app_token">

### Example Response Body
```json
{
  "messages":[
    {
      "id": 1,
      "direction": "outgoing", 
      "type": "some_message_type",
      "message": "I'm unable to log in to my account. Please assist.",
      "timestamp": "2023-05-20T08:15:00Z"
    },
    {
      "id": 2,
      "direction": "incoming", 
      "type": "some_message_type",
      "message": "Please wait for the support be available.",
      "timestamp": "2023-05-20T08:15:00Z"
    }
  ] 
}
```

### Request
- Method: POST
- URL: `https://api.example.com/messages`

### Headers:
- Authorization: Basic <base64 encoded string of the format: "device_id:app_token">


### Example Request Body
```json
{
  "type": "some_message_type",
  "message": "I'm unable to log in to my account. Please assist."
}
```

```json
{
  "type": "some_message_type",
  "message": "I'm unable to log in to my account. Please assist."
}
```

### Example Response
```json
{
  "messages": [
    {
      "id": 2,
      "direction": "incoming", 
      "type": "some_message_type",
      "message": "You request is being proceed.",
      "timestamp": "2023-05-20T08:15:00Z"
    }
  ]
}
```

Messages list in this case may return some immediate auto replies,
like greetings or some generic info on further communication process.

There is no any specific error flag in the response body.
For the safe of the errors handling it makes sense to go with the HTTP statuses 
and message types.
