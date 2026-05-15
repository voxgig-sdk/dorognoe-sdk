<?php
declare(strict_types=1);

// Dorognoe SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class DorognoeFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new DorognoeBaseFeature();
            case "test":
                return new DorognoeTestFeature();
            default:
                return new DorognoeBaseFeature();
        }
    }
}
