" Vim syntax file
" Language: Draper Policy Language
" Author:   John Burke <jburke@draper.com, jsburke@bu.edu>
" Created:  5 May 2022
" Updated:  6 May 2022
if exists("b:current_syntax")
    finish
endif

" not sure if DPL is case sensitive, but this won't hurt
syntax case match

" strings
syntax region dplString start=#"# skip=#\\"# end=#"#

" comments 
syntax match   dplComment '\v\/\/.*$' contains=dplTodo
syntax region  dplComment start='\v\/\*' end='\v\*\/' contains=dplTodo
syntax keyword dplTodo TODO contained

syntax match dplResult "->"
syntax match dplEquals "=="
syntax match dplAssign "="
syntax match dplDontCare "_"

syntax region dplMetadata start='\[' end='\]'

" Elements in Instruction evaluations
syntax keyword dplInsnFields op1 op2 op3 code env val mem res addr return target dest
syntax keyword dplRVFields RS1 RS2 RD MEM CSR
syntax keyword dplFailure fail

" Elements of a dpl file
syntax keyword dplSections module import metadata policy require group type
syntax keyword dplGroup grp data global

" groups common to RISC V policies
syntax keyword dplRVGroups branchGrp retGrp jumpRegGrp jumpGrp callGrp
syntax keyword dplRVGroups pcGrp addiGrp loadUpperGrp moveGrp xoriGrp
syntax keyword dplRVGroups andiGrp immArithGrp xorGrp arithGrp loadGrp
syntax keyword dplRVGroups storeGrp mulDivRemGrp csrGrp csriGrp mretGrp
syntax keyword dplRVGroups privGrp systemGrp floatGrp atomicGrp allGrp
syntax keyword dplRVGroups controlFlowGrp notMemGrp loadMemGrp storeMemGrp
syntax keyword dplRVGroups composeGrp mvGrp

highlight Metadata   ctermfg=LightGreen
highlight Failure    ctermfg=Red
highlight InsnFields ctermfg=Yellow
highlight Evals      ctermfg=White
highlight RiscV      ctermfg=LightGreen
highlight ISAGroups  ctermfg=LightGreen

highlight link dplString   String
highlight link dplComment  Comment
highlight link dplTodo     Todo
highlight link dplMetadata Metadata 

highlight link dplResult   Evals
highlight link dplEquals   Evals
highlight link dplAssign   Evals
highlight link dplDontCare Evals

highlight link dplInsnFields InsnFields
highlight link dplRVFields   InsnFields
highlight link dplFailure    Failure
highlight link dplSections   Keyword
highlight link dplGroup      Label
highlight link dplRVFields   RiscV
highlight link dplRVGroups   ISAGroups
