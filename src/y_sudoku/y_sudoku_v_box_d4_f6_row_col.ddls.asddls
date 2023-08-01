@AbapCatalog.sqlViewName: 'YV_BOXD4F6RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D4_F6_ROW_COL'
define view Y_SUDOKU_V_BOX_D4_F6_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_D4_F6 as BOX_D4_F6
    inner join Y_SUDOKU_V_ROW_4 as ROW_4 on BOX_D4_F6.D_4 = ROW_4.D_4
                                        and BOX_D4_F6.E_4 = ROW_4.E_4
                                        and BOX_D4_F6.F_4 = ROW_4.F_4
    inner join Y_SUDOKU_V_ROW_5 as ROW_5 on BOX_D4_F6.D_5 = ROW_5.D_5
                                        and BOX_D4_F6.E_5 = ROW_5.E_5
                                        and BOX_D4_F6.F_5 = ROW_5.F_5
    inner join Y_SUDOKU_V_ROW_6 as ROW_6 on BOX_D4_F6.D_6 = ROW_6.D_6
                                        and BOX_D4_F6.E_6 = ROW_6.E_6
                                        and BOX_D4_F6.F_6 = ROW_6.F_6
                                        
    inner join Y_SUDOKU_V_COLUMN_D as COL_D on BOX_D4_F6.D_4 = COL_D.D_4
                                           and BOX_D4_F6.D_5 = COL_D.D_5
                                           and BOX_D4_F6.D_6 = COL_D.D_6
    inner join Y_SUDOKU_V_COLUMN_E as COL_E on BOX_D4_F6.E_4 = COL_E.E_4
                                           and BOX_D4_F6.E_5 = COL_E.E_5
                                           and BOX_D4_F6.E_6 = COL_E.E_6
    inner join Y_SUDOKU_V_COLUMN_F as COL_F on BOX_D4_F6.F_4 = COL_F.F_4
                                           and BOX_D4_F6.F_5 = COL_F.F_5
                                           and BOX_D4_F6.F_6 = COL_F.F_6
 )
{
    key BOX_D4_F6.id as id,
    BOX_D4_F6.D_4 as D_4,
    BOX_D4_F6.E_4 as E_4,
    BOX_D4_F6.F_4 as F_4,
    
    BOX_D4_F6.D_5 as D_5,
    BOX_D4_F6.E_5 as E_5,
    BOX_D4_F6.F_5 as F_5,
    
    BOX_D4_F6.D_6 as D_6,
    BOX_D4_F6.E_6 as E_6,
    BOX_D4_F6.F_6 as F_6
} group by BOX_D4_F6.id,
           BOX_D4_F6.D_4, BOX_D4_F6.E_4, BOX_D4_F6.F_4, 
           BOX_D4_F6.D_5, BOX_D4_F6.E_5, BOX_D4_F6.F_5,
           BOX_D4_F6.D_6, BOX_D4_F6.E_6, BOX_D4_F6.F_6
