@AbapCatalog.sqlViewName: 'YS4V_BOXC1D2RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_C1_D2_ROW_COL'
define view YCWGSUDOKU4V_BOX_C1_D2_ROW_COL as 
select from    
    ( YCWGSUDOKU4V_BOX_C1_D2 as BOX_C1_D2
        inner join YCWGSUDOKU4V_ROW_1 as ROW_1_2 on BOX_C1_D2.C_1 = ROW_1_2.C_1
                                                and BOX_C1_D2.D_1 = ROW_1_2.D_1
        inner join YCWGSUDOKU4V_ROW_2 as ROW_2_2 on BOX_C1_D2.C_2 = ROW_2_2.C_2
                                                and BOX_C1_D2.D_2 = ROW_2_2.D_2
        inner join YCWGSUDOKU4V_COLUMN_C as COL_C on BOX_C1_D2.C_1 = COL_C.C_1
                                                 and BOX_C1_D2.C_2 = COL_C.C_2
        inner join YCWGSUDOKU4V_COLUMN_D as COL_D on BOX_C1_D2.D_1 = COL_D.D_1
                                                 and BOX_C1_D2.D_2 = COL_D.D_2 )
{   
    BOX_C1_D2.id as id,
    BOX_C1_D2.C_1 as C_1,
    BOX_C1_D2.D_1 as D_1,
    BOX_C1_D2.C_2 as C_2,
    BOX_C1_D2.D_2 as D_2
}  group by BOX_C1_D2.id, BOX_C1_D2.C_1, BOX_C1_D2.D_1, BOX_C1_D2.C_2, BOX_C1_D2.D_2
