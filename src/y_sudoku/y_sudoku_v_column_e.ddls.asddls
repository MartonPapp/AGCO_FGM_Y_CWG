@AbapCatalog.sqlViewName: 'YV_COLUMN_E'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_E'
define view Y_SUDOKU_V_COLUMN_E as 
select from ycwg_sudoku_comb
{
    key value_1 as E_1, 
    key value_2 as E_2, 
    key value_3 as E_3, 
    key value_4 as E_4, 
    key value_5 as E_5, 
    key value_6 as E_6, 
    key value_7 as E_7, 
    key value_8 as E_8, 
    key value_9 as E_9
}
