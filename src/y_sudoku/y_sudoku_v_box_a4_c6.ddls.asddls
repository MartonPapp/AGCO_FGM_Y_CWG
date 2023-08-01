@AbapCatalog.sqlViewName: 'YV_BOX_A4_C6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A4_C6'
define view Y_SUDOKU_V_BOX_A4_C6 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as A_4, key value_2 as B_4, key value_3 as C_4,
    key value_4 as A_5, key value_5 as B_5, key value_6 as C_5,
    key value_7 as A_6, key value_8 as B_6, key value_9 as C_6
}
