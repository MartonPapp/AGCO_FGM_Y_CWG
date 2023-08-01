*&---------------------------------------------------------------------*
*& Report YFILL_SODUKO_HUNMCP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YFILL_SODUKO_HUNMCP.
data(lv_file) = 'C:\Marci\AGCO\CWG\cwg_sudoku_19all_combs2.txt'.
data: lt_res type standard table of ycwg_sudoku_comb.
data: lt_tab_raw_data TYPE  truxs_t_text_data.
CALL FUNCTION 'GUI_UPLOAD'
  EXPORTING
    filename = 'C:\Marci\AGCO\CWG\sudoku_perm.txt'
*    filename = 'C:\Marci\AGCO\CWG\sudoku_first_half.txt'
    filetype = 'ASC'
  TABLES
    data_tab = lt_tab_raw_data.
CALL FUNCTION 'TEXT_CONVERT_TEX_TO_SAP'
EXPORTING
 i_field_seperator          = ','
  i_tab_raw_data             = lt_tab_raw_data
TABLES
  i_tab_converted_data       = lt_res
EXCEPTIONS
 conversion_failed          = 1
 OTHERS                     = 2.
BREAK-POINT.
insert ycwg_sudoku_comb from table lt_res.
commit work.

*cl_demo_output=>display( lt_res ).
