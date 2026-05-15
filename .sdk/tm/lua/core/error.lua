-- Dorognoe SDK error

local DorognoeError = {}
DorognoeError.__index = DorognoeError


function DorognoeError.new(code, msg, ctx)
  local self = setmetatable({}, DorognoeError)
  self.is_sdk_error = true
  self.sdk = "Dorognoe"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function DorognoeError:error()
  return self.msg
end


function DorognoeError:__tostring()
  return self.msg
end


return DorognoeError
