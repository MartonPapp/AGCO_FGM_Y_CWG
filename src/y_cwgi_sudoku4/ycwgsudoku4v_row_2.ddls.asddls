@AbapCatalog.sqlViewName: 'YS4V_ROW_2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ROW 2'
define view YCWGSUDOKU4V_ROW_2 as 
select from ycwgt_sudoku4com
{
    key value_1 as A_2, 
    key value_2 as B_2, 
    key value_3 as C_2, 
    key value_4 as D_2
}
