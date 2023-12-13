syn clear
syn case ignore

syn match pasmIdentifier "[a-z_\.][a-z0-9_\.]*"
syn match pasmGlobalLabel "^[a-z_][a-z0-9_\.]*"
syn match pasmLocalLabel "^.[a-z_][a-z0-9_]*"

syn keyword pasmRegister a b x y z sp *

syn keyword pasmOperator - < > / mod * asl lsr asr + - xor not and or

syn keyword pasmOpcode adc and asl asr asw aug bit clc cld cle cli clv cmp cpx cpy cpz dec
syn keyword pasmOpcode dew dex dey dez eor inc inw inx iny inz lda ldx ldy ldz lsr neg nop
syn keyword pasmOpcode ora pha php phw phx phy phz pla plp plx ply plz rol ror row sbc sec
syn keyword pasmOpcode sed see sei smb sta stx sty stz tab tax tay taz tba trb tsb tsx tsy
syn keyword pasmOpcode txa txs tya tys tza

syn keyword pasmOpcode bbr bbs bcc bcs beq bmi bne bpl bru bra bvc bvs
syn keyword pasmOpcode jmp jsr rti rtn rts brk bsr

syn keyword pasmDirective equ
syn keyword pasmDirective byt
syn keyword pasmDirective wrd
syn keyword pasmDirective pad
syn keyword pasmDirective adj
syn keyword pasmDirective txt
syn keyword pasmDirective bss
syn keyword pasmDirective inf
syn keyword pasmDirective mac emc

syn match pasmComment ";.*" contains=pasmTodo
syn keyword pasmTodo  contained todo fixme xxx warning danger note notice bug
syn region pasmString start=+"+ end=+"+

syn match pasmNumber "[0-9]\+"
syn match pasmNumber "\$[0-9a-fA-F]\+"
syn match pasmNumber "%[01]\+"
syn match pasmNumber "'[!-~]"

syn case match

hi def link pasmComment       Comment
hi def link pasmNumber        Number
hi def link pasmString	      String
hi def link pasmIdentifier    Identifier
hi def link pasmOpcode        Keyword
hi def link pasmDirective     Keyword
hi def link pasmGlobalLabel   Underlined
hi def link pasmLocalLabel    Identifier
hi def link pasmTodo          Todo

let b:current_syntax = "pasm"
set ts=8
set sw=8
set noet
