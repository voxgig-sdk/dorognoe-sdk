# Dorognoe SDK feature factory

from dorognoe_sdk.feature.base_feature import DorognoeBaseFeature
from dorognoe_sdk.feature.ratelimit_feature import DorognoeRatelimitFeature
from dorognoe_sdk.feature.retry_feature import DorognoeRetryFeature
from dorognoe_sdk.feature.test_feature import DorognoeTestFeature
from dorognoe_sdk.feature.timeout_feature import DorognoeTimeoutFeature


_FEATURES = {
    "base": lambda: DorognoeBaseFeature(),
    "ratelimit": lambda: DorognoeRatelimitFeature(),
    "retry": lambda: DorognoeRetryFeature(),
    "test": lambda: DorognoeTestFeature(),
    "timeout": lambda: DorognoeTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
