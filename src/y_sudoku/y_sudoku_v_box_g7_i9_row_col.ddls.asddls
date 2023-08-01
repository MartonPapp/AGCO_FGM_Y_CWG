@AbapCatalog.sqlViewName: 'YV_BOXG7I9RC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOX_G7_I9_ROW_COL'
define view Y_SUDOKU_V_BOX_G7_I9_ROW_COL as 
select from 
 ( Y_SUDOKU_V_BOX_G7_I9 as BOX_G7_I9
    inner join Y_SUDOKU_V_ROW_7 as ROW_7 on BOX_G7_I9.G_7 = ROW_7.G_7
                                        and BOX_G7_I9.H_7 = ROW_7.H_7
                                        and BOX_G7_I9.I_7 = ROW_7.I_7
    inner join Y_SUDOKU_V_ROW_8 as ROW_8 on BOX_G7_I9.G_8 = ROW_8.G_8
                                        and BOX_G7_I9.H_8 = ROW_8.H_8
                                        and BOX_G7_I9.I_8 = ROW_8.I_8
    inner join Y_SUDOKU_V_ROW_9 as ROW_9 on BOX_G7_I9.G_9 = ROW_9.G_9
                                        and BOX_G7_I9.H_9 = ROW_9.H_9
                                        and BOX_G7_I9.I_9 = ROW_9.I_9
                                        
    inner join Y_SUDOKU_V_COLUMN_G as COL_G on BOX_G7_I9.G_7 = COL_G.G_7
                                           and BOX_G7_I9.G_8 = COL_G.G_8
                                           and BOX_G7_I9.G_9 = COL_G.G_9
    inner join Y_SUDOKU_V_COLUMN_H as COL_H on BOX_G7_I9.H_7 = COL_H.H_7
                                           and BOX_G7_I9.H_8 = COL_H.H_8
                                           and BOX_G7_I9.H_9 = COL_H.H_9
    inner join Y_SUDOKU_V_COLUMN_I as COL_I on BOX_G7_I9.I_7 = COL_I.I_7
                                           and BOX_G7_I9.I_8 = COL_I.I_8
                                           and BOX_G7_I9.I_9 = COL_I.I_9
 )
{
    key BOX_G7_I9.id as id,
    BOX_G7_I9.G_7 as G_7,
    BOX_G7_I9.H_7 as H_7,
    BOX_G7_I9.I_7 as I_7,
    
    BOX_G7_I9.G_8 as G_8,
    BOX_G7_I9.H_8 as H_8,
    BOX_G7_I9.I_8 as I_8,
    
    BOX_G7_I9.G_9 as G_9,
    BOX_G7_I9.H_9 as H_9,
    BOX_G7_I9.I_9 as I_9
} group by BOX_G7_I9.id,
           BOX_G7_I9.G_7, BOX_G7_I9.H_7, BOX_G7_I9.I_7, 
           BOX_G7_I9.G_8, BOX_G7_I9.H_8, BOX_G7_I9.I_8,
           BOX_G7_I9.G_9, BOX_G7_I9.H_9, BOX_G7_I9.I_9
