@AbapCatalog.sqlViewName: 'YV_VALCCOMPMYR2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPONENT AND MODELYEAR'
define view YCWGI_VALC_COMP_MODYEAR_EXT as 
select from YCWG_VALC_EXT
inner join cuvtab_valc on YCWG_VALC_EXT.vtint = cuvtab_valc.vtint
                       and YCWG_VALC_EXT.slnid = cuvtab_valc.slnid
{
    key YCWG_VALC_EXT.vtint as vtint,
    key YCWG_VALC_EXT.slnid as slnid,
    YCWG_VALC_EXT.vtnam as vtnam,
    cast(max( case when cuvtab_valc.atinn = YCWG_VALC_EXT.vcgroup_atinn then cuvtab_valc.valc end ) as abap.char(15)) as vcgroup,
    cast(max( case when cuvtab_valc.atinn = YCWG_VALC_EXT.modelyear_atinn then cuvtab_valc.valc end ) as abap.char(3)) as modelyear,
  
    --YCWG_VALC_EXT.vcgroup_atinn as vcgroup_atinn,
    --YCWG_VALC_EXT.modelyear_atinn as modelyear_atinn,
    YCWG_VALC_EXT.vcgroup_atnam as vcgroup_atnam,
    YCWG_VALC_EXT.modelyear_atnam as modelyear_atnam
    
}
    group by YCWG_VALC_EXT.vtint, YCWG_VALC_EXT.slnid, YCWG_VALC_EXT.vtnam, YCWG_VALC_EXT.vcgroup_atinn, YCWG_VALC_EXT.modelyear_atinn, YCWG_VALC_EXT.vcgroup_atnam, YCWG_VALC_EXT.modelyear_atnam
  
