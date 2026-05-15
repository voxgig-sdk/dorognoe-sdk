# Dorognoe SDK utility: feature_add
module DorognoeUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
