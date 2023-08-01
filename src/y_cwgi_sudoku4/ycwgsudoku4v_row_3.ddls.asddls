@AbapCatalog.sqlViewName: 'YS4V_ROW_3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ROW 3'
define view YCWGSUDOKU4V_ROW_3 as 
select from ycwgt_sudoku4com
{
    key value_1 as A_3, 
    key value_2 as B_3, 
    key value_3 as C_3, 
    key value_4 as D_3
}
