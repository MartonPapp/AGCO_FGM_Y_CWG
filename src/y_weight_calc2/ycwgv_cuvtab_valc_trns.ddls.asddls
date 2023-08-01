@AbapCatalog.sqlViewName: 'YV_VALCTRNSPSD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CUVTAB_VALC transposed'
define view YCWGV_CUVTAB_VALC_TRNS as 
select from cuvtab_valc as valc
inner join YCWGV_CUVTAB_FLD_CHAR_TRNS as fld
--inner join yv_cuvtabfldcabn as fld
    on fld.vtint = valc.vtint
--    and fld.atfor = 'CHAR'
{
    key valc.vtint,
    key valc.slnid,
    fld.vtnam,
    valc.atinn,
    fld.component_atinn,
    fld.modelyear_atinn,
    --fld.atinn as fldatinn,
    cast(max( case when valc.atinn = fld.component_atinn then valc.valc end ) as abap.char(15)) as component,
    cast(max( case when valc.atinn = fld.modelyear_atinn then valc.valc end ) as abap.char(15)) as modelyear
} group by valc.vtint, valc.slnid, fld.vtnam
  , valc.atinn
  --,fld.atinn
  , fld.component_atinn, fld.modelyear_atinn 
