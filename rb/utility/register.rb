# Dorognoe SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

DorognoeUtility.registrar = ->(u) {
  u.clean = DorognoeUtilities::Clean
  u.done = DorognoeUtilities::Done
  u.make_error = DorognoeUtilities::MakeError
  u.feature_add = DorognoeUtilities::FeatureAdd
  u.feature_hook = DorognoeUtilities::FeatureHook
  u.feature_init = DorognoeUtilities::FeatureInit
  u.fetcher = DorognoeUtilities::Fetcher
  u.make_fetch_def = DorognoeUtilities::MakeFetchDef
  u.make_context = DorognoeUtilities::MakeContext
  u.make_options = DorognoeUtilities::MakeOptions
  u.make_request = DorognoeUtilities::MakeRequest
  u.make_response = DorognoeUtilities::MakeResponse
  u.make_result = DorognoeUtilities::MakeResult
  u.make_point = DorognoeUtilities::MakePoint
  u.make_spec = DorognoeUtilities::MakeSpec
  u.make_url = DorognoeUtilities::MakeUrl
  u.param = DorognoeUtilities::Param
  u.prepare_auth = DorognoeUtilities::PrepareAuth
  u.prepare_body = DorognoeUtilities::PrepareBody
  u.prepare_headers = DorognoeUtilities::PrepareHeaders
  u.prepare_method = DorognoeUtilities::PrepareMethod
  u.prepare_params = DorognoeUtilities::PrepareParams
  u.prepare_path = DorognoeUtilities::PreparePath
  u.prepare_query = DorognoeUtilities::PrepareQuery
  u.result_basic = DorognoeUtilities::ResultBasic
  u.result_body = DorognoeUtilities::ResultBody
  u.result_headers = DorognoeUtilities::ResultHeaders
  u.transform_request = DorognoeUtilities::TransformRequest
  u.transform_response = DorognoeUtilities::TransformResponse
}
