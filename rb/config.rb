# Dorognoe SDK configuration

module DorognoeConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "Dorognoe",
        "slug" => "dorognoe",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
          "transport" => "base",
        },
      },
      "options" => {
        "base" => "https://dorognoe.ru",
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
              "name" => "frequency",
              "short" => "Radio frequency for the city",
              "type" => "`$STRING`",
            },
            {
              "name" => "id",
              "short" => "Unique identifier for the city",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "name",
              "short" => "Name of the city",
              "type" => "`$STRING`",
            },
            {
              "name" => "region",
              "short" => "Region or area where the city is located",
              "type" => "`$STRING`",
            },
          ],
          "name" => "city",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
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
                },
              ],
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
