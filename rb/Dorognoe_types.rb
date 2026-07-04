# frozen_string_literal: true

# Typed models for the Dorognoe SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# City entity data model.
#
# @!attribute [rw] frequency
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [Integer, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
City = Struct.new(
  :frequency,
  :id,
  :name,
  :region,
  keyword_init: true
)

# Match filter for City#list (any subset of City fields).
#
# @!attribute [rw] frequency
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [Integer, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
CityListMatch = Struct.new(
  :frequency,
  :id,
  :name,
  :region,
  keyword_init: true
)

