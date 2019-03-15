---
title: New Twitch API
language_tabs:
  - HTTP: HTTP
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="new-twitch-api">New Twitch API v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

The New Twitch API provides tools for developing integrations with Twitch.

Base URLs:

* <a href="https://api.twitch.tv/helix">https://api.twitch.tv/helix</a>

<a href="https://www.twitch.tv/p/legal/terms-of-service/">Terms of service</a>

<h1 id="new-twitch-api-moderation">Moderation</h1>

Moderation APIs can be used to build a curated, safe experience in panels and extensions

## Get Moderator Change Events

<a id="opIdgetModeratorChangeEvents"></a>

> Code samples

`GET /moderation/moderators/events`

Returns all moderators in the channel.

<h3 id="get-moderator-change-events-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|broadcaster_id|query|string|true|Provided broadcaster_id must match the user_id in the auth token.|
|user_id|query|array[string]|false|When used, this parameter filters the results and only returns a status object for users who are moderators in this channel AND have a matching user_id. User IDs that don’t belong to moderators are ignored.|
|first|query|integer(int32)|false|Maximum number of objects to return.|
|after|query|string|false|Cursor for forward pagination. Tells the server where to start fetching the next set of results in a multi-page response. This applies only to queries without user_id. If a user_id is specified, it supersedes any cursor/offset combinations. The cursor value specified here is from the pagination response field of a prior query.|

> Example responses

> 200 Response

```json
{
  "data": [
    {
      "id": "string",
      "event_type": "string",
      "event_timestamp": "2019-03-15T21:30:34Z",
      "version": "string",
      "event_data": {
        "broadcaster_id": "string",
        "broadcaster_name": "string",
        "user_id": "string",
        "user_name": "string"
      }
    }
  ],
  "pagination": "string"
}
```

<h3 id="get-moderator-change-events-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of recent Moderator-Change Events|Inline|
|default|Default|Error Response error|[UnauthorizedResponse](#schemaunauthorizedresponse)|

<h3 id="get-moderator-change-events-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[[ModeratorChangeEvent](#schemamoderatorchangeevent)]|false|none|none|
|»» id|string|false|none|none|
|»» event_type|string|false|none|none|
|»» event_timestamp|string(date-time)|false|none|none|
|»» version|string|false|none|none|
|»» event_data|object|false|none|none|
|»»» broadcaster_id|string|false|none|none|
|»»» broadcaster_name|string|false|none|none|
|»»» user_id|string|false|none|none|
|»»» user_name|string|false|none|none|
|»» pagination|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="new-twitch-api-streams">Streams</h1>

Streams APIs Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua

## createStreamMarker

<a id="opIdcreateStreamMarker"></a>

> Code samples

`POST /stream/markers`

Creates a marker in the stream of a user specified by a user ID. A marker is an arbitrary point in a stream that the broadcaster wants to mark; e.g., to easily return to later. The marker is created at the current timestamp in the live broadcast when the request is processed. Markers can be created by the stream owner or editors. The user creating the marker is identified by a Bearer token.

> Body parameter

```json
{
  "user_id": "string",
  "description": "string"
}
```

<h3 id="createstreammarker-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[NewStreamMarkerRequest](#schemanewstreammarkerrequest)|true|none|

> Example responses

> 200 Response

```json
{
  "created_at": "2019-03-15T21:30:34Z",
  "description": "string",
  "id": "string",
  "position_seconds": 0
}
```

<h3 id="createstreammarker-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Information regarding newly created Stream Marker|[NewStreamMarkerResponse](#schemanewstreammarkerresponse)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocSnewstreammarkerresponse">NewStreamMarkerResponse</h2>

<a id="schemanewstreammarkerresponse"></a>

```json
{
  "created_at": "2019-03-15T21:30:34Z",
  "description": "string",
  "id": "string",
  "position_seconds": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created_at|string(date-time)|false|none|none|
|description|string|false|none|none|
|id|string|false|none|none|
|position_seconds|integer|false|none|none|

<h2 id="tocSnewstreammarkerrequest">NewStreamMarkerRequest</h2>

<a id="schemanewstreammarkerrequest"></a>

```json
{
  "user_id": "string",
  "description": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user_id|string|false|none|none|
|description|string|false|none|Optional|

<h2 id="tocSmoderatorchangeevent">ModeratorChangeEvent</h2>

<a id="schemamoderatorchangeevent"></a>

```json
{
  "id": "string",
  "event_type": "string",
  "event_timestamp": "2019-03-15T21:30:34Z",
  "version": "string",
  "event_data": {
    "broadcaster_id": "string",
    "broadcaster_name": "string",
    "user_id": "string",
    "user_name": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|false|none|none|
|event_type|string|false|none|none|
|event_timestamp|string(date-time)|false|none|none|
|version|string|false|none|none|
|event_data|object|false|none|none|
|» broadcaster_id|string|false|none|none|
|» broadcaster_name|string|false|none|none|
|» user_id|string|false|none|none|
|» user_name|string|false|none|none|

<h2 id="tocSunauthorizedresponse">UnauthorizedResponse</h2>

<a id="schemaunauthorizedresponse"></a>

```json
{
  "error": "string",
  "status": 0,
  "message": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|string|false|none|none|
|status|integer(int64)|false|none|none|
|message|string|false|none|none|

