package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewCityEntityFunc func(client *DorognoeSDK, entopts map[string]any) DorognoeEntity

