@AbapCatalog.sqlViewName: 'YV_ROW_1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_1'
define view Y_SUDOKU_V_ROW_1 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_1, 
    key value_2 as B_1, 
    key value_3 as C_1, 
    key value_4 as D_1, 
    key value_5 as E_1, 
    key value_6 as F_1, 
    key value_7 as G_1, 
    key value_8 as H_1, 
    key value_9 as I_1 
}
