@AbapCatalog.sqlViewName: 'YCWGV_ABCABD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABC_ABD'
define view YCWG_ABCD_V_ABC_ABD as 
select from YCWG_ABCD_V_ABC  as abc
inner join YCWG_ABCD_V_ABD as abd on  abd.A = abc.A
                                  and abd.B = abc.B
{
    abc.A as a,
    abc.B as b,
    abc.C as c,
    abd.D as d
    
}
