@AbapCatalog.sqlViewName: 'YV_BOX_G4_I6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_G4_I6'
define view Y_SUDOKU_V_BOX_G4_I6 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as G_4, key value_2 as H_4, key value_3 as I_4,
    key value_4 as G_5, key value_5 as H_5, key value_6 as I_5,
    key value_7 as G_6, key value_8 as H_6, key value_9 as I_6
}
