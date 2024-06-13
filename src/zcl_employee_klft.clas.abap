CLASS zcl_employee_klft DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_employee_klft IMPLEMENTATION.


  METHOD if_rap_query_provider~select.

    TRY.

        DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
        DATA(lv_skip) = io_request->get_paging( )->get_offset( ).

        SELECT * FROM zemployee_klft
        ORDER BY id ASCENDING
        INTO TABLE @DATA(lt_employee)
        OFFSET @lv_skip
        UP TO @lv_top ROWS.

        IF sy-subrc EQ 0.
          io_response->set_data( lt_employee ).
        ENDIF.

      CATCH cx_rap_query_response_set_twic INTO DATA(ox_exc).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
