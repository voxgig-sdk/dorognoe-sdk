# Dorognoe SDK exists test

require "minitest/autorun"
require_relative "../Dorognoe_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = DorognoeSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
