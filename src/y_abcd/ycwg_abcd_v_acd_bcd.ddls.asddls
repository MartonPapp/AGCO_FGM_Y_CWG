@AbapCatalog.sqlViewName: 'YCWGV_ACDBCD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ACD_BCD'
define view YCWG_ABCD_V_ACD_BCD as 
select from YCWG_ABCD_V_ACD as acd
inner join YCWG_ABCD_V_BCD as bcd on bcd.C = acd.C
                                 and bcd.D = acd.D
{
    acd.A as a,
    bcd.B as b,
    bcd.C as c,
    bcd.D as d
}
