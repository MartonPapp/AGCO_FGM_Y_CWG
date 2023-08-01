@AbapCatalog.sqlViewName: 'YV_ROW_5'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_5'
define view Y_SUDOKU_V_ROW_5 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_5, 
    key value_2 as B_5, 
    key value_3 as C_5, 
    key value_4 as D_5, 
    key value_5 as E_5, 
    key value_6 as F_5, 
    key value_7 as G_5, 
    key value_8 as H_5, 
    key value_9 as I_5 
}
