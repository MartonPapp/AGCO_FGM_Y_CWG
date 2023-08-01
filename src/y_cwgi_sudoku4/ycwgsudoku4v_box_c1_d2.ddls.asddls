@AbapCatalog.sqlViewName: 'YV_BOX_C1_D2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Box C1 D2'
define view YCWGSUDOKU4V_BOX_C1_D2 as 
select from ycwgt_sudoku4com
{
    key id,
    key value_1 as C_1, key value_2 as D_1,
    key value_3 as C_2, key value_4 as D_2
}
