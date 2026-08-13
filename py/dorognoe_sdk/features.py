# Dorognoe SDK feature factory

from dorognoe_sdk.feature.base_feature import DorognoeBaseFeature
from dorognoe_sdk.feature.test_feature import DorognoeTestFeature


def _make_feature(name):
    features = {
        "base": lambda: DorognoeBaseFeature(),
        "test": lambda: DorognoeTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
