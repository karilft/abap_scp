@AbapCatalog.sqlViewName: 'ZV_CLIENTES_KLF'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
define view Z_B_CLIENTES_KLF as select from  ztb_clnts_lib_kl as Clnts_Lib 
  inner join ztb_clientes_klf as Clientes on Clientes.id_cliente = Clnts_Lib.id_cliente
{
 key Clnts_Lib.id_libro as IDLibro, 
 key Clientes.id_cliente as IdCliente,
 key Clientes.tipo_acceso as TipoAcceso,
 Clientes.nombre as Nombre,
 Clientes.apellidos as Apellidos,
 Clientes.email as Email,
 Clientes.url as Url
}
