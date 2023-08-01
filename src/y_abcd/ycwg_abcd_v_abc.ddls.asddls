@AbapCatalog.sqlViewName: 'YCWGV_ABC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABC'
define view YCWG_ABCD_V_ABC as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    max( case when atinn = '0000001006' then valc end ) as A,
    max( case when atinn = '0000001007' then valc end ) as B,
    max( case when atinn = '0000001008' then valc end ) as C 
} where vtint = '0000000040'    //VT_CWG_D
  group by vtint, slnid
