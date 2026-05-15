<?php
declare(strict_types=1);

// Dorognoe SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

DorognoeUtility::setRegistrar(function (DorognoeUtility $u): void {
    $u->clean = [DorognoeClean::class, 'call'];
    $u->done = [DorognoeDone::class, 'call'];
    $u->make_error = [DorognoeMakeError::class, 'call'];
    $u->feature_add = [DorognoeFeatureAdd::class, 'call'];
    $u->feature_hook = [DorognoeFeatureHook::class, 'call'];
    $u->feature_init = [DorognoeFeatureInit::class, 'call'];
    $u->fetcher = [DorognoeFetcher::class, 'call'];
    $u->make_fetch_def = [DorognoeMakeFetchDef::class, 'call'];
    $u->make_context = [DorognoeMakeContext::class, 'call'];
    $u->make_options = [DorognoeMakeOptions::class, 'call'];
    $u->make_request = [DorognoeMakeRequest::class, 'call'];
    $u->make_response = [DorognoeMakeResponse::class, 'call'];
    $u->make_result = [DorognoeMakeResult::class, 'call'];
    $u->make_point = [DorognoeMakePoint::class, 'call'];
    $u->make_spec = [DorognoeMakeSpec::class, 'call'];
    $u->make_url = [DorognoeMakeUrl::class, 'call'];
    $u->param = [DorognoeParam::class, 'call'];
    $u->prepare_auth = [DorognoePrepareAuth::class, 'call'];
    $u->prepare_body = [DorognoePrepareBody::class, 'call'];
    $u->prepare_headers = [DorognoePrepareHeaders::class, 'call'];
    $u->prepare_method = [DorognoePrepareMethod::class, 'call'];
    $u->prepare_params = [DorognoePrepareParams::class, 'call'];
    $u->prepare_path = [DorognoePreparePath::class, 'call'];
    $u->prepare_query = [DorognoePrepareQuery::class, 'call'];
    $u->result_basic = [DorognoeResultBasic::class, 'call'];
    $u->result_body = [DorognoeResultBody::class, 'call'];
    $u->result_headers = [DorognoeResultHeaders::class, 'call'];
    $u->transform_request = [DorognoeTransformRequest::class, 'call'];
    $u->transform_response = [DorognoeTransformResponse::class, 'call'];
});
