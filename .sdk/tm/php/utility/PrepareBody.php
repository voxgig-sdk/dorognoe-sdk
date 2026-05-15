<?php
declare(strict_types=1);

// Dorognoe SDK utility: prepare_body

class DorognoePrepareBody
{
    public static function call(DorognoeContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
