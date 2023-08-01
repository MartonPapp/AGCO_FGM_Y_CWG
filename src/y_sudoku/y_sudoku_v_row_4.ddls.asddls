@AbapCatalog.sqlViewName: 'YV_ROW_4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'row_4'
define view Y_SUDOKU_V_ROW_4 as 
select from ycwg_sudoku_comb 
{
    key value_1 as A_4, 
    key value_2 as B_4, 
    key value_3 as C_4, 
    key value_4 as D_4, 
    key value_5 as E_4, 
    key value_6 as F_4, 
    key value_7 as G_4, 
    key value_8 as H_4, 
    key value_9 as I_4 
}
