# Dorognoe SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module DorognoeFeatures
  def self.make_feature(name)
    case name
    when "base"
      DorognoeBaseFeature.new
    when "ratelimit"
      DorognoeRatelimitFeature.new
    when "retry"
      DorognoeRetryFeature.new
    when "test"
      DorognoeTestFeature.new
    when "timeout"
      DorognoeTimeoutFeature.new
    else
      DorognoeBaseFeature.new
    end
  end
end
