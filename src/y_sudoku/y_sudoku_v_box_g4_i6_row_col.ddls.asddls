@AbapCatalog.sqlViewName: 'YV_BOXG4I6RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_G4_I6_ROW_COL'
define view Y_SUDOKU_V_BOX_G4_I6_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_G4_I6 as BOX_G4_I6
    inner join Y_SUDOKU_V_ROW_4 as ROW_4 on BOX_G4_I6.G_4 = ROW_4.G_4
                                        and BOX_G4_I6.H_4 = ROW_4.H_4
                                        and BOX_G4_I6.I_4 = ROW_4.I_4
    inner join Y_SUDOKU_V_ROW_5 as ROW_5 on BOX_G4_I6.G_5 = ROW_5.G_5
                                        and BOX_G4_I6.H_5 = ROW_5.H_5
                                        and BOX_G4_I6.I_5 = ROW_5.I_5
    inner join Y_SUDOKU_V_ROW_6 as ROW_6 on BOX_G4_I6.G_6 = ROW_6.G_6
                                        and BOX_G4_I6.H_6 = ROW_6.H_6
                                        and BOX_G4_I6.I_6 = ROW_6.I_6
                                        
    inner join Y_SUDOKU_V_COLUMN_G as COL_G on BOX_G4_I6.G_4 = COL_G.G_4
                                           and BOX_G4_I6.G_5 = COL_G.G_5
                                           and BOX_G4_I6.G_6 = COL_G.G_6
    inner join Y_SUDOKU_V_COLUMN_H as COL_H on BOX_G4_I6.H_4 = COL_H.H_4
                                           and BOX_G4_I6.H_5 = COL_H.H_5
                                           and BOX_G4_I6.H_6 = COL_H.H_6
    inner join Y_SUDOKU_V_COLUMN_I as COL_I on BOX_G4_I6.I_4 = COL_I.I_4
                                           and BOX_G4_I6.I_5 = COL_I.I_5
                                           and BOX_G4_I6.I_6 = COL_I.I_6
 )
{
    key BOX_G4_I6.id as id,
    BOX_G4_I6.G_4 as G_4,
    BOX_G4_I6.H_4 as H_4,
    BOX_G4_I6.I_4 as I_4,
    
    BOX_G4_I6.G_5 as G_5,
    BOX_G4_I6.H_5 as H_5,
    BOX_G4_I6.I_5 as I_5,
    
    BOX_G4_I6.G_6 as G_6,
    BOX_G4_I6.H_6 as H_6,
    BOX_G4_I6.I_6 as I_6
} group by BOX_G4_I6.id,
           BOX_G4_I6.G_4, BOX_G4_I6.H_4, BOX_G4_I6.I_4, 
           BOX_G4_I6.G_5, BOX_G4_I6.H_5, BOX_G4_I6.I_5,
           BOX_G4_I6.G_6, BOX_G4_I6.H_6, BOX_G4_I6.I_6
