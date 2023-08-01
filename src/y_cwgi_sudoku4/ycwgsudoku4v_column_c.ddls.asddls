@AbapCatalog.sqlViewName: 'YS4V_COLUMN_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COLUMN C'
define view YCWGSUDOKU4V_COLUMN_C as 
select from ycwgt_sudoku4com
{
    key value_1 as C_1, 
    key value_2 as C_2, 
    key value_3 as C_3, 
    key value_4 as C_4
}
