@AbapCatalog.sqlViewName: 'YV_COLUMN_D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_D'
define view Y_SUDOKU_V_COLUMN_D as 
select from ycwg_sudoku_comb
{
    key value_1 as D_1, 
    key value_2 as D_2, 
    key value_3 as D_3, 
    key value_4 as D_4, 
    key value_5 as D_5, 
    key value_6 as D_6, 
    key value_7 as D_7, 
    key value_8 as D_8, 
    key value_9 as D_9
}
