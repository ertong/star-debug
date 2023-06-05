# Custom Support System API Documentation

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
This endpoint returns messages from the support service - latest news, working hours, etc.

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

## `/tickets` Endpoint

### Description
This endpoint allows adding a new ticket.

### Request
- Method: POST
- URL: `https://api.example.com/ticket`

```json
{
  "subject": "Issue with account login",
  "description": "I'm unable to log in to my account. Please assist."
}
```

### Example Response
```json
{
  "ticket_id": "TICKET-12345"
  "messages": [ .. ]
}
```
