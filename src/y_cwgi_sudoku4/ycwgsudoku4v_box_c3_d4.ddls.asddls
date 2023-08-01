@AbapCatalog.sqlViewName: 'YV_BOX_C3_D4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Box C3 D4'
define view YCWGSUDOKU4V_BOX_C3_D4 as 
select from ycwgt_sudoku4com
{
    key id,
    key value_1 as C_3, key value_2 as D_3,
    key value_3 as C_4, key value_4 as D_4
}
