@AbapCatalog.sqlViewName: 'YV_VALC_EXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Extended VALC'
define view YCWG_VALC_EXT as 
select from YCWGI_VALC_CABN as vc
inner join YCWGI_VALC_CABN as modyear
            on vc.vtint = modyear.vtint
            and vc.slnid = modyear.slnid
inner join cuvtab
            on cuvtab.vtint = vc.vtint
{   
    
    key vc.vtint,
    key vc.slnid,
    cuvtab.vtnam,
    vc.atinn as vcgroup_atinn,
    modyear.atinn as modelyear_atinn,
    vc.atnam as vcgroup_atnam,
    modyear.atnam as modelyear_atnam
} where vc.atinn <> modyear.atinn
