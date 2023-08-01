@AbapCatalog.sqlViewName: 'YV_BOXD7F9RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D7_F9_ROW_COL'
define view Y_SUDOKU_V_BOX_D7_F9_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_D7_F9 as BOX_D7_F9
    inner join Y_SUDOKU_V_ROW_7 as ROW_7 on BOX_D7_F9.D_7 = ROW_7.D_7
                                        and BOX_D7_F9.E_7 = ROW_7.E_7
                                        and BOX_D7_F9.F_7 = ROW_7.F_7
    inner join Y_SUDOKU_V_ROW_8 as ROW_8 on BOX_D7_F9.D_8 = ROW_8.D_8
                                        and BOX_D7_F9.E_8 = ROW_8.E_8
                                        and BOX_D7_F9.F_8 = ROW_8.F_8
    inner join Y_SUDOKU_V_ROW_9 as ROW_9 on BOX_D7_F9.D_9 = ROW_9.D_9
                                        and BOX_D7_F9.E_9 = ROW_9.E_9
                                        and BOX_D7_F9.F_9 = ROW_9.F_9
                                        
    inner join Y_SUDOKU_V_COLUMN_D as COL_D on BOX_D7_F9.D_7 = COL_D.D_7
                                           and BOX_D7_F9.D_8 = COL_D.D_8
                                           and BOX_D7_F9.D_9 = COL_D.D_9
    inner join Y_SUDOKU_V_COLUMN_E as COL_E on BOX_D7_F9.E_7 = COL_E.E_7
                                           and BOX_D7_F9.E_8 = COL_E.E_8
                                           and BOX_D7_F9.E_9 = COL_E.E_9
    inner join Y_SUDOKU_V_COLUMN_F as COL_F on BOX_D7_F9.F_7 = COL_F.F_7
                                           and BOX_D7_F9.F_8 = COL_F.F_8
                                           and BOX_D7_F9.F_9 = COL_F.F_9
 )
{
    key BOX_D7_F9.id as id,
    BOX_D7_F9.D_7 as D_7,
    BOX_D7_F9.E_7 as E_7,
    BOX_D7_F9.F_7 as F_7,
    
    BOX_D7_F9.D_8 as D_8,
    BOX_D7_F9.E_8 as E_8,
    BOX_D7_F9.F_8 as F_8,
    
    BOX_D7_F9.D_9 as D_9,
    BOX_D7_F9.E_9 as E_9,
    BOX_D7_F9.F_9 as F_9
} group by BOX_D7_F9.id,
           BOX_D7_F9.D_7, BOX_D7_F9.E_7, BOX_D7_F9.F_7, 
           BOX_D7_F9.D_8, BOX_D7_F9.E_8, BOX_D7_F9.F_8,
           BOX_D7_F9.D_9, BOX_D7_F9.E_9, BOX_D7_F9.F_9
