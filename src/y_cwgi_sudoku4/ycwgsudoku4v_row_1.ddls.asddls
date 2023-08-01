@AbapCatalog.sqlViewName: 'YS4V_ROW_B'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ROW 1'
define view YCWGSUDOKU4V_ROW_1 as 
select from ycwgt_sudoku4com
{
    key value_1 as A_1, 
    key value_2 as B_1, 
    key value_3 as C_1, 
    key value_4 as D_1
}
