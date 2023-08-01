@AbapCatalog.sqlViewName: 'YV_ROW_2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_2'
define view Y_SUDOKU_V_ROW_2 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_2, 
    key value_2 as B_2, 
    key value_3 as C_2, 
    key value_4 as D_2, 
    key value_5 as E_2, 
    key value_6 as F_2, 
    key value_7 as G_2, 
    key value_8 as H_2, 
    key value_9 as I_2 
}
