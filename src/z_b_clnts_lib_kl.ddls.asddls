@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_KL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relación Clientes - Libros'
define view Z_B_CLNTS_LIB_KL as select from ztb_clnts_lib_kl
{
    key id_cliente as IdCliente,
    key id_libro as IdLibro
}
