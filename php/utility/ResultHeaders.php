<?php
declare(strict_types=1);

// Dorognoe SDK utility: result_headers

class DorognoeResultHeaders
{
    public static function call(DorognoeContext $ctx): ?DorognoeResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
