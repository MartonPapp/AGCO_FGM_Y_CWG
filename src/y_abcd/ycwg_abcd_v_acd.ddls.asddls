@AbapCatalog.sqlViewName: 'YCWGV_ACD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ACD'
define view YCWG_ABCD_V_ACD as 
select from cuvtab_valc
{
    key vtint,
    key slnid,
    max( case when atinn = '0000001006' then valc end ) as A,
    max( case when atinn = '0000001008' then valc end ) as C,
    max( case when atinn = '0000001009' then valc end ) as D
} where vtint = '0000000038'    //VT_CWG_B
  group by vtint, slnid
