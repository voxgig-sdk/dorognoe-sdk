# Dorognoe SDK utility: make_context
require_relative '../core/context'
module DorognoeUtilities
  MakeContext = ->(ctxmap, basectx) {
    DorognoeContext.new(ctxmap, basectx)
  }
end
