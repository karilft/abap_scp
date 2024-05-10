@AbapCatalog.sqlViewName: 'ZV_VENTAS_KLFT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas por libro'
define view z_b_ventas_klft
  as select from ztb_libros_klft as _Libros
  association [0..*] to ztb_clnts_lib_kl as _Clnts_Lib on _Clnts_Lib.id_libro = _Libros.id_libro
{
  key _Libros.id_libro                       as IdLibro,
      count( distinct _Clnts_Lib.id_cliente ) as CantidadVendida
}
group by
  _Libros.id_libro
