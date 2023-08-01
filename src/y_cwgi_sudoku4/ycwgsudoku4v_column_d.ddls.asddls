@AbapCatalog.sqlViewName: 'YS4V_COLUMN_D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COLUMN D'
define view YCWGSUDOKU4V_COLUMN_D as 
select from ycwgt_sudoku4com
{
    key value_1 as D_1, 
    key value_2 as D_2, 
    key value_3 as D_3, 
    key value_4 as D_4
}
