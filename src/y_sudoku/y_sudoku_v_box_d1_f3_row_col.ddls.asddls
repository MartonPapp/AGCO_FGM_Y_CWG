@AbapCatalog.sqlViewName: 'YV_BOXD1F3RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D1_F3_ROW_COL'
define view Y_SUDOKU_V_BOX_D1_F3_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_D1_F3 as BOX_D1_F3
    inner join Y_SUDOKU_V_ROW_1 as ROW_1 on BOX_D1_F3.D_1 = ROW_1.D_1
                                        and BOX_D1_F3.E_1 = ROW_1.E_1
                                        and BOX_D1_F3.F_1 = ROW_1.F_1
    inner join Y_SUDOKU_V_ROW_2 as ROW_2 on BOX_D1_F3.D_2 = ROW_2.D_2
                                        and BOX_D1_F3.E_2 = ROW_2.E_2
                                        and BOX_D1_F3.F_2 = ROW_2.F_2
    inner join Y_SUDOKU_V_ROW_3 as ROW_3 on BOX_D1_F3.D_3 = ROW_3.D_3
                                        and BOX_D1_F3.E_3 = ROW_3.E_3
                                        and BOX_D1_F3.F_3 = ROW_3.F_3
                                        
    inner join Y_SUDOKU_V_COLUMN_D as COL_D on BOX_D1_F3.D_1 = COL_D.D_1
                                           and BOX_D1_F3.D_2 = COL_D.D_2
                                           and BOX_D1_F3.D_3 = COL_D.D_3
    inner join Y_SUDOKU_V_COLUMN_E as COL_E on BOX_D1_F3.E_1 = COL_E.E_1
                                           and BOX_D1_F3.E_2 = COL_E.E_2
                                           and BOX_D1_F3.E_3 = COL_E.E_3
    inner join Y_SUDOKU_V_COLUMN_F as COL_F on BOX_D1_F3.F_1 = COL_F.F_1
                                           and BOX_D1_F3.F_2 = COL_F.F_2
                                           and BOX_D1_F3.F_3 = COL_F.F_3
 )
{
    key BOX_D1_F3.id as id,
    BOX_D1_F3.D_1 as D_1,
    BOX_D1_F3.E_1 as E_1,
    BOX_D1_F3.F_1 as F_1,
    
    BOX_D1_F3.D_2 as D_2,
    BOX_D1_F3.E_2 as E_2,
    BOX_D1_F3.F_2 as F_2,
    
    BOX_D1_F3.D_3 as D_3,
    BOX_D1_F3.E_3 as E_3,
    BOX_D1_F3.F_3 as F_3
} group by BOX_D1_F3.id,
           BOX_D1_F3.D_1, BOX_D1_F3.E_1, BOX_D1_F3.F_1, 
           BOX_D1_F3.D_2, BOX_D1_F3.E_2, BOX_D1_F3.F_2,
           BOX_D1_F3.D_3, BOX_D1_F3.E_3, BOX_D1_F3.F_3
