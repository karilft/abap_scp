@AbapCatalog.sqlViewName: 'ZV_CATEGO_KLFT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view Z_B_CATEGO_KLFT as select from ztb_catego_klft
{
    key bi_categ as BiCateg,
    descripcion as Descripcion
}
