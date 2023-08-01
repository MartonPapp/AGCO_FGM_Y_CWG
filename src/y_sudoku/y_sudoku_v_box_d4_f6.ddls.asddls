@AbapCatalog.sqlViewName: 'YV_BOX_D4_F6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D4_F6'
define view Y_SUDOKU_V_BOX_D4_F6 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as D_4, key value_2 as E_4, key value_3 as F_4,
    key value_4 as D_5, key value_5 as E_5, key value_6 as F_5,
    key value_7 as D_6, key value_8 as E_6, key value_9 as F_6
}
