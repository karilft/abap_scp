
CLASS zcl_load_data_klft DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_load_data_klft IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_categ_kl TYPE TABLE OF ztb_acc_categ_kl,
          lt_catego_klft  TYPE TABLE OF ztb_catego_klft,
          lt_clientes_klf TYPE TABLE OF ztb_clientes_klf,
          lt_clnts_lib_kl TYPE TABLE OF ztb_clnts_lib_kl,
          lt_libros_klft  TYPE TABLE OF ztb_libros_klft.

  lt_acc_categ_kl = VALUE #( ( bi_categ = 'A' tipo_acceso = '1' )
                           ( bi_categ = 'B' tipo_acceso = '2' )
                           ( bi_categ = 'C' tipo_acceso = '3' ) ).

  DELETE FROM ztb_acc_categ_kl.
  INSERT ztb_acc_categ_kl FROM TABLE @lt_acc_categ_kl.

  SELECT * FROM ztb_acc_categ_kl INTO TABLE @lt_acc_categ_kl.
  out->write( sy-dbcnt ).
  out->write( 'ZTB_ACC_CATEG_KL poblada satisfactoriamente!' ).

  lt_catego_klft = VALUE #( ( bi_categ = 'I' descripcion = 'Infantil' )
  ( bi_categ = 'E' descripcion = 'Economia' )
  ( bi_categ = 'D' descripcion = 'Drama' )
  ( bi_categ = 'S' descripcion = 'Suspenso' )  ).

  DELETE FROM ztb_catego_klft.
  INSERT ztb_catego_klft FROM TABLE @lt_catego_klft.

  SELECT * from ztb_catego_klft into table @lt_catego_klft.
  out->write( sy-dbcnt ).
  out->write( 'ZTB_CATEGO_KLFT poblada satisfactoriamente!' ).

  lt_clientes_klf = value #( ( id_cliente = '1' tipo_acceso = '1' nombre = 'Juan Fernando' apellidos = 'Quinteros' email = 'jfq@gmail.com' url = '' )
( id_cliente = '2' tipo_acceso = '2' nombre = 'Santiago' apellidos = 'Solari' email = 'ssolari@gmail.com' url = '' )
( id_cliente = '3' tipo_acceso = '3' nombre = 'Bruno' apellidos = 'Zuculini' email = 'zuculinib@gmail.com' url = '' )  ).

  DELETE FROM ztb_clientes_klf.
  INSERT ztb_clientes_klf FROM TABLE @lt_clientes_klf.

  SELECT * from ztb_clientes_klf into table @lt_clientes_klf.
  out->write( sy-dbcnt ).
  out->write( 'ZTB_CLIENTES_KLF poblada satisfactoriamente!' ).

  lt_libros_klft = value #( ( id_libro = 'N0001' bi_categ = 'I'
                              titulo = 'La Vaca Lola' autor = 'Escritor N0001'
                              editorial = 'Edinfantil' idioma = 'S'
                              paginas = '50'  precio = '100' moneda = 'ARS'
                              formato = 'D'  url = '' )
                               ( id_libro = 'N0002' bi_categ = 'S'
                              titulo = 'Que suspenso' autor = 'Escritor N0002'
                              editorial = 'Edisuspenso' idioma = 'S'
                              paginas = '180'  precio = '990' moneda = 'ARS'
                              formato = 'D'  url = '' )
                               ( id_libro = 'N0003' bi_categ = 'D'
                              titulo = 'Dramatico' autor = 'Escritor N0003'
                              editorial = 'Edidrama' idioma = 'S'
                              paginas = '160'  precio = '800' moneda = 'ARS'
                              formato = 'D'  url = '' )
                               ( id_libro = 'N0004' bi_categ = 'E'
                              titulo = 'Economia basica' autor = 'AutorN0004'
                              editorial = 'Edieco' idioma = 'S'
                              paginas = '200'  precio = '999' moneda = 'ARS'
                              formato = 'D'  url = '' )
                               ( id_libro = 'N0005' bi_categ = 'E'
                              titulo = 'Economia avanzada' autor = 'AutorN0004'
                              editorial = 'Edieco' idioma = 'S'
                              paginas = '200'  precio = '999' moneda = 'ARS'
                              formato = 'D'  url = '' ) ) .

  DELETE FROM ztb_libros_klft.
  INSERT ztb_libros_klft FROM TABLE @lt_libros_klft.

  SELECT * from ztb_libros_klft into table @lt_libros_klft.
  out->write( sy-dbcnt ).
  out->write( 'ZTB_LIBROS_KLFT poblada satisfactoriamente!' ).

  lt_clnts_lib_kl = value #( ( id_cliente = '1' id_libro = 'N0001' )
  ( id_cliente = '2' id_libro = 'N0001' )
  ( id_cliente = '3' id_libro = 'N0001' )
  ( id_cliente = '1' id_libro = 'N0002' )
  ( id_cliente = '2' id_libro = 'N0002' )
  ( id_cliente = '3' id_libro = 'N0002' )
  ( id_cliente = '1' id_libro = 'N0003' )
  ( id_cliente = '2' id_libro = 'N0003' ) ).

  DELETE FROM ztb_clnts_lib_kl.
  INSERT ztb_clnts_lib_kl FROM TABLE @lt_clnts_lib_kl.

  SELECT * from ztb_clnts_lib_kl into table @lt_clnts_lib_kl.
  out->write( sy-dbcnt ).
  out->write( 'ZTB_CLNTS_LIB_KL poblada satisfactoriamente!' ).

  ENDMETHOD.
ENDCLASS.

