@AbapCatalog.sqlViewName: 'YV_BOXG1I3RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_G1_I3_ROW_COL'
define view Y_SUDOKU_V_BOX_G1_I3_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_G1_I3 as BOX_G1_I3
    inner join Y_SUDOKU_V_ROW_1 as ROW_1 on BOX_G1_I3.G_1 = ROW_1.G_1
                                        and BOX_G1_I3.H_1 = ROW_1.H_1
                                        and BOX_G1_I3.I_1 = ROW_1.I_1
    inner join Y_SUDOKU_V_ROW_2 as ROW_2 on BOX_G1_I3.G_2 = ROW_2.G_2
                                        and BOX_G1_I3.H_2 = ROW_2.H_2
                                        and BOX_G1_I3.I_2 = ROW_2.I_2
    inner join Y_SUDOKU_V_ROW_3 as ROW_3 on BOX_G1_I3.G_3 = ROW_3.G_3
                                        and BOX_G1_I3.H_3 = ROW_3.H_3
                                        and BOX_G1_I3.I_3 = ROW_3.I_3
                                        
    inner join Y_SUDOKU_V_COLUMN_G as COL_G on BOX_G1_I3.G_1 = COL_G.G_1
                                           and BOX_G1_I3.G_2 = COL_G.G_2
                                           and BOX_G1_I3.G_3 = COL_G.G_3
    inner join Y_SUDOKU_V_COLUMN_H as COL_H on BOX_G1_I3.H_1 = COL_H.H_1
                                           and BOX_G1_I3.H_2 = COL_H.H_2
                                           and BOX_G1_I3.H_3 = COL_H.H_3
    inner join Y_SUDOKU_V_COLUMN_I as COL_I on BOX_G1_I3.I_1 = COL_I.I_1
                                           and BOX_G1_I3.I_2 = COL_I.I_2
                                           and BOX_G1_I3.I_3 = COL_I.I_3
 )
{
    key BOX_G1_I3.id as id,
    BOX_G1_I3.G_1 as G_1,
    BOX_G1_I3.H_1 as H_1,
    BOX_G1_I3.I_1 as I_1,
    
    BOX_G1_I3.G_2 as G_2,
    BOX_G1_I3.H_2 as H_2,
    BOX_G1_I3.I_2 as I_2,
    
    BOX_G1_I3.G_3 as G_3,
    BOX_G1_I3.H_3 as H_3,
    BOX_G1_I3.I_3 as I_3
} group by BOX_G1_I3.id,
           BOX_G1_I3.G_1, BOX_G1_I3.H_1, BOX_G1_I3.I_1, 
           BOX_G1_I3.G_2, BOX_G1_I3.H_2, BOX_G1_I3.I_2,
           BOX_G1_I3.G_3, BOX_G1_I3.H_3, BOX_G1_I3.I_3
