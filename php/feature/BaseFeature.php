<?php
declare(strict_types=1);

// Dorognoe SDK base feature

class DorognoeBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(DorognoeContext $ctx, array $options): void {}
    public function PostConstruct(DorognoeContext $ctx): void {}
    public function PostConstructEntity(DorognoeContext $ctx): void {}
    public function SetData(DorognoeContext $ctx): void {}
    public function GetData(DorognoeContext $ctx): void {}
    public function GetMatch(DorognoeContext $ctx): void {}
    public function SetMatch(DorognoeContext $ctx): void {}
    public function PrePoint(DorognoeContext $ctx): void {}
    public function PreSpec(DorognoeContext $ctx): void {}
    public function PreRequest(DorognoeContext $ctx): void {}
    public function PreResponse(DorognoeContext $ctx): void {}
    public function PreResult(DorognoeContext $ctx): void {}
    public function PreDone(DorognoeContext $ctx): void {}
    public function PreUnexpected(DorognoeContext $ctx): void {}
}
