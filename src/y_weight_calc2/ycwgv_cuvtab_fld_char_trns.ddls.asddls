@AbapCatalog.sqlViewName: 'YV_FLDCHARTRSPSD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CUVTAB_FLD transposed'
define view YCWGV_CUVTAB_FLD_CHAR_TRNS as 
select from ycwgv_cuvtabfld_cabn as comp
inner join ycwgv_cuvtabfld_cabn as modyear
    on modyear.vtint = comp.vtint
inner join YCWGV_MIN_POS_CHAR_CUVTABFLD as minpos
    on minpos.vtint = comp.vtint
    and minpos.vtpos = comp.vtpos
{
    key comp.vtint,
    comp.vtpos as comppos,
    modyear.vtpos as yearpos,
    comp.vtnam,
    comp.atinn as component_atinn,
    modyear.atinn as modelyear_atinn
    
} where comp.atfor = 'CHAR'
    and modyear.atfor = 'CHAR'
    and comp.atinn <> modyear.atinn
