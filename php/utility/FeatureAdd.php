<?php
declare(strict_types=1);

// Dorognoe SDK utility: feature_add

class DorognoeFeatureAdd
{
    public static function call(DorognoeContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
