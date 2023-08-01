@AbapCatalog.sqlViewName: 'YV_BOX_A1_B2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Box A1 B2'
define view YCWGSUDOKU4V_BOX_A1_B2 as 
select from ycwgt_sudoku4com
{
    key id,
    key value_1 as A_1, key value_2 as B_1,
    key value_3 as A_2, key value_4 as B_2
}
