@AbapCatalog.sqlViewName: 'YV_COLUMN_I'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_I'
define view Y_SUDOKU_V_COLUMN_I as 
select from ycwg_sudoku_comb
{
    key value_1 as I_1, 
    key value_2 as I_2, 
    key value_3 as I_3, 
    key value_4 as I_4, 
    key value_5 as I_5, 
    key value_6 as I_6, 
    key value_7 as I_7, 
    key value_8 as I_8, 
    key value_9 as I_9
}
