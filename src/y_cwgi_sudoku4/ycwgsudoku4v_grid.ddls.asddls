@AbapCatalog.sqlViewName: 'YS4_GRID'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GRID'
define view YCWGSUDOKU4V_GRID as 
select from 
YCWGSUDOKU4V_BOX_A1_B2_ROW_COL as BOX1
  inner join YCWGSUDOKU4V_BOX_A3_B4_ROW_COL as BOX2 
                                            on BOX2.id = BOX1.id
  inner join YCWGSUDOKU4V_BOX_C1_D2_ROW_COL as BOX3 
                                            on BOX3.id = BOX1.id
  inner join YCWGSUDOKU4V_BOX_C3_D4_ROW_COL as BOX4
                                            on BOX4.id = BOX1.id  
                                                 
{
    BOX1.A_1 as A_1,
    BOX1.B_1 as B_1,
    BOX1.A_2 as A_2,
    BOX1.B_2 as B_2,
    
    BOX2.A_3 as A_3,
    BOX2.B_3 as B_3,
    BOX2.A_4 as A_4,
    BOX2.B_4 as B_4,
    
    BOX3.C_1 as C_1,
    BOX3.D_1 as D_1,
    BOX3.C_2 as C_2,
    BOX3.D_2 as D_2,
    
    BOX4.C_3 as C_3,
    BOX4.D_3 as D_3,
    BOX4.C_4 as C_4,
    BOX4.D_4 as D_4
} where BOX1.A_1 <> BOX2.A_3
    and BOX1.A_1 <> BOX2.A_4
    and BOX1.A_2 <> BOX2.A_3
    and BOX1.A_2 <> BOX2.A_4
    and BOX1.B_1 <> BOX2.B_3
    and BOX1.B_1 <> BOX2.B_4
    and BOX1.B_2 <> BOX2.B_3
    and BOX1.B_2 <> BOX2.B_4
    
    and BOX3.C_1 <> BOX4.C_3
    and BOX3.C_1 <> BOX4.C_4
    and BOX3.C_2 <> BOX4.C_3
    and BOX3.C_2 <> BOX4.C_4
    and BOX3.D_1 <> BOX4.D_3
    and BOX3.D_1 <> BOX4.D_4
    and BOX3.D_2 <> BOX4.D_3
    and BOX3.D_2 <> BOX4.D_4
    
    and BOX1.A_1 <> BOX3.C_1
    and BOX1.A_1 <> BOX3.D_1
    and BOX1.B_1 <> BOX3.C_1
    and BOX1.B_1 <> BOX3.D_1
    and BOX1.A_2 <> BOX3.C_2
    and BOX1.A_2 <> BOX3.D_2
    and BOX1.B_2 <> BOX3.C_2
    and BOX1.B_2 <> BOX3.D_2
    
    and BOX2.A_3 <> BOX4.C_3
    and BOX2.A_3 <> BOX4.D_3
    and BOX2.B_3 <> BOX4.C_3
    and BOX2.B_3 <> BOX4.D_3
    and BOX2.A_4 <> BOX4.C_4
    and BOX2.A_4 <> BOX4.D_4
    and BOX2.B_4 <> BOX4.C_4
    and BOX2.B_4 <> BOX4.D_4
