#:include "common.fpp"
module fortran_unicode
implicit none

integer, parameter :: CK = selected_char_kind('ISO_10646')

type name_entry
  character(len=${name}$) :: name
  character(kind=CK) :: value
end type

#:for block_range, block_name in BLOCKS
type ${block_name}$
end type
#:endfor

#:for block_range, block_name in BLOCKS
#:for name, value in NAMESLIST(block_range)
  #:if name != ''
type name_${f"{value:04x}"}$
  name_entry % name  = "${name}$"
  name_entry % value = ${to_value(value)}$
end type
  #:endif
#:endfor
#:endfor

contains
    function unicode_lookup(name) result(code)
        character(*) :: name
        character(kind=CK) :: code
    end function
end module
