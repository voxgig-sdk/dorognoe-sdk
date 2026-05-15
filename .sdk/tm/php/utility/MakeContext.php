<?php
declare(strict_types=1);

// Dorognoe SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class DorognoeMakeContext
{
    public static function call(array $ctxmap, ?DorognoeContext $basectx): DorognoeContext
    {
        return new DorognoeContext($ctxmap, $basectx);
    }
}
