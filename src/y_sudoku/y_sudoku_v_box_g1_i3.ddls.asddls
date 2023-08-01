@AbapCatalog.sqlViewName: 'YV_BOX_G1_I3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_G1_I3'
define view Y_SUDOKU_V_BOX_G1_I3 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as G_1, key value_2 as H_1, key value_3 as I_1,
    key value_4 as G_2, key value_5 as H_2, key value_6 as I_2,
    key value_7 as G_3, key value_8 as H_3, key value_9 as I_3
}
