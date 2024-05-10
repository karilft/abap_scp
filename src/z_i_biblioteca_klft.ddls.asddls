@AbapCatalog.sqlViewName: 'ZV_BIBLIOTECA_KL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biblioteca'
@Metadata.allowExtensions: true
define view Z_I_BIBLIOTECA_KLFT
  as select from    Z_B_LIBROS_KLFT as Libros
    inner join      Z_B_CATEGO_KLFT as Categorias on Categorias.BiCateg = Libros.BiCateg
    left outer join z_b_ventas_klft as Ventas     on Ventas.IdLibro = Libros.IdLibro
  association [0..*] to Z_B_CLIENTES_KLF as _Clientes on _Clientes.IDLibro = Libros.IdLibro
{
  key Libros.IdLibro,
      Libros.BiCateg,
      Categorias.Descripcion,
      Libros.Titulo,
      Libros.Autor,
      Libros.Editorial,
      Libros.Idioma,
      Libros.Paginas,
      Libros.Precio,
      Libros.Moneda,
      Libros.Formato,
      Libros.Url,
      Ventas.CantidadVendida,
      //       0 neutral grey
      //       1 negative red
      //       2 critical yellow
      //       3 positive green
      case
      when Ventas.CantidadVendida <= 0 then 0
      when Ventas.CantidadVendida between 1 and 2 then 3
      when Ventas.CantidadVendida between 3 and 5 then 2
      when Ventas.CantidadVendida > 5 then 1
      else 0
      end as Semasforo,
      ' ' as Criticidad,
      /*associations*/
      _Clientes
}
