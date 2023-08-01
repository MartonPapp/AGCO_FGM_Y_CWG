@AbapCatalog.sqlViewName: 'YV_ROW_6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_6'
define view Y_SUDOKU_V_ROW_6 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_6, 
    key value_2 as B_6, 
    key value_3 as C_6, 
    key value_4 as D_6, 
    key value_5 as E_6, 
    key value_6 as F_6, 
    key value_7 as G_6, 
    key value_8 as H_6, 
    key value_9 as I_6 
}
