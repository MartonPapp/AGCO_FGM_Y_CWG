@AbapCatalog.sqlViewName: 'YS4V_BOXC3D4RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_C3_D4_ROW_COL'
define view YCWGSUDOKU4V_BOX_C3_D4_ROW_COL as 
select from    
    ( YCWGSUDOKU4V_BOX_C3_D4 as BOX_C3_D4
        inner join YCWGSUDOKU4V_ROW_3 as ROW_3 on BOX_C3_D4.C_3 = ROW_3.C_3
                                                and BOX_C3_D4.D_3 = ROW_3.D_3
        inner join YCWGSUDOKU4V_ROW_4 as ROW_4 on BOX_C3_D4.C_4 = ROW_4.C_4
                                                and BOX_C3_D4.D_4 = ROW_4.D_4
        inner join YCWGSUDOKU4V_COLUMN_C as COL_C on BOX_C3_D4.C_3 = COL_C.C_3
                                                 and BOX_C3_D4.C_4 = COL_C.C_4
        inner join YCWGSUDOKU4V_COLUMN_D as COL_D on BOX_C3_D4.D_3 = COL_D.D_3
                                                 and BOX_C3_D4.D_4 = COL_D.D_4 )
{
    BOX_C3_D4.id as id,
    BOX_C3_D4.C_3 as C_3,
    BOX_C3_D4.D_3 as D_3,
    BOX_C3_D4.C_4 as C_4,
    BOX_C3_D4.D_4 as D_4
} group by BOX_C3_D4.id, BOX_C3_D4.C_3, BOX_C3_D4.D_3, BOX_C3_D4.C_4, BOX_C3_D4.D_4
