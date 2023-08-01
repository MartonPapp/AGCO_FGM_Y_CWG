@AbapCatalog.sqlViewName: 'YV_ROW_3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_3'
define view Y_SUDOKU_V_ROW_3 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_3, 
    key value_2 as B_3, 
    key value_3 as C_3, 
    key value_4 as D_3, 
    key value_5 as E_3, 
    key value_6 as F_3, 
    key value_7 as G_3, 
    key value_8 as H_3, 
    key value_9 as I_3 
}
