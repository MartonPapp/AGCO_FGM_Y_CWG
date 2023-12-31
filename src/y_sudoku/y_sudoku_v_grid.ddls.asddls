@AbapCatalog.sqlViewName: 'YV_GRID'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GRID'
define view Y_SUDOKU_V_GRID as 
select from Y_SUDOKU_V_BOX_A1_C3_ROW_COL as BOXA1C3
inner join Y_SUDOKU_V_BOX_A4_C6_ROW_COL as BOXA4C6 on BOXA4C6.id = BOXA1C3.id
inner join Y_SUDOKU_V_BOX_A7_C9_ROW_COL as BOXA7C9 on BOXA7C9.id = BOXA1C3.id

inner join Y_SUDOKU_V_BOX_D1_F3_ROW_COL as BOXD1F3 on BOXD1F3.id = BOXA1C3.id
inner join Y_SUDOKU_V_BOX_D4_F6_ROW_COL as BOXD4F6 on BOXD4F6.id = BOXA1C3.id
inner join Y_SUDOKU_V_BOX_D7_F9_ROW_COL as BOXD7F9 on BOXD7F9.id = BOXA1C3.id

inner join Y_SUDOKU_V_BOX_G1_I3_ROW_COL as BOXG1I3 on BOXG1I3.id = BOXA1C3.id
inner join Y_SUDOKU_V_BOX_G4_I6_ROW_COL as BOXG4I6 on BOXG4I6.id = BOXA1C3.id
inner join Y_SUDOKU_V_BOX_G7_I9_ROW_COL as BOXG7I9 on BOXG7I9.id = BOXA1C3.id
{
    BOXA1C3.A_1, BOXA1C3.B_1, BOXA1C3.C_1,     BOXD1F3.D_1, BOXD1F3.E_1, BOXD1F3.F_1,       BOXG1I3.G_1, BOXG1I3.H_1, BOXG1I3.I_1,      
    BOXA1C3.A_2, BOXA1C3.B_2, BOXA1C3.C_2,     BOXD1F3.D_2, BOXD1F3.E_2, BOXD1F3.F_2,       BOXG1I3.G_2, BOXG1I3.H_2, BOXG1I3.I_2,
    BOXA1C3.A_3, BOXA1C3.B_3, BOXA1C3.C_3,     BOXD1F3.D_3, BOXD1F3.E_3, BOXD1F3.F_3,       BOXG1I3.G_3, BOXG1I3.H_3, BOXG1I3.I_3,
    
    BOXA4C6.A_4, BOXA4C6.B_4, BOXA4C6.C_4,     BOXD4F6.D_4, BOXD4F6.E_4, BOXD4F6.F_4,       BOXG4I6.G_4, BOXG4I6.H_4, BOXG4I6.I_4,      
    BOXA4C6.A_5, BOXA4C6.B_5, BOXA4C6.C_5,     BOXD4F6.D_5, BOXD4F6.E_5, BOXD4F6.F_5,       BOXG4I6.G_5, BOXG4I6.H_5, BOXG4I6.I_5,
    BOXA4C6.A_6, BOXA4C6.B_6, BOXA4C6.C_6,     BOXD4F6.D_6, BOXD4F6.E_6, BOXD4F6.F_6,       BOXG4I6.G_6, BOXG4I6.H_6, BOXG4I6.I_6,
    
    BOXA7C9.A_7, BOXA7C9.B_7, BOXA7C9.C_7,     BOXD7F9.D_7, BOXD7F9.E_7, BOXD7F9.F_7,       BOXG7I9.G_7, BOXG7I9.H_7, BOXG7I9.I_7,      
    BOXA7C9.A_8, BOXA7C9.B_8, BOXA7C9.C_8,     BOXD7F9.D_8, BOXD7F9.E_8, BOXD7F9.F_8,       BOXG7I9.G_8, BOXG7I9.H_8, BOXG7I9.I_8,
    BOXA7C9.A_9, BOXA7C9.B_9, BOXA7C9.C_9,     BOXD7F9.D_9, BOXD7F9.E_9, BOXD7F9.F_9,       BOXG7I9.G_9, BOXG7I9.H_9, BOXG7I9.I_9
    
} where 
//COLUMN A 
BOXA1C3.A_1 <> BOXA4C6.A_4 and
BOXA1C3.A_1 <> BOXA4C6.A_5 and
BOXA1C3.A_1 <> BOXA4C6.A_6 and
BOXA1C3.A_1 <> BOXA7C9.A_7 and
BOXA1C3.A_1 <> BOXA7C9.A_8 and 
BOXA1C3.A_1 <> BOXA7C9.A_9 and

BOXA1C3.A_2 <> BOXA4C6.A_4 and
BOXA1C3.A_2 <> BOXA4C6.A_5 and
BOXA1C3.A_2 <> BOXA4C6.A_6 and
BOXA1C3.A_2 <> BOXA7C9.A_7 and
BOXA1C3.A_2 <> BOXA7C9.A_8 and 
BOXA1C3.A_2 <> BOXA7C9.A_9 and

BOXA1C3.A_3 <> BOXA4C6.A_4 and
BOXA1C3.A_3 <> BOXA4C6.A_5 and
BOXA1C3.A_3 <> BOXA4C6.A_6 and
BOXA1C3.A_3 <> BOXA7C9.A_7 and
BOXA1C3.A_3 <> BOXA7C9.A_8 and 
BOXA1C3.A_3 <> BOXA7C9.A_9 and

BOXA4C6.A_4 <> BOXA7C9.A_7 and
BOXA4C6.A_4 <> BOXA7C9.A_8 and 
BOXA4C6.A_4 <> BOXA7C9.A_9 and

BOXA4C6.A_5 <> BOXA7C9.A_7 and
BOXA4C6.A_5 <> BOXA7C9.A_8 and 
BOXA4C6.A_5 <> BOXA7C9.A_9 and

BOXA4C6.A_6 <> BOXA7C9.A_7 and
BOXA4C6.A_6 <> BOXA7C9.A_8 and 
BOXA4C6.A_6 <> BOXA7C9.A_9 and
///////////////////////////////////
//COLUMN B
BOXA1C3.B_1 <> BOXA4C6.B_4 and
BOXA1C3.B_1 <> BOXA4C6.B_5 and
BOXA1C3.B_1 <> BOXA4C6.B_6 and
BOXA1C3.B_1 <> BOXA7C9.B_7 and
BOXA1C3.B_1 <> BOXA7C9.B_8 and 
BOXA1C3.B_1 <> BOXA7C9.B_9 and

BOXA1C3.B_2 <> BOXA4C6.B_4 and
BOXA1C3.B_2 <> BOXA4C6.B_5 and
BOXA1C3.B_2 <> BOXA4C6.B_6 and
BOXA1C3.B_2 <> BOXA7C9.B_7 and
BOXA1C3.B_2 <> BOXA7C9.B_8 and 
BOXA1C3.B_2 <> BOXA7C9.B_9 and

BOXA1C3.B_3 <> BOXA4C6.B_4 and
BOXA1C3.B_3 <> BOXA4C6.B_5 and
BOXA1C3.B_3 <> BOXA4C6.B_6 and
BOXA1C3.B_3 <> BOXA7C9.B_7 and
BOXA1C3.B_3 <> BOXA7C9.B_8 and 
BOXA1C3.B_3 <> BOXA7C9.B_9 and

BOXA4C6.B_4 <> BOXA7C9.B_7 and
BOXA4C6.B_4 <> BOXA7C9.B_8 and 
BOXA4C6.B_4 <> BOXA7C9.B_9 and

BOXA4C6.B_5 <> BOXA7C9.B_7 and
BOXA4C6.B_5 <> BOXA7C9.B_8 and 
BOXA4C6.B_5 <> BOXA7C9.B_9 and

BOXA4C6.B_6 <> BOXA7C9.B_7 and
BOXA4C6.B_6 <> BOXA7C9.B_8 and 
BOXA4C6.B_6 <> BOXA7C9.B_9 and
//////////////////////////////////
//COLUMN C  
BOXA1C3.C_1 <> BOXA4C6.C_4 and
BOXA1C3.C_1 <> BOXA4C6.C_5 and
BOXA1C3.C_1 <> BOXA4C6.C_6 and
BOXA1C3.C_1 <> BOXA7C9.C_7 and
BOXA1C3.C_1 <> BOXA7C9.C_8 and 
BOXA1C3.C_1 <> BOXA7C9.C_9 and

BOXA1C3.C_2 <> BOXA4C6.C_4 and
BOXA1C3.C_2 <> BOXA4C6.C_5 and
BOXA1C3.C_2 <> BOXA4C6.C_6 and
BOXA1C3.C_2 <> BOXA7C9.C_7 and
BOXA1C3.C_2 <> BOXA7C9.C_8 and 
BOXA1C3.C_2 <> BOXA7C9.C_9 and

BOXA1C3.C_3 <> BOXA4C6.C_4 and
BOXA1C3.C_3 <> BOXA4C6.C_5 and
BOXA1C3.C_3 <> BOXA4C6.C_6 and
BOXA1C3.C_3 <> BOXA7C9.C_7 and
BOXA1C3.C_3 <> BOXA7C9.C_8 and 
BOXA1C3.C_3 <> BOXA7C9.C_9 and

BOXA4C6.C_4 <> BOXA7C9.C_7 and
BOXA4C6.C_4 <> BOXA7C9.C_8 and 
BOXA4C6.C_4 <> BOXA7C9.C_9 and

BOXA4C6.C_5 <> BOXA7C9.C_7 and
BOXA4C6.C_5 <> BOXA7C9.C_8 and 
BOXA4C6.C_5 <> BOXA7C9.C_9 and

BOXA4C6.C_6 <> BOXA7C9.C_7 and
BOXA4C6.C_6 <> BOXA7C9.C_8 and 
BOXA4C6.C_6 <> BOXA7C9.C_9 and
///////////////////////////////////
//COLUMN D
BOXD1F3.D_1 <> BOXD4F6.D_4 and
BOXD1F3.D_1 <> BOXD4F6.D_5 and
BOXD1F3.D_1 <> BOXD4F6.D_6 and
BOXD1F3.D_1 <> BOXD7F9.D_7 and
BOXD1F3.D_1 <> BOXD7F9.D_8 and 
BOXD1F3.D_1 <> BOXD7F9.D_9 and

BOXD1F3.D_2 <> BOXD4F6.D_4 and
BOXD1F3.D_2 <> BOXD4F6.D_5 and
BOXD1F3.D_2 <> BOXD4F6.D_6 and
BOXD1F3.D_2 <> BOXD7F9.D_7 and
BOXD1F3.D_2 <> BOXD7F9.D_8 and 
BOXD1F3.D_2 <> BOXD7F9.D_9 and

BOXD1F3.D_3 <> BOXD4F6.D_4 and
BOXD1F3.D_3 <> BOXD4F6.D_5 and
BOXD1F3.D_3 <> BOXD4F6.D_6 and
BOXD1F3.D_3 <> BOXD7F9.D_7 and
BOXD1F3.D_3 <> BOXD7F9.D_8 and 
BOXD1F3.D_3 <> BOXD7F9.D_9 and

BOXD4F6.D_4 <> BOXD7F9.D_7 and
BOXD4F6.D_4 <> BOXD7F9.D_8 and 
BOXD4F6.D_4 <> BOXD7F9.D_9 and

BOXD4F6.D_5 <> BOXD7F9.D_7 and
BOXD4F6.D_5 <> BOXD7F9.D_8 and 
BOXD4F6.D_5 <> BOXD7F9.D_9 and

BOXD4F6.D_6 <> BOXD7F9.D_7 and
BOXD4F6.D_6 <> BOXD7F9.D_8 and 
BOXD4F6.D_6 <> BOXD7F9.D_9 and
//////////////////////////////////
//COLUMN E
BOXD1F3.E_1 <> BOXD4F6.E_4 and
BOXD1F3.E_1 <> BOXD4F6.E_5 and
BOXD1F3.E_1 <> BOXD4F6.E_6 and
BOXD1F3.E_1 <> BOXD7F9.E_7 and
BOXD1F3.E_1 <> BOXD7F9.E_8 and 
BOXD1F3.E_1 <> BOXD7F9.E_9 and

BOXD1F3.E_2 <> BOXD4F6.E_4 and
BOXD1F3.E_2 <> BOXD4F6.E_5 and
BOXD1F3.E_2 <> BOXD4F6.E_6 and
BOXD1F3.E_2 <> BOXD7F9.E_7 and
BOXD1F3.E_2 <> BOXD7F9.E_8 and 
BOXD1F3.E_2 <> BOXD7F9.E_9 and

BOXD1F3.E_3 <> BOXD4F6.E_4 and
BOXD1F3.E_3 <> BOXD4F6.E_5 and
BOXD1F3.E_3 <> BOXD4F6.E_6 and
BOXD1F3.E_3 <> BOXD7F9.E_7 and
BOXD1F3.E_3 <> BOXD7F9.E_8 and 
BOXD1F3.E_3 <> BOXD7F9.E_9 and

BOXD4F6.E_4 <> BOXD7F9.E_7 and
BOXD4F6.E_4 <> BOXD7F9.E_8 and 
BOXD4F6.E_4 <> BOXD7F9.E_9 and

BOXD4F6.E_5 <> BOXD7F9.E_7 and
BOXD4F6.E_5 <> BOXD7F9.E_8 and 
BOXD4F6.E_5 <> BOXD7F9.E_9 and

BOXD4F6.E_6 <> BOXD7F9.E_7 and
BOXD4F6.E_6 <> BOXD7F9.E_8 and 
BOXD4F6.E_6 <> BOXD7F9.E_9 and
//////////////////////////////////
//COLUMN F
BOXD1F3.F_1 <> BOXD4F6.F_4 and
BOXD1F3.F_1 <> BOXD4F6.F_5 and
BOXD1F3.F_1 <> BOXD4F6.F_6 and
BOXD1F3.F_1 <> BOXD7F9.F_7 and
BOXD1F3.F_1 <> BOXD7F9.F_8 and 
BOXD1F3.F_1 <> BOXD7F9.F_9 and

BOXD1F3.F_2 <> BOXD4F6.F_4 and
BOXD1F3.F_2 <> BOXD4F6.F_5 and
BOXD1F3.F_2 <> BOXD4F6.F_6 and
BOXD1F3.F_2 <> BOXD7F9.F_7 and
BOXD1F3.F_2 <> BOXD7F9.F_8 and 
BOXD1F3.F_2 <> BOXD7F9.F_9 and

BOXD1F3.F_3 <> BOXD4F6.F_4 and
BOXD1F3.F_3 <> BOXD4F6.F_5 and
BOXD1F3.F_3 <> BOXD4F6.F_6 and
BOXD1F3.F_3 <> BOXD7F9.F_7 and
BOXD1F3.F_3 <> BOXD7F9.F_8 and 
BOXD1F3.F_3 <> BOXD7F9.F_9 and

BOXD4F6.F_4 <> BOXD7F9.F_7 and
BOXD4F6.F_4 <> BOXD7F9.F_8 and 
BOXD4F6.F_4 <> BOXD7F9.F_9 and

BOXD4F6.F_5 <> BOXD7F9.F_7 and
BOXD4F6.F_5 <> BOXD7F9.F_8 and 
BOXD4F6.F_5 <> BOXD7F9.F_9 and

BOXD4F6.F_6 <> BOXD7F9.F_7 and
BOXD4F6.F_6 <> BOXD7F9.F_8 and 
BOXD4F6.F_6 <> BOXD7F9.F_9 and

//COLUMN G
BOXG1I3.G_1 <> BOXG4I6.G_4 and
BOXG1I3.G_1 <> BOXG4I6.G_5 and
BOXG1I3.G_1 <> BOXG4I6.G_6 and
BOXG1I3.G_1 <> BOXG7I9.G_7 and
BOXG1I3.G_1 <> BOXG7I9.G_8 and 
BOXG1I3.G_1 <> BOXG7I9.G_9 and

BOXG1I3.G_2 <> BOXG4I6.G_4 and
BOXG1I3.G_2 <> BOXG4I6.G_5 and
BOXG1I3.G_2 <> BOXG4I6.G_6 and
BOXG1I3.G_2 <> BOXG7I9.G_7 and
BOXG1I3.G_2 <> BOXG7I9.G_8 and 
BOXG1I3.G_2 <> BOXG7I9.G_9 and

BOXG1I3.G_3 <> BOXG4I6.G_4 and
BOXG1I3.G_3 <> BOXG4I6.G_5 and
BOXG1I3.G_3 <> BOXG4I6.G_6 and
BOXG1I3.G_3 <> BOXG7I9.G_7 and
BOXG1I3.G_3 <> BOXG7I9.G_8 and 
BOXG1I3.G_3 <> BOXG7I9.G_9 and

BOXG4I6.G_4 <> BOXG7I9.G_7 and
BOXG4I6.G_4 <> BOXG7I9.G_8 and 
BOXG4I6.G_4 <> BOXG7I9.G_9 and

BOXG4I6.G_5 <> BOXG7I9.G_7 and
BOXG4I6.G_5 <> BOXG7I9.G_8 and 
BOXG4I6.G_5 <> BOXG7I9.G_9 and

BOXG4I6.G_6 <> BOXG7I9.G_7 and
BOXG4I6.G_6 <> BOXG7I9.G_8 and 
BOXG4I6.G_6 <> BOXG7I9.G_9 and

//COLUMN H
BOXG1I3.H_1 <> BOXG4I6.H_4 and
BOXG1I3.H_1 <> BOXG4I6.H_5 and
BOXG1I3.H_1 <> BOXG4I6.H_6 and
BOXG1I3.H_1 <> BOXG7I9.H_7 and
BOXG1I3.H_1 <> BOXG7I9.H_8 and 
BOXG1I3.H_1 <> BOXG7I9.H_9 and

BOXG1I3.H_2 <> BOXG4I6.H_4 and
BOXG1I3.H_2 <> BOXG4I6.H_5 and
BOXG1I3.H_2 <> BOXG4I6.H_6 and
BOXG1I3.H_2 <> BOXG7I9.H_7 and
BOXG1I3.H_2 <> BOXG7I9.H_8 and 
BOXG1I3.H_2 <> BOXG7I9.H_9 and

BOXG1I3.H_3 <> BOXG4I6.H_4 and
BOXG1I3.H_3 <> BOXG4I6.H_5 and
BOXG1I3.H_3 <> BOXG4I6.H_6 and
BOXG1I3.H_3 <> BOXG7I9.H_7 and
BOXG1I3.H_3 <> BOXG7I9.H_8 and 
BOXG1I3.H_3 <> BOXG7I9.H_9 and

BOXG4I6.H_4 <> BOXG7I9.H_7 and
BOXG4I6.H_4 <> BOXG7I9.H_8 and 
BOXG4I6.H_4 <> BOXG7I9.H_9 and

BOXG4I6.H_5 <> BOXG7I9.H_7 and
BOXG4I6.H_5 <> BOXG7I9.H_8 and 
BOXG4I6.H_5 <> BOXG7I9.H_9 and

BOXG4I6.H_6 <> BOXG7I9.H_7 and
BOXG4I6.H_6 <> BOXG7I9.H_8 and 
BOXG4I6.H_6 <> BOXG7I9.H_9 and

//COLUMN I
BOXG1I3.I_1 <> BOXG4I6.I_4 and
BOXG1I3.I_1 <> BOXG4I6.I_5 and
BOXG1I3.I_1 <> BOXG4I6.I_6 and
BOXG1I3.I_1 <> BOXG7I9.I_7 and
BOXG1I3.I_1 <> BOXG7I9.I_8 and 
BOXG1I3.I_1 <> BOXG7I9.I_9 and

BOXG1I3.I_2 <> BOXG4I6.I_4 and
BOXG1I3.I_2 <> BOXG4I6.I_5 and
BOXG1I3.I_2 <> BOXG4I6.I_6 and
BOXG1I3.I_2 <> BOXG7I9.I_7 and
BOXG1I3.I_2 <> BOXG7I9.I_8 and 
BOXG1I3.I_2 <> BOXG7I9.I_9 and

BOXG1I3.I_3 <> BOXG4I6.I_4 and
BOXG1I3.I_3 <> BOXG4I6.I_5 and
BOXG1I3.I_3 <> BOXG4I6.I_6 and
BOXG1I3.I_3 <> BOXG7I9.I_7 and
BOXG1I3.I_3 <> BOXG7I9.I_8 and 
BOXG1I3.I_3 <> BOXG7I9.I_9 and

BOXG4I6.I_4 <> BOXG7I9.I_7 and
BOXG4I6.I_4 <> BOXG7I9.I_8 and 
BOXG4I6.I_4 <> BOXG7I9.I_9 and

BOXG4I6.I_5 <> BOXG7I9.I_7 and
BOXG4I6.I_5 <> BOXG7I9.I_8 and 
BOXG4I6.I_5 <> BOXG7I9.I_9 and

BOXG4I6.I_6 <> BOXG7I9.I_7 and
BOXG4I6.I_6 <> BOXG7I9.I_8 and 
BOXG4I6.I_6 <> BOXG7I9.I_9 and

//ROW 1
BOXA1C3.A_1 <> BOXD1F3.D_1 and
BOXA1C3.A_1 <> BOXD1F3.E_1 and
BOXA1C3.A_1 <> BOXD1F3.F_1 and
BOXA1C3.A_1 <> BOXG1I3.G_1 and
BOXA1C3.A_1 <> BOXG1I3.H_1 and 
BOXA1C3.A_1 <> BOXG1I3.I_1 and

BOXA1C3.B_1 <> BOXD1F3.D_1 and
BOXA1C3.B_1 <> BOXD1F3.E_1 and
BOXA1C3.B_1 <> BOXD1F3.F_1 and
BOXA1C3.B_1 <> BOXG1I3.G_1 and
BOXA1C3.B_1 <> BOXG1I3.H_1 and 
BOXA1C3.B_1 <> BOXG1I3.I_1 and

BOXA1C3.C_1 <> BOXD1F3.D_1 and
BOXA1C3.C_1 <> BOXD1F3.E_1 and
BOXA1C3.C_1 <> BOXD1F3.F_1 and
BOXA1C3.C_1 <> BOXG1I3.G_1 and
BOXA1C3.C_1 <> BOXG1I3.H_1 and 
BOXA1C3.C_1 <> BOXG1I3.I_1 and

BOXD1F3.D_1 <> BOXG1I3.G_1 and
BOXD1F3.D_1 <> BOXG1I3.H_1 and
BOXD1F3.D_1 <> BOXG1I3.I_1 and

BOXD1F3.E_1 <> BOXG1I3.G_1 and
BOXD1F3.E_1 <> BOXG1I3.H_1 and
BOXD1F3.E_1 <> BOXG1I3.I_1 and

BOXD1F3.F_1 <> BOXG1I3.G_1 and
BOXD1F3.F_1 <> BOXG1I3.H_1 and
BOXD1F3.F_1 <> BOXG1I3.I_1 and

//ROW 2 
BOXA1C3.A_2 <> BOXD1F3.D_2 and
BOXA1C3.A_2 <> BOXD1F3.E_2 and
BOXA1C3.A_2 <> BOXD1F3.F_2 and
BOXA1C3.A_2 <> BOXG1I3.G_2 and
BOXA1C3.A_2 <> BOXG1I3.H_2 and 
BOXA1C3.A_2 <> BOXG1I3.I_2 and

BOXA1C3.B_2 <> BOXD1F3.D_2 and
BOXA1C3.B_2 <> BOXD1F3.E_2 and
BOXA1C3.B_2 <> BOXD1F3.F_2 and
BOXA1C3.B_2 <> BOXG1I3.G_2 and
BOXA1C3.B_2 <> BOXG1I3.H_2 and 
BOXA1C3.B_2 <> BOXG1I3.I_2 and

BOXA1C3.C_2 <> BOXD1F3.D_2 and
BOXA1C3.C_2 <> BOXD1F3.E_2 and
BOXA1C3.C_2 <> BOXD1F3.F_2 and
BOXA1C3.C_2 <> BOXG1I3.G_2 and
BOXA1C3.C_2 <> BOXG1I3.H_2 and 
BOXA1C3.C_2 <> BOXG1I3.I_2 and

BOXD1F3.D_2 <> BOXG1I3.G_2 and
BOXD1F3.D_2 <> BOXG1I3.H_2 and
BOXD1F3.D_2 <> BOXG1I3.I_2 and

BOXD1F3.E_2 <> BOXG1I3.G_2 and
BOXD1F3.E_2 <> BOXG1I3.H_2 and
BOXD1F3.E_2 <> BOXG1I3.I_2 and

BOXD1F3.F_2 <> BOXG1I3.G_2 and
BOXD1F3.F_2 <> BOXG1I3.H_2 and
BOXD1F3.F_2 <> BOXG1I3.I_2 and

//ROW 3
BOXA1C3.A_3 <> BOXD1F3.D_3 and
BOXA1C3.A_3 <> BOXD1F3.E_3 and
BOXA1C3.A_3 <> BOXD1F3.F_3 and
BOXA1C3.A_3 <> BOXG1I3.G_3 and
BOXA1C3.A_3 <> BOXG1I3.H_3 and 
BOXA1C3.A_3 <> BOXG1I3.I_3 and

BOXA1C3.B_3 <> BOXD1F3.D_3 and
BOXA1C3.B_3 <> BOXD1F3.E_3 and
BOXA1C3.B_3 <> BOXD1F3.F_3 and
BOXA1C3.B_3 <> BOXG1I3.G_3 and
BOXA1C3.B_3 <> BOXG1I3.H_3 and 
BOXA1C3.B_3 <> BOXG1I3.I_3 and

BOXA1C3.C_3 <> BOXD1F3.D_3 and
BOXA1C3.C_3 <> BOXD1F3.E_3 and
BOXA1C3.C_3 <> BOXD1F3.F_3 and
BOXA1C3.C_3 <> BOXG1I3.G_3 and
BOXA1C3.C_3 <> BOXG1I3.H_3 and 
BOXA1C3.C_3 <> BOXG1I3.I_3 and

BOXD1F3.D_3 <> BOXG1I3.G_3 and
BOXD1F3.D_3 <> BOXG1I3.H_3 and
BOXD1F3.D_3 <> BOXG1I3.I_3 and

BOXD1F3.E_3 <> BOXG1I3.G_3 and
BOXD1F3.E_3 <> BOXG1I3.H_3 and
BOXD1F3.E_3 <> BOXG1I3.I_3 and

BOXD1F3.F_3 <> BOXG1I3.G_3 and
BOXD1F3.F_3 <> BOXG1I3.H_3 and
BOXD1F3.F_3 <> BOXG1I3.I_3 and

//ROW 4
BOXA4C6.A_4 <> BOXD4F6.D_4 and
BOXA4C6.A_4 <> BOXD4F6.E_4 and
BOXA4C6.A_4 <> BOXD4F6.F_4 and
BOXA4C6.A_4 <> BOXG4I6.G_4 and
BOXA4C6.A_4 <> BOXG4I6.H_4 and 
BOXA4C6.A_4 <> BOXG4I6.I_4 and

BOXA4C6.B_4 <> BOXD4F6.D_4 and
BOXA4C6.B_4 <> BOXD4F6.E_4 and
BOXA4C6.B_4 <> BOXD4F6.F_4 and
BOXA4C6.B_4 <> BOXG4I6.G_4 and
BOXA4C6.B_4 <> BOXG4I6.H_4 and 
BOXA4C6.B_4 <> BOXG4I6.I_4 and

BOXA4C6.C_4 <> BOXD4F6.D_4 and
BOXA4C6.C_4 <> BOXD4F6.E_4 and
BOXA4C6.C_4 <> BOXD4F6.F_4 and
BOXA4C6.C_4 <> BOXG4I6.G_4 and
BOXA4C6.C_4 <> BOXG4I6.H_4 and 
BOXA4C6.C_4 <> BOXG4I6.I_4 and

BOXD4F6.D_4 <> BOXG4I6.G_4 and
BOXD4F6.D_4 <> BOXG4I6.H_4 and
BOXD4F6.D_4 <> BOXG4I6.I_4 and

BOXD4F6.E_4 <> BOXG4I6.G_4 and
BOXD4F6.E_4 <> BOXG4I6.H_4 and
BOXD4F6.E_4 <> BOXG4I6.I_4 and

BOXD4F6.F_4 <> BOXG4I6.G_4 and
BOXD4F6.F_4 <> BOXG4I6.H_4 and
BOXD4F6.F_4 <> BOXG4I6.I_4 and

//ROW 5
BOXA4C6.A_5 <> BOXD4F6.D_5 and
BOXA4C6.A_5 <> BOXD4F6.E_5 and
BOXA4C6.A_5 <> BOXD4F6.F_5 and
BOXA4C6.A_5 <> BOXG4I6.G_5 and
BOXA4C6.A_5 <> BOXG4I6.H_5 and 
BOXA4C6.A_5 <> BOXG4I6.I_5 and

BOXA4C6.B_5 <> BOXD4F6.D_5 and
BOXA4C6.B_5 <> BOXD4F6.E_5 and
BOXA4C6.B_5 <> BOXD4F6.F_5 and
BOXA4C6.B_5 <> BOXG4I6.G_5 and
BOXA4C6.B_5 <> BOXG4I6.H_5 and 
BOXA4C6.B_5 <> BOXG4I6.I_5 and

BOXA4C6.C_5 <> BOXD4F6.D_5 and
BOXA4C6.C_5 <> BOXD4F6.E_5 and
BOXA4C6.C_5 <> BOXD4F6.F_5 and
BOXA4C6.C_5 <> BOXG4I6.G_5 and
BOXA4C6.C_5 <> BOXG4I6.H_5 and 
BOXA4C6.C_5 <> BOXG4I6.I_5 and

BOXD4F6.D_5 <> BOXG4I6.G_5 and
BOXD4F6.D_5 <> BOXG4I6.H_5 and
BOXD4F6.D_5 <> BOXG4I6.I_5 and

BOXD4F6.E_5 <> BOXG4I6.G_5 and
BOXD4F6.E_5 <> BOXG4I6.H_5 and
BOXD4F6.E_5 <> BOXG4I6.I_5 and

BOXD4F6.F_5 <> BOXG4I6.G_5 and
BOXD4F6.F_5 <> BOXG4I6.H_5 and
BOXD4F6.F_5 <> BOXG4I6.I_5 and

//ROW 6
BOXA4C6.A_6 <> BOXD4F6.D_6 and
BOXA4C6.A_6 <> BOXD4F6.E_6 and
BOXA4C6.A_6 <> BOXD4F6.F_6 and
BOXA4C6.A_6 <> BOXG4I6.G_6 and
BOXA4C6.A_6 <> BOXG4I6.H_6 and 
BOXA4C6.A_6 <> BOXG4I6.I_6 and

BOXA4C6.B_6 <> BOXD4F6.D_6 and
BOXA4C6.B_6 <> BOXD4F6.E_6 and
BOXA4C6.B_6 <> BOXD4F6.F_6 and
BOXA4C6.B_6 <> BOXG4I6.G_6 and
BOXA4C6.B_6 <> BOXG4I6.H_6 and 
BOXA4C6.B_6 <> BOXG4I6.I_6 and

BOXA4C6.C_6 <> BOXD4F6.D_6 and
BOXA4C6.C_6 <> BOXD4F6.E_6 and
BOXA4C6.C_6 <> BOXD4F6.F_6 and
BOXA4C6.C_6 <> BOXG4I6.G_6 and
BOXA4C6.C_6 <> BOXG4I6.H_6 and 
BOXA4C6.C_6 <> BOXG4I6.I_6 and

BOXD4F6.D_6 <> BOXG4I6.G_6 and
BOXD4F6.D_6 <> BOXG4I6.H_6 and
BOXD4F6.D_6 <> BOXG4I6.I_6 and

BOXD4F6.E_6 <> BOXG4I6.G_6 and
BOXD4F6.E_6 <> BOXG4I6.H_6 and
BOXD4F6.E_6 <> BOXG4I6.I_6 and

BOXD4F6.F_6 <> BOXG4I6.G_6 and
BOXD4F6.F_6 <> BOXG4I6.H_6 and
BOXD4F6.F_6 <> BOXG4I6.I_6 and

//ROW 7
BOXA7C9.A_7 <> BOXD7F9.D_7 and
BOXA7C9.A_7 <> BOXD7F9.E_7 and
BOXA7C9.A_7 <> BOXD7F9.F_7 and
BOXA7C9.A_7 <> BOXG7I9.G_7 and
BOXA7C9.A_7 <> BOXG7I9.H_7 and 
BOXA7C9.A_7 <> BOXG7I9.I_7 and

BOXA7C9.B_7 <> BOXD7F9.D_7 and
BOXA7C9.B_7 <> BOXD7F9.E_7 and
BOXA7C9.B_7 <> BOXD7F9.F_7 and
BOXA7C9.B_7 <> BOXG7I9.G_7 and
BOXA7C9.B_7 <> BOXG7I9.H_7 and 
BOXA7C9.B_7 <> BOXG7I9.I_7 and

BOXA7C9.C_7 <> BOXD7F9.D_7 and
BOXA7C9.C_7 <> BOXD7F9.E_7 and
BOXA7C9.C_7 <> BOXD7F9.F_7 and
BOXA7C9.C_7 <> BOXG7I9.G_7 and
BOXA7C9.C_7 <> BOXG7I9.H_7 and 
BOXA7C9.C_7 <> BOXG7I9.I_7 and

BOXD7F9.D_7 <> BOXG7I9.G_7 and
BOXD7F9.D_7 <> BOXG7I9.H_7 and
BOXD7F9.D_7 <> BOXG7I9.I_7 and

BOXD7F9.E_7 <> BOXG7I9.G_7 and
BOXD7F9.E_7 <> BOXG7I9.H_7 and
BOXD7F9.E_7 <> BOXG7I9.I_7 and

BOXD7F9.F_7 <> BOXG7I9.G_7 and
BOXD7F9.F_7 <> BOXG7I9.H_7 and
BOXD7F9.F_7 <> BOXG7I9.I_7 and

//ROW 8
BOXA7C9.A_8 <> BOXD7F9.D_8 and
BOXA7C9.A_8 <> BOXD7F9.E_8 and
BOXA7C9.A_8 <> BOXD7F9.F_8 and
BOXA7C9.A_8 <> BOXG7I9.G_8 and
BOXA7C9.A_8 <> BOXG7I9.H_8 and 
BOXA7C9.A_8 <> BOXG7I9.I_8 and

BOXA7C9.B_8 <> BOXD7F9.D_8 and
BOXA7C9.B_8 <> BOXD7F9.E_8 and
BOXA7C9.B_8 <> BOXD7F9.F_8 and
BOXA7C9.B_8 <> BOXG7I9.G_8 and
BOXA7C9.B_8 <> BOXG7I9.H_8 and 
BOXA7C9.B_8 <> BOXG7I9.I_8 and

BOXA7C9.C_8 <> BOXD7F9.D_8 and
BOXA7C9.C_8 <> BOXD7F9.E_8 and
BOXA7C9.C_8 <> BOXD7F9.F_8 and
BOXA7C9.C_8 <> BOXG7I9.G_8 and
BOXA7C9.C_8 <> BOXG7I9.H_8 and 
BOXA7C9.C_8 <> BOXG7I9.I_8 and

BOXD7F9.D_8 <> BOXG7I9.G_8 and
BOXD7F9.D_8 <> BOXG7I9.H_8 and
BOXD7F9.D_8 <> BOXG7I9.I_8 and

BOXD7F9.E_8 <> BOXG7I9.G_8 and
BOXD7F9.E_8 <> BOXG7I9.H_8 and
BOXD7F9.E_8 <> BOXG7I9.I_8 and

BOXD7F9.F_8 <> BOXG7I9.G_8 and
BOXD7F9.F_8 <> BOXG7I9.H_8 and
BOXD7F9.F_8 <> BOXG7I9.I_8 and

//ROW 9
BOXA7C9.A_9 <> BOXD7F9.D_9 and
BOXA7C9.A_9 <> BOXD7F9.E_9 and
BOXA7C9.A_9 <> BOXD7F9.F_9 and
BOXA7C9.A_9 <> BOXG7I9.G_9 and
BOXA7C9.A_9 <> BOXG7I9.H_9 and 
BOXA7C9.A_9 <> BOXG7I9.I_9 and

BOXA7C9.B_9 <> BOXD7F9.D_9 and
BOXA7C9.B_9 <> BOXD7F9.E_9 and
BOXA7C9.B_9 <> BOXD7F9.F_9 and
BOXA7C9.B_9 <> BOXG7I9.G_9 and
BOXA7C9.B_9 <> BOXG7I9.H_9 and 
BOXA7C9.B_9 <> BOXG7I9.I_9 and

BOXA7C9.C_9 <> BOXD7F9.D_9 and
BOXA7C9.C_9 <> BOXD7F9.E_9 and
BOXA7C9.C_9 <> BOXD7F9.F_9 and
BOXA7C9.C_9 <> BOXG7I9.G_9 and
BOXA7C9.C_9 <> BOXG7I9.H_9 and 
BOXA7C9.C_9 <> BOXG7I9.I_9 and

BOXD7F9.D_9 <> BOXG7I9.G_9 and
BOXD7F9.D_9 <> BOXG7I9.H_9 and
BOXD7F9.D_9 <> BOXG7I9.I_9 and

BOXD7F9.E_9 <> BOXG7I9.G_9 and
BOXD7F9.E_9 <> BOXG7I9.H_9 and
BOXD7F9.E_9 <> BOXG7I9.I_9 and

BOXD7F9.F_9 <> BOXG7I9.G_9 and
BOXD7F9.F_9 <> BOXG7I9.H_9 and
BOXD7F9.F_9 <> BOXG7I9.I_9
