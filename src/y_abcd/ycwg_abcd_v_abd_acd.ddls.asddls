@AbapCatalog.sqlViewName: 'YCWGV_ABDACD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABD_ACD'
define view YCWG_ABCD_V_ABD_ACD as 
select from YCWG_ABCD_V_ABD as abd
inner join YCWG_ABCD_V_ACD as acd on acd.A = abd.A
                                 and acd.D = abd.D
{
    acd.A as a,
    abd.B as b,
    acd.C as c,
    acd.D as d
    
}
