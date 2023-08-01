@AbapCatalog.sqlViewName: 'YV_COLUMN_B'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_B'
define view Y_SUDOKU_V_COLUMN_B as 
select from ycwg_sudoku_comb
{
    key value_1 as B_1, 
    key value_2 as B_2, 
    key value_3 as B_3, 
    key value_4 as B_4, 
    key value_5 as B_5, 
    key value_6 as B_6, 
    key value_7 as B_7, 
    key value_8 as B_8, 
    key value_9 as B_9
}
