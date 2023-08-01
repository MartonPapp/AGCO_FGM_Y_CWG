@AbapCatalog.sqlViewName: 'YS4V_COLUMN_B'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COLUMN B'
define view YCWGSUDOKU4V_COLUMN_B as 
select from ycwgt_sudoku4com
{
    key value_1 as B_1, 
    key value_2 as B_2, 
    key value_3 as B_3, 
    key value_4 as B_4
}
