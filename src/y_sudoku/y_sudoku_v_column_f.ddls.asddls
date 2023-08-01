@AbapCatalog.sqlViewName: 'YV_COLUMN_F'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_F'
define view Y_SUDOKU_V_COLUMN_F as 
select from ycwg_sudoku_comb
{
    key value_1 as F_1, 
    key value_2 as F_2, 
    key value_3 as F_3, 
    key value_4 as F_4, 
    key value_5 as F_5, 
    key value_6 as F_6, 
    key value_7 as F_7, 
    key value_8 as F_8, 
    key value_9 as F_9
}
