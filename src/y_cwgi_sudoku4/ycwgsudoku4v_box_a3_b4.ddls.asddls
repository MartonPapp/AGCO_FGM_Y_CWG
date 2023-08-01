@AbapCatalog.sqlViewName: 'YV_BOX_A3_B4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Box A3 B4'
define view YCWGSUDOKU4V_BOX_A3_B4 as 
select from ycwgt_sudoku4com
{
    key id,
    key value_1 as A_3, key value_2 as B_3,
    key value_3 as A_4, key value_4 as B_4
}
