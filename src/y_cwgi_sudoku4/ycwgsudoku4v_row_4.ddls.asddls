@AbapCatalog.sqlViewName: 'YS4V_ROW_4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ROW 4'
define view YCWGSUDOKU4V_ROW_4 as 
select from ycwgt_sudoku4com
{
    key value_1 as A_4, 
    key value_2 as B_4, 
    key value_3 as C_4, 
    key value_4 as D_4
}
