@AbapCatalog.sqlViewName: 'YDDL_VALN03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Range value converted to DEC'
define view YCWGI_VALN03_DEC as
select from cuvtab_valn
{  key vtint,
    key slnid,
    key atinn,
    val_code,
    fltp_to_dec( val_from as  abap.dec(8,0) ) as value_from_dec,
    fltp_to_dec( val_to as  abap.dec(8,0) )  as value_to_dec
} where val_code = '3'
