# Dorognoe SDK exists test

import pytest
from dorognoe_sdk import DorognoeSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = DorognoeSDK.test(None, None)
        assert testsdk is not None
