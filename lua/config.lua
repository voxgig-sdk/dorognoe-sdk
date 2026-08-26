-- Dorognoe SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "Dorognoe",
      slug = "dorognoe",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["transport"] = "base",
      },
    },
    options = {
      base = "https://dorognoe.ru",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["city"] = {},
      },
    },
    entity = {
      ["city"] = {
        ["fields"] = {
          {
            ["name"] = "frequency",
            ["short"] = "Radio frequency for the city",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "id",
            ["short"] = "Unique identifier for the city",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "name",
            ["short"] = "Name of the city",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "region",
            ["short"] = "Region or area where the city is located",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "city",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/api/cities",
                ["parts"] = {
                  "api",
                  "cities",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
