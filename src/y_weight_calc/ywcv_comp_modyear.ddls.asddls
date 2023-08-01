@AbapCatalog.sqlViewName: 'YWCV_CMPMDYR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPONENTS MODELYEAR'
define view YWCV_COMP_MODYEAR as 
select from cuvtab_valc
{
    key mandt,
    key vtint,
    key slnid,
    cast(max( case when cuvtab_valc.atinn = '0000000987' then cuvtab_valc.valc end ) as abap.char(15)) as vcgroup,
    cast(max( case when cuvtab_valc.atinn = '0000001005' then cuvtab_valc.valc end ) as abap.char(3)) as modelyear
} where vtint = '0000000034'
  group by vtint, slnid
