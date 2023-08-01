@AbapCatalog.sqlViewName: 'YCWGV_ABD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ABD'
define view YCWG_ABCD_V_ABD as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    max( case when atinn = '0000001006' then valc end ) as A,
    max( case when atinn = '0000001007' then valc end ) as B,
    max( case when atinn = '0000001009' then valc end ) as D
} where vtint = '0000000039'    //VT_CWG_C
  group by vtint, slnid
