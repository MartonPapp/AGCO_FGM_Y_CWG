@AbapCatalog.sqlViewName: 'YV_COLUMN_H'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'column_H'
define view Y_SUDOKU_V_COLUMN_H as 
select from ycwg_sudoku_comb
{
    key value_1 as H_1, 
    key value_2 as H_2, 
    key value_3 as H_3, 
    key value_4 as H_4, 
    key value_5 as H_5, 
    key value_6 as H_6, 
    key value_7 as H_7, 
    key value_8 as H_8, 
    key value_9 as H_9
}
