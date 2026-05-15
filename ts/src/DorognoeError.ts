
import { Context } from './Context'


class DorognoeError extends Error {

  isDorognoeError = true

  sdk = 'Dorognoe'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  DorognoeError
}

