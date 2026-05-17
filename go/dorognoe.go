package voxgigdorognoesdk

import (
	"github.com/voxgig-sdk/dorognoe-sdk/go/core"
	"github.com/voxgig-sdk/dorognoe-sdk/go/entity"
	"github.com/voxgig-sdk/dorognoe-sdk/go/feature"
	_ "github.com/voxgig-sdk/dorognoe-sdk/go/utility"
)

// Type aliases preserve external API.
type DorognoeSDK = core.DorognoeSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type DorognoeEntity = core.DorognoeEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type DorognoeError = core.DorognoeError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewCityEntityFunc = func(client *core.DorognoeSDK, entopts map[string]any) core.DorognoeEntity {
		return entity.NewCityEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewDorognoeSDK = core.NewDorognoeSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
