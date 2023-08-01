@AbapCatalog.sqlViewName: 'YCWGV_ABCBCD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABC BCD'
define view YCWG_ABCD_V_ABC_BCD as 
select from YCWG_ABCD_V_ABC  as abc
inner join YCWG_ABCD_V_BCD as bcd
                           on bcd.B = abc.B
                           and bcd.C = abc.C
{
    abc.A as a,
    abc.B as b,
    abc.C as c,
    bcd.D as d
}
