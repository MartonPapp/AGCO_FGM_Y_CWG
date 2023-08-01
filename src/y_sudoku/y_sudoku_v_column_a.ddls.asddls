@AbapCatalog.sqlViewName: 'YV_COLUMN_A'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_A'
define view Y_SUDOKU_V_column_A as 
select from ycwg_sudoku_comb
{
    key value_1 as A_1, 
    key value_2 as A_2, 
    key value_3 as A_3, 
    key value_4 as A_4, 
    key value_5 as A_5, 
    key value_6 as A_6, 
    key value_7 as A_7, 
    key value_8 as A_8, 
    key value_9 as A_9
}
