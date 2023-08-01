@AbapCatalog.sqlViewName: 'YV_ROW_7'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_7'
define view Y_SUDOKU_V_ROW_7 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_7, 
    key value_2 as B_7, 
    key value_3 as C_7, 
    key value_4 as D_7, 
    key value_5 as E_7, 
    key value_6 as F_7, 
    key value_7 as G_7, 
    key value_8 as H_7, 
    key value_9 as I_7 
}
