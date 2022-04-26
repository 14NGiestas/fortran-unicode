program main
  use fortran_unicode, only: ARABIC_SMALL_HIGH_LIGATURE_ALEF_WITH_LAM_WITH_YEH
  use iso_fortran_env
  implicit none
  open(output_unit, encoding='utf-8')
  print*, ARABIC_SMALL_HIGH_LIGATURE_ALEF_WITH_LAM_WITH_YEH

end program main
