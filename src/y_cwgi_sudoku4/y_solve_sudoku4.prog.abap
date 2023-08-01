*&---------------------------------------------------------------------*
*& Report y_solve_sudoku4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_solve_sudoku4.

select * from YCWGSUDOKU4V_GRID into table @data(lt_sudoku4)
    where d_1 = '3' and
          b_2 = '4' and
          c_3 = '3' and d_3 = '2'.

*cl_demo_output=>display_data( lt_sudoku4 ).

loop at lt_sudoku4 ASSIGNING FIELD-SYMBOL(<ls_sk>).
  write: / |{ <ls_sk>-a_1 } { <ls_sk>-b_1 } { <ls_sk>-c_1 } { <ls_sk>-d_1 }|.
  write: / |{ <ls_sk>-a_2 } { <ls_sk>-b_2 } { <ls_sk>-c_2 } { <ls_sk>-d_2 }|.
  write: / |{ <ls_sk>-a_3 } { <ls_sk>-b_3 } { <ls_sk>-c_3 } { <ls_sk>-d_3 }|.
  write: / |{ <ls_sk>-a_4 } { <ls_sk>-b_4 } { <ls_sk>-c_4 } { <ls_sk>-d_4 }|.

endloop.
