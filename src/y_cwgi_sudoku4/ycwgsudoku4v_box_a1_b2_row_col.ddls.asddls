@AbapCatalog.sqlViewName: 'YS4V_BOXA1B2RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_A1_B2_ROW_COL'
define view YCWGSUDOKU4V_BOX_A1_B2_ROW_COL as
select from 
    ( YCWGSUDOKU4V_BOX_A1_B2 as BOX_A1_B2
        inner join YCWGSUDOKU4V_ROW_1 as ROW_1 on BOX_A1_B2.A_1 = ROW_1.A_1
                                              and BOX_A1_B2.B_1 = ROW_1.B_1
        inner join YCWGSUDOKU4V_ROW_2 as ROW_2 on BOX_A1_B2.A_2 = ROW_2.A_2
                                              and BOX_A1_B2.B_2 = ROW_2.B_2
        inner join YCWGSUDOKU4V_COLUMN_A as COL_A on BOX_A1_B2.A_1 = COL_A.A_1
                                                 and BOX_A1_B2.A_2 = COL_A.A_2
        inner join YCWGSUDOKU4V_COLUMN_B as COL_B on BOX_A1_B2.B_1 = COL_B.B_1
                                                 and BOX_A1_B2.B_2 = COL_B.B_2 
                                                 )


                                                 
{   
    BOX_A1_B2.id as id,
    BOX_A1_B2.A_1 as A_1,
    BOX_A1_B2.B_1 as B_1,
    BOX_A1_B2.A_2 as A_2,
    BOX_A1_B2.B_2 as B_2
} group by BOX_A1_B2.id, BOX_A1_B2.A_1, BOX_A1_B2.B_1, BOX_A1_B2.A_2, BOX_A1_B2.B_2
