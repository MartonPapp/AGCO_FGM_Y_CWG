@AbapCatalog.sqlViewName: 'YV_ROW_9'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_9'
define view Y_SUDOKU_V_ROW_9 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_9, 
    key value_2 as B_9, 
    key value_3 as C_9, 
    key value_4 as D_9, 
    key value_5 as E_9, 
    key value_6 as F_9, 
    key value_7 as G_9, 
    key value_8 as H_9, 
    key value_9 as I_9 
}
