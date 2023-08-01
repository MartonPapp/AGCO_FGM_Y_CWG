@AbapCatalog.sqlViewName: 'YV_BOX_D7_F9'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_D7_F9'
define view Y_SUDOKU_V_BOX_D7_F9 as 
select from ycwg_sudoku_comb
{
    key id,
    key value_1 as D_7, key value_2 as E_7, key value_3 as F_7,
    key value_4 as D_8, key value_5 as E_8, key value_6 as F_8,
    key value_7 as D_9, key value_8 as E_9, key value_9 as F_9
}
