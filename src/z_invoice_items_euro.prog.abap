*&---------------------------------------------------------------------*
*& Report z_invoice_items_euro
*&---------------------------------------------------------------------*
*& Demo Program by AGJ on 04-02-2022
*&---------------------------------------------------------------------*
REPORT Z_INVOICE_ITEMS_EURO.
CLASS LCL_MAIN DEFINITION CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS CREATE
      RETURNING
        VALUE(R_RESULT) TYPE REF TO LCL_MAIN.
    METHODS RUN.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS LCL_MAIN IMPLEMENTATION.

  METHOD CREATE.

    R_RESULT = NEW #( ).

  ENDMETHOD.

  METHOD RUN.
    WRITE: 'Welcome, ', sy-uname, / 'Today''s date is ', sy-datum.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  LCL_MAIN=>CREATE( )->RUN( ).
