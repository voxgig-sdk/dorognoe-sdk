-- Dorognoe SDK exists test

local sdk = require("dorognoe_sdk")

describe("DorognoeSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
