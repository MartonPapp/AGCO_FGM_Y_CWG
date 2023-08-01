@AbapCatalog.sqlViewName: 'YV_FLDNUMTRSPSD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CUVTAB_FLD NUM chars transposed'
define view YCWGV_CUVTAB_FLD_NUM_TRNS as 
select from ycwgv_cuvtabfld_cabn as frontweight
inner join ycwgv_cuvtabfld_cabn as rearweight
    on rearweight.vtint = frontweight.vtint
inner join ycwgv_min_pos_num_cuvtabfld as minpos
    on minpos.vtint = frontweight.vtint
    and minpos.vtpos = frontweight.vtpos
{
    key frontweight.vtint,
    frontweight.vtpos as frontweightpos,
    --rearweight.vtpos as rearweightpos,
    frontweight.vtnam,
    frontweight.atinn as frontweight_atinn,
    rearweight.atinn as rearweight_atinn
    
} where frontweight.atfor = 'NUM'
    and rearweight.atfor = 'NUM'
    and frontweight.atinn <> rearweight.atinn
    
  
