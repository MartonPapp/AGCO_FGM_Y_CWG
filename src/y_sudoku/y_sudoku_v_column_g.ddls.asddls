@AbapCatalog.sqlViewName: 'YV_COLUMN_G'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_G'
define view Y_SUDOKU_V_COLUMN_G as 
select from ycwg_sudoku_comb
{
    key value_1 as G_1, 
    key value_2 as G_2, 
    key value_3 as G_3, 
    key value_4 as G_4, 
    key value_5 as G_5, 
    key value_6 as G_6, 
    key value_7 as G_7, 
    key value_8 as G_8, 
    key value_9 as G_9
}
