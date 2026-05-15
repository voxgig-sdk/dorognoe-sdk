# Dorognoe SDK utility: make_context

from core.context import DorognoeContext


def make_context_util(ctxmap, basectx):
    return DorognoeContext(ctxmap, basectx)
