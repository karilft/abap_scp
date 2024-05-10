@AbapCatalog.sqlViewName: 'ZV_ACC_CATEG_KL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categoria - Tipo de acceso'
define view Z_B_ACC_CATEG_KL as select from ztb_acc_categ_kl
{
  key bi_categ as BiCateg,
  key tipo_acceso as TipoAcceso
}
