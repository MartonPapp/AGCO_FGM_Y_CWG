@AbapCatalog.sqlViewName: 'YV_BOX_A1_C3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A1_C3'
define view Y_SUDOKU_V_BOX_A1_C3 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as A_1, key value_2 as B_1, key value_3 as C_1,
    key value_4 as A_2, key value_5 as B_2, key value_6 as C_2,
    key value_7 as A_3, key value_8 as B_3, key value_9 as C_3
}
