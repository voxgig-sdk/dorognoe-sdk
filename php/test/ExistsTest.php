<?php
declare(strict_types=1);

// Dorognoe SDK exists test

require_once __DIR__ . '/../dorognoe_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = DorognoeSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
