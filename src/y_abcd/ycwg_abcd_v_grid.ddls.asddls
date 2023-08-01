@AbapCatalog.sqlViewName: 'YCWGV_GRID'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABCD GRID'
define view YCWG_ABCD_V_GRID as 
select from YCWG_ABCD_V_ABC  as abc
inner join YCWG_ABCD_V_ABD as abd on  abd.A = abc.A
                                  and abd.B = abc.B
{
    abc.A as a,
    abc.B as b,
    abc.C as c,
    abd.D as d
    
}
