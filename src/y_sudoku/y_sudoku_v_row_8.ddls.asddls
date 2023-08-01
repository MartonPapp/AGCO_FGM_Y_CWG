@AbapCatalog.sqlViewName: 'YV_ROW_8'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_8'
define view Y_SUDOKU_V_ROW_8 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_8, 
    key value_2 as B_8, 
    key value_3 as C_8, 
    key value_4 as D_8, 
    key value_5 as E_8, 
    key value_6 as F_8, 
    key value_7 as G_8, 
    key value_8 as H_8, 
    key value_9 as I_8 
}
