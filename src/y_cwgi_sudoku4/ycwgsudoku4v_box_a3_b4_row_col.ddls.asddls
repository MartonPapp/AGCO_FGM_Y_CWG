@AbapCatalog.sqlViewName: 'YS4V_BOXA3B4RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A3_B4_ROW_COL'
define view YCWGSUDOKU4V_BOX_A3_B4_ROW_COL as 
select from 
    ( YCWGSUDOKU4V_BOX_A3_B4 as BOX_A3_B4
        inner join YCWGSUDOKU4V_ROW_3 as ROW_3 on BOX_A3_B4.A_3 = ROW_3.A_3
                                              and BOX_A3_B4.B_3 = ROW_3.B_3
        inner join YCWGSUDOKU4V_ROW_4 as ROW_4 on BOX_A3_B4.A_4 = ROW_4.A_4
                                              and BOX_A3_B4.B_4 = ROW_4.B_4
        inner join YCWGSUDOKU4V_COLUMN_A as COL_A on BOX_A3_B4.A_3 = COL_A.A_3
                                                 and BOX_A3_B4.A_4 = COL_A.A_4
        inner join YCWGSUDOKU4V_COLUMN_B as COL_B on BOX_A3_B4.B_3 = COL_B.B_3
                                                 and BOX_A3_B4.B_4 = COL_B.B_4 
                                                 )


                                                 
{
    BOX_A3_B4.id as id,
    BOX_A3_B4.A_3 as A_3,
    BOX_A3_B4.B_3 as B_3,
    BOX_A3_B4.A_4 as A_4,
    BOX_A3_B4.B_4 as B_4
} group by BOX_A3_B4.id, BOX_A3_B4.A_3, BOX_A3_B4.B_3, BOX_A3_B4.A_4, BOX_A3_B4.B_4
