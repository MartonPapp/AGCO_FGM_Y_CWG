@AbapCatalog.sqlViewName: 'YCWGV_BCD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BCD'
define view YCWG_ABCD_V_BCD as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    max( case when atinn = '0000001007' then valc end ) as B,
    max( case when atinn = '0000001008' then valc end ) as C,
    max( case when atinn = '0000001009' then valc end ) as D
} where vtint = '0000000037'    //VT_CWG_A
  group by vtint, slnid
