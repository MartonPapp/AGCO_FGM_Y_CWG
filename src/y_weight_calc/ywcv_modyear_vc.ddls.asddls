@AbapCatalog.sqlViewName: 'YWCV_MDYRVC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'MODYEAR VCGROUPS'
define view YWCV_MODYEAR_VC as 
select from cuvtab_valc
{
    key mandt,
    key vtint,
    key slnid,
    cast(max( case when cuvtab_valc.atinn = '0000001005' then cuvtab_valc.valc end ) as abap.char(3)) as modelyear,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_001' then 'X' end ) as abap.char(1)) as CWG_COMP_001,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_002' then 'X' end ) as abap.char(1)) as CWG_COMP_002,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_003' then 'X' end ) as abap.char(1)) as CWG_COMP_003,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_004' then 'X' end ) as abap.char(1)) as CWG_COMP_004,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_005' then 'X' end ) as abap.char(1)) as CWG_COMP_005,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_006' then 'X' end ) as abap.char(1)) as CWG_COMP_006,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_007' then 'X' end ) as abap.char(1)) as CWG_COMP_007,
    cast(max( case when cuvtab_valc.valc = 'CWG_COMP_008' then 'X' end ) as abap.char(1)) as CWG_COMP_008
} where vtint = '0000000034'
  group by vtint, slnid
