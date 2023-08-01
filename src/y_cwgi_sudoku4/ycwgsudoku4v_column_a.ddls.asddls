@AbapCatalog.sqlViewName: 'YS4V_COLUMN_A'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COLUMN A'
define view YCWGSUDOKU4V_COLUMN_A as 
select from ycwgt_sudoku4com
{
    key value_1 as A_1, 
    key value_2 as A_2, 
    key value_3 as A_3, 
    key value_4 as A_4
}
