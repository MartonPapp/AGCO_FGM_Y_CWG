@AbapCatalog.sqlViewName: 'YV_BOXA1C3RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A1_C3_ROW_COL'
define view Y_SUDOKU_V_BOX_A1_C3_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_A1_C3 as BOX_A1_C3
    inner join Y_SUDOKU_V_ROW_1 as ROW_1 on BOX_A1_C3.A_1 = ROW_1.A_1
                                        and BOX_A1_C3.B_1 = ROW_1.B_1
                                        and BOX_A1_C3.C_1 = ROW_1.C_1
    inner join Y_SUDOKU_V_ROW_2 as ROW_2 on BOX_A1_C3.A_2 = ROW_2.A_2
                                        and BOX_A1_C3.B_2 = ROW_2.B_2
                                        and BOX_A1_C3.C_2 = ROW_2.C_2
    inner join Y_SUDOKU_V_ROW_3 as ROW_3 on BOX_A1_C3.A_3 = ROW_3.A_3
                                        and BOX_A1_C3.B_3 = ROW_3.B_3
                                        and BOX_A1_C3.C_3 = ROW_3.C_3
                                        
    inner join Y_SUDOKU_V_column_A as COL_A on BOX_A1_C3.A_1 = COL_A.A_1
                                           and BOX_A1_C3.A_2 = COL_A.A_2
                                           and BOX_A1_C3.A_3 = COL_A.A_3
    inner join Y_SUDOKU_V_COLUMN_B as COL_B on BOX_A1_C3.B_1 = COL_B.B_1
                                           and BOX_A1_C3.B_2 = COL_B.B_2
                                           and BOX_A1_C3.B_3 = COL_B.B_3
    inner join Y_SUDOKU_V_COLUMN_C as COL_C on BOX_A1_C3.C_1 = COL_C.C_1
                                           and BOX_A1_C3.C_2 = COL_C.C_2
                                           and BOX_A1_C3.C_3 = COL_C.C_3
 )
{   key BOX_A1_C3.id as id,

    BOX_A1_C3.A_1 as A_1,
    BOX_A1_C3.B_1 as B_1,
    BOX_A1_C3.C_1 as C_1,
    
    BOX_A1_C3.A_2 as A_2,
    BOX_A1_C3.B_2 as B_2,
    BOX_A1_C3.C_2 as C_2,
    
    BOX_A1_C3.A_3 as A_3,
    BOX_A1_C3.B_3 as B_3,
    BOX_A1_C3.C_3 as C_3
} group by BOX_A1_C3.id,
           BOX_A1_C3.A_1, BOX_A1_C3.B_1, BOX_A1_C3.C_1, 
           BOX_A1_C3.A_2, BOX_A1_C3.B_2, BOX_A1_C3.C_2,
           BOX_A1_C3.A_3, BOX_A1_C3.B_3, BOX_A1_C3.C_3
