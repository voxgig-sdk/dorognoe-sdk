# Dorognoe SDK

Web interface for the Russian radio station Dorognoe, exposing programme and city broadcast data

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Dorognoe API

[Dorognoe](https://dorognoe.ru) ("Дорожное Радио") is a Russian radio station broadcasting on 96.0 FM in Moscow and across 100+ cities throughout Russia. This SDK wraps the station's web-facing API at `api.dorognoe.ru`, which powers playlists, schedules and media on the public site.

What you can pull from the API:

- The broadcast programme / schedule (e.g. `GET /api/program`)
- City listings for the station's multi-city FM footprint across Russia
- Media assets such as cover images served from `api.dorognoe.ru/images/...`

The endpoint is CORS-enabled and serves JSON over HTTPS. There is no formal public developer portal — the API is the same one used internally by the station's website, so field names and shapes can change without notice. All content (station name, programme metadata, imagery) belongs to the Dorognoe radio station; use it for client-side integrations rather than redistribution.

## Try it

**TypeScript**
```bash
npm install dorognoe
```

**Python**
```bash
pip install dorognoe-sdk
```

**PHP**
```bash
composer require voxgig/dorognoe-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/dorognoe-sdk/go
```

**Ruby**
```bash
gem install dorognoe-sdk
```

**Lua**
```bash
luarocks install dorognoe-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { DorognoeSDK } from 'dorognoe'

const client = new DorognoeSDK({})

// List all citys
const citys = await client.City().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o dorognoe-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "dorognoe": {
      "command": "/abs/path/to/dorognoe-mcp"
    }
  }
}
```

## Entities

The API exposes one entity:

| Entity | Description | API path |
| --- | --- | --- |
| **City** | A broadcast city in the Dorognoe FM network — one of the 100+ Russian locations where the station is available on local frequencies. | `/api/cities` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from dorognoe_sdk import DorognoeSDK

client = DorognoeSDK({})

# List all citys
citys, err = client.City(None).list(None, None)
```

### PHP

```php
<?php
require_once 'dorognoe_sdk.php';

$client = new DorognoeSDK([]);

// List all citys
[$citys, $err] = $client->City(null)->list(null, null);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/dorognoe-sdk/go"

client := sdk.NewDorognoeSDK(map[string]any{})

// List all citys
citys, err := client.City(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "Dorognoe_sdk"

client = DorognoeSDK.new({})

# List all citys
citys, err = client.City(nil).list(nil, nil)
```

### Lua

```lua
local sdk = require("dorognoe_sdk")

local client = sdk.new({})

-- List all citys
local citys, err = client:City(nil):list(nil, nil)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = DorognoeSDK.test()
const result = await client.City().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = DorognoeSDK.test(None, None)
result, err = client.City(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = DorognoeSDK::test(null, null);
[$result, $err] = $client->City(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.City(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = DorognoeSDK.test(nil, nil)
result, err = client.City(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:City(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Dorognoe API

- Upstream: [https://dorognoe.ru](https://dorognoe.ru)
- API docs: [https://freepublicapis.com/dorognoe-api](https://freepublicapis.com/dorognoe-api)

---

Generated from the Dorognoe API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
