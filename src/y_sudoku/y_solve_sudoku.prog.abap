*&---------------------------------------------------------------------*
*& Report y_solve_sudoku
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_solve_sudoku.

select * from Y_SUDOKU_V_GRID into table @data(lt_sudoku)
    where a_1 = '5' and b_1 = '3' and e_1 = '7' and
          a_2 = '6' and d_2 = '1' and e_2 = '9' and f_2 = '5' and
          b_3 = '9' and c_3 = '8' and h_3 = '6' and
          a_4 = '8' and e_4 = '6' and i_4 = '3' and
          a_5 = '4' and d_5 = '8' and f_5 = '3' and i_5 = '1' and
          a_6 = '7' and e_6 = '2' and i_6 = '6' and
          b_7 = '6' and g_7 = '2' and h_7 = '8' and
          d_8 = '4' and e_8 = '1' and f_8 = '9' and i_8 = '5' and
          e_9 = '8' and h_9 = '7' and i_9 = '9'.

loop at lt_sudoku assigning field-symbol(<ls_sk>).
    write: / |{ <ls_sk>-a_1 } { <ls_sk>-b_1 } { <ls_sk>-c_1 } { <ls_sk>-d_1 } { <ls_sk>-e_1 } { <ls_sk>-f_1 } { <ls_sk>-g_1 } { <ls_sk>-h_1 } { <ls_sk>-i_1 }|.
    write: / |{ <ls_sk>-a_2 } { <ls_sk>-b_2 } { <ls_sk>-c_2 } { <ls_sk>-d_2 } { <ls_sk>-e_2 } { <ls_sk>-f_2 } { <ls_sk>-g_2 } { <ls_sk>-h_2 } { <ls_sk>-i_2 }|.
    write: / |{ <ls_sk>-a_3 } { <ls_sk>-b_3 } { <ls_sk>-c_3 } { <ls_sk>-d_3 } { <ls_sk>-e_3 } { <ls_sk>-f_3 } { <ls_sk>-g_3 } { <ls_sk>-h_3 } { <ls_sk>-i_3 }|.
    write: / |{ <ls_sk>-a_4 } { <ls_sk>-b_4 } { <ls_sk>-c_4 } { <ls_sk>-d_4 } { <ls_sk>-e_4 } { <ls_sk>-f_4 } { <ls_sk>-g_4 } { <ls_sk>-h_4 } { <ls_sk>-i_4 }|.
    write: / |{ <ls_sk>-a_5 } { <ls_sk>-b_5 } { <ls_sk>-c_5 } { <ls_sk>-d_5 } { <ls_sk>-e_5 } { <ls_sk>-f_5 } { <ls_sk>-g_5 } { <ls_sk>-h_5 } { <ls_sk>-i_5 }|.
    write: / |{ <ls_sk>-a_6 } { <ls_sk>-b_6 } { <ls_sk>-c_6 } { <ls_sk>-d_6 } { <ls_sk>-e_6 } { <ls_sk>-f_6 } { <ls_sk>-g_6 } { <ls_sk>-h_6 } { <ls_sk>-i_6 }|.
    write: / |{ <ls_sk>-a_7 } { <ls_sk>-b_7 } { <ls_sk>-c_7 } { <ls_sk>-d_7 } { <ls_sk>-e_7 } { <ls_sk>-f_7 } { <ls_sk>-g_7 } { <ls_sk>-h_7 } { <ls_sk>-i_7 }|.
    write: / |{ <ls_sk>-a_8 } { <ls_sk>-b_8 } { <ls_sk>-c_8 } { <ls_sk>-d_8 } { <ls_sk>-e_8 } { <ls_sk>-f_8 } { <ls_sk>-g_8 } { <ls_sk>-h_8 } { <ls_sk>-i_8 }|.
    write: / |{ <ls_sk>-a_9 } { <ls_sk>-b_9 } { <ls_sk>-c_9 } { <ls_sk>-d_9 } { <ls_sk>-e_9 } { <ls_sk>-f_9 } { <ls_sk>-g_9 } { <ls_sk>-h_9 } { <ls_sk>-i_9 }|.
endloop.
