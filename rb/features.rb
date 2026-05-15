# Dorognoe SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module DorognoeFeatures
  def self.make_feature(name)
    case name
    when "base"
      DorognoeBaseFeature.new
    when "test"
      DorognoeTestFeature.new
    else
      DorognoeBaseFeature.new
    end
  end
end
