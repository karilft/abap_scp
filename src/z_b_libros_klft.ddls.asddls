@AbapCatalog.sqlViewName: 'ZV_LIBROS_KLFT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
define view Z_B_LIBROS_KLFT as select from ztb_libros_klft as _Libros
                                
{
    key _Libros.id_libro as IdLibro,
    key _Libros.bi_categ as BiCateg,
    _Libros.titulo as Titulo,
    _Libros.autor as Autor,
    _Libros.editorial as Editorial,
    _Libros.idioma as Idioma,
    _Libros.paginas as Paginas,
    _Libros.precio as Precio,
    _Libros.moneda as Moneda,
    _Libros.formato as Formato,
    _Libros.url as Url 
}


