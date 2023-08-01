@AbapCatalog.sqlViewName: 'YV_BOX_A7_C9'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A7_C9'
define view Y_SUDOKU_V_BOX_A7_C9 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as A_7, key value_2 as B_7, key value_3 as C_7,
    key value_4 as A_8, key value_5 as B_8, key value_6 as C_8,
    key value_7 as A_9, key value_8 as B_9, key value_9 as C_9
}
