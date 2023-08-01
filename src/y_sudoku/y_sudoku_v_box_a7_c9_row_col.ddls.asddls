@AbapCatalog.sqlViewName: 'YV_BOXA7C9RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A7_C9_ROW_COL'
define view Y_SUDOKU_V_BOX_A7_C9_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_A7_C9 as BOX_A7_C9
    inner join Y_SUDOKU_V_ROW_7 as ROW_7 on BOX_A7_C9.A_7 = ROW_7.A_7
                                        and BOX_A7_C9.B_7 = ROW_7.B_7
                                        and BOX_A7_C9.C_7 = ROW_7.C_7
    inner join Y_SUDOKU_V_ROW_8 as ROW_8 on BOX_A7_C9.A_8 = ROW_8.A_8
                                        and BOX_A7_C9.B_8 = ROW_8.B_8
                                        and BOX_A7_C9.C_8 = ROW_8.C_8
    inner join Y_SUDOKU_V_ROW_9 as ROW_9 on BOX_A7_C9.A_9 = ROW_9.A_9
                                        and BOX_A7_C9.B_9 = ROW_9.B_9
                                        and BOX_A7_C9.C_9 = ROW_9.C_9
                                        
    inner join Y_SUDOKU_V_column_A as COL_A on BOX_A7_C9.A_7 = COL_A.A_7
                                           and BOX_A7_C9.A_8 = COL_A.A_8
                                           and BOX_A7_C9.A_9 = COL_A.A_9
    inner join Y_SUDOKU_V_COLUMN_B as COL_B on BOX_A7_C9.B_7 = COL_B.B_7
                                           and BOX_A7_C9.B_8 = COL_B.B_8
                                           and BOX_A7_C9.B_9 = COL_B.B_9
    inner join Y_SUDOKU_V_COLUMN_C as COL_C on BOX_A7_C9.C_7 = COL_C.C_7
                                           and BOX_A7_C9.C_8 = COL_C.C_8
                                           and BOX_A7_C9.C_9 = COL_C.C_9
 )
{
    key BOX_A7_C9.id as id,
    BOX_A7_C9.A_7 as A_7,
    BOX_A7_C9.B_7 as B_7,
    BOX_A7_C9.C_7 as C_7,
    
    BOX_A7_C9.A_8 as A_8,
    BOX_A7_C9.B_8 as B_8,
    BOX_A7_C9.C_8 as C_8,
    
    BOX_A7_C9.A_9 as A_9,
    BOX_A7_C9.B_9 as B_9,
    BOX_A7_C9.C_9 as C_9
} group by BOX_A7_C9.id,
           BOX_A7_C9.A_7, BOX_A7_C9.B_7, BOX_A7_C9.C_7, 
           BOX_A7_C9.A_8, BOX_A7_C9.B_8, BOX_A7_C9.C_8,
           BOX_A7_C9.A_9, BOX_A7_C9.B_9, BOX_A7_C9.C_9
