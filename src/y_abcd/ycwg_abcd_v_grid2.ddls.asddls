@AbapCatalog.sqlViewName: 'YCWGV_GRID2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GRID'
define view YCWG_ABCD_V_GRID2 as 
select from YCWG_ABCD_V_ABC_ABD as ABCABD
inner join YCWG_ABCD_V_ABC_BCD  as ABCBCD on ABCBCD.a = ABCABD.a
                                         and ABCBCD.b = ABCABD.b
                                         and ABCBCD.c = ABCABD.c
                                         and ABCBCD.d = ABCABD.d
inner join YCWG_ABCD_V_ABC_ACD as ABCACD on ABCACD.a = ABCABD.a
                                        and ABCACD.b = ABCABD.b
                                        and ABCACD.c = ABCABD.c
                                        and ABCACD.d = ABCABD.d
inner join YCWG_ABCD_V_ABD_ACD as ABDACD on ABDACD.a = ABCABD.a
                                        and ABDACD.b = ABCABD.b
                                        and ABDACD.c = ABCABD.c
                                        and ABDACD.d = ABCABD.d
inner join YCWG_ABCD_V_ABD_BCD as ABDBCD on ABDBCD.a = ABCABD.a
                                        and ABDBCD.b = ABCABD.b
                                        and ABDBCD.c = ABCABD.c
                                        and ABDBCD.d = ABCABD.d
inner join YCWG_ABCD_V_ACD_BCD as ACDBCD on ACDBCD.a = ABCABD.a
                                        and ACDBCD.b = ABCABD.b
                                        and ACDBCD.c = ABCABD.c
                                        and ACDBCD.d = ABCABD.d
{
    ABCBCD.a,
    ABCBCD.b,
    ABCBCD.c,
    ABCBCD.d
} 
