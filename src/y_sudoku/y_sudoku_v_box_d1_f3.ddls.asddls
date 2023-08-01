@AbapCatalog.sqlViewName: 'YV_BOX_D1_F3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D1_F3'
define view Y_SUDOKU_V_BOX_D1_F3 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as D_1, key value_2 as E_1, key value_3 as F_1,
    key value_4 as D_2, key value_5 as E_2, key value_6 as F_2,
    key value_7 as D_3, key value_8 as E_3, key value_9 as F_3
}
