@AbapCatalog.sqlViewName: 'YCWGV_ABDBCD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABD_BCD'
define view YCWG_ABCD_V_ABD_BCD as 
select from YCWG_ABCD_V_ABD as abd
inner join YCWG_ABCD_V_BCD as bcd on bcd.B = abd.B
                                 and bcd.D = abd.D
{
    abd.A as a,
    bcd.B as b,
    bcd.C as c,
    bcd.D as d
}
