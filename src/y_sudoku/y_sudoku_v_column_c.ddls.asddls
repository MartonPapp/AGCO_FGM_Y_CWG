@AbapCatalog.sqlViewName: 'YV_COLUMN_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_C'
define view Y_SUDOKU_V_COLUMN_C as 
select from ycwg_sudoku_comb
{
    key value_1 as C_1, 
    key value_2 as C_2, 
    key value_3 as C_3, 
    key value_4 as C_4, 
    key value_5 as C_5, 
    key value_6 as C_6, 
    key value_7 as C_7, 
    key value_8 as C_8, 
    key value_9 as C_9
}
