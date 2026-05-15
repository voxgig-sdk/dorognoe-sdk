package core

type DorognoeError struct {
	IsDorognoeError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewDorognoeError(code string, msg string, ctx *Context) *DorognoeError {
	return &DorognoeError{
		IsDorognoeError: true,
		Sdk:              "Dorognoe",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *DorognoeError) Error() string {
	return e.Msg
}
