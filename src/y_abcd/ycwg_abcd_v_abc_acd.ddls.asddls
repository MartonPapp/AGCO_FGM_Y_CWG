@AbapCatalog.sqlViewName: 'YCWGV_ABCACD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABC_ACD'
define view YCWG_ABCD_V_ABC_ACD as 
select from YCWG_ABCD_V_ABC as abc
inner join  YCWG_ABCD_V_ACD as acd on  acd.A = abc.A
                                   and acd.C = abc.C
{
    abc.A as a,
    abc.B as b,
    abc.C as c,
    acd.D as d
}
