@AbapCatalog.sqlViewName: 'YV_VALN_EXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'valn extended'
define view YCWGI_VALN_EXT as 
select from YCWGI_VALN_CABN as front
inner join YCWGI_VALN_CABN as rear
    on front.vtint = rear.vtint
    and front.slnid = rear.slnid
{
    key front.vtint,
    key front.slnid,
    front.atinn as front_atinn,
    rear.atinn as rear_atinn,
    front.atnam as front_atnam,
    rear.atnam as rear_atnam
} where front.atinn <> rear.atinn
