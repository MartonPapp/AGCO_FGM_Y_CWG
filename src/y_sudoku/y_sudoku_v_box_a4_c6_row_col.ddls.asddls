@AbapCatalog.sqlViewName: 'YV_BOXA4C6RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Y_SUDOKU_V_BOX_A4_C6_ROW_COL'
define view Y_SUDOKU_V_BOX_A4_C6_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_A4_C6 as BOX_A4_C6
    inner join Y_SUDOKU_V_ROW_4 as ROW_4 on BOX_A4_C6.A_4 = ROW_4.A_4
                                        and BOX_A4_C6.B_4 = ROW_4.B_4
                                        and BOX_A4_C6.C_4 = ROW_4.C_4
    inner join Y_SUDOKU_V_ROW_5 as ROW_5 on BOX_A4_C6.A_5 = ROW_5.A_5
                                        and BOX_A4_C6.B_5 = ROW_5.B_5
                                        and BOX_A4_C6.C_5 = ROW_5.C_5
    inner join Y_SUDOKU_V_ROW_6 as ROW_6 on BOX_A4_C6.A_6 = ROW_6.A_6
                                        and BOX_A4_C6.B_6 = ROW_6.B_6
                                        and BOX_A4_C6.C_6 = ROW_6.C_6
                                        
    inner join Y_SUDOKU_V_column_A as COL_A on BOX_A4_C6.A_4 = COL_A.A_4
                                           and BOX_A4_C6.A_5 = COL_A.A_5
                                           and BOX_A4_C6.A_6 = COL_A.A_6
    inner join Y_SUDOKU_V_COLUMN_B as COL_B on BOX_A4_C6.B_4 = COL_B.B_4
                                           and BOX_A4_C6.B_5 = COL_B.B_5
                                           and BOX_A4_C6.B_6 = COL_B.B_6
    inner join Y_SUDOKU_V_COLUMN_C as COL_C on BOX_A4_C6.C_4 = COL_C.C_4
                                           and BOX_A4_C6.C_5 = COL_C.C_5
                                           and BOX_A4_C6.C_6 = COL_C.C_6
 )
{
    key BOX_A4_C6.id as id,
    BOX_A4_C6.A_4 as A_4,
    BOX_A4_C6.B_4 as B_4,
    BOX_A4_C6.C_4 as C_4,
    
    BOX_A4_C6.A_5 as A_5,
    BOX_A4_C6.B_5 as B_5,
    BOX_A4_C6.C_5 as C_5,
    
    BOX_A4_C6.A_6 as A_6,
    BOX_A4_C6.B_6 as B_6,
    BOX_A4_C6.C_6 as C_6
} group by BOX_A4_C6.id,
           BOX_A4_C6.A_4, BOX_A4_C6.B_4, BOX_A4_C6.C_4, 
           BOX_A4_C6.A_5, BOX_A4_C6.B_5, BOX_A4_C6.C_5,
           BOX_A4_C6.A_6, BOX_A4_C6.B_6, BOX_A4_C6.C_6
