*&---------------------------------------------------------------------*
*& Report z_invoice_items_euro
*&---------------------------------------------------------------------*
*& Demo Program by AGJ on 04-02-2022
*&---------------------------------------------------------------------*
REPORT z_invoice_items_euro.
CLASS lcl_main DEFINITION CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS create
      RETURNING
        VALUE(r_result) TYPE REF TO lcl_main.
    METHODS run.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_main IMPLEMENTATION.

  METHOD create.

    r_result = NEW #( ).

  ENDMETHOD.

  METHOD run.
    DATA(num1) = 5.
    DATA(num2) = 10.
    DATA(num3) = num1 + num2.
    WRITE: 'Welcome, ', sy-uname, / 'Today''s date is ', sy-datum.
    WRITE: / '5 Plus 10 = ', num3.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  lcl_main=>create( )->run( ).
