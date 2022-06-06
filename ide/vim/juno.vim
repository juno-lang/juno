if exists("b:current_syntax")
  finish
endif

syntax match junoFunc "\v\zs[a-zA-Z_]+[a-zA-Z0-9_]*\ze\[.*\]"
highlight link junoFunc Function

syntax match junoNamespace "\v\zs[a-zA-Z_]+[a-zA-Z0-9_]*\ze:"
highlight link junoNamespace Identifier

syntax keyword junoKeyword for while if elif else default break continue return yield import in and or self any forever over
highlight link junoKeyword Keyword


syntax keyword junoType int int8 int16 int32 int64 uint8 uint16 uint32 uint64 float double char char8 char32 str bool
highlight link junoType Type

syntax keyword junoStorage bpnt fn exp gen
highlight link junoStorage StorageClass



syntax match junoOperator "\v\*"
syntax match junoOperator "\v/"
syntax match junoOperator "\v\+"
syntax match junoOperator "\v-"
syntax match junoOperator "\v\%"
syntax match junoOperator "\v\*\="
syntax match junoOperator "\v/\="
syntax match junoOperator "\v\+\="
syntax match junoOperator "\v-\="
syntax match junoOperator "\v\%\="
syntax match junoOperator "\v\="

highlight link junoOperator Operator

syntax match junoStdin "-\>"
syntax match junoStdin "\;"
syntax match junoStdin "@"

highlight link junoStdin SpecialChar

syntax region junoString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link junoString String

syntax match junoNum "\<\d\|\.\d"
highlight link junoNum Number

syntax match junoType "\v[A-Z]+[A-Za-z0-9_]*"
highlight link junoType Type

syntax region junoChar start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link junoChar Character



syntax match junoComment "\v//.*$"
highlight link junoComment Comment

let b:current_syntax = "juno"
