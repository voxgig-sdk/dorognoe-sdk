# Dorognoe SDK configuration

module DorognoeConfig
  def self.make_config
    {
      "main" => {
        "name" => "Dorognoe",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://dorognoe.ru",
        "auth" => {
          "prefix" => "Bearer",
        },
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "city" => {},
        },
      },
      "entity" => {
        "city" => {
          "fields" => [
            {
              "active" => true,
              "name" => "frequency",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "id",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "name",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "region",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 3,
            },
          ],
          "name" => "city",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {},
                  "method" => "GET",
                  "orig" => "/api/cities",
                  "parts" => [
                    "api",
                    "cities",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    DorognoeFeatures.make_feature(name)
  end
end
