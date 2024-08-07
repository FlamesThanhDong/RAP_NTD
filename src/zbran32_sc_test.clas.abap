"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd.zbran32_ui_c_delivery_out.v0001</em>
CLASS zbran32_sc_test DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_1,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_1,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int4,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of ZBRAN_32_C_DELIVERY_OUTTYP</p>
      BEGIN OF tys_value_controls_2,
        "! CREATED_AT_DATE
        created_at_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">ZBRAN32_C_DELIVERY_OUTType</p>
      BEGIN OF tys_zbran_32_c_delivery_outtyp,
        "! <em>Value Control Structure</em>
        value_controls        TYPE tys_value_controls_2,
        "! <em>Key property</em> docid
        docid                 TYPE sysuuid_x16,
        "! document_number
        document_number       TYPE c LENGTH 35,
        "! document_category
        document_category     TYPE c LENGTH 3,
        "! document_type
        document_type         TYPE c LENGTH 4,
        "! created_at_date
        created_at_date       TYPE datn,
        "! created_at_time
        created_at_time       TYPE timn,
        "! created_by
        created_by            TYPE c LENGTH 12,
        "! created_by_first_name
        created_by_first_name TYPE c LENGTH 40,
        "! created_by_last_name
        created_by_last_name  TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages          TYPE tyt_sap_message,
      END OF tys_zbran_32_c_delivery_outtyp,
      "! <p class="shorttext synchronized">List of ZBRAN32_C_DELIVERY_OUTType</p>
      tyt_zbran_32_c_delivery_outtyp TYPE STANDARD TABLE OF tys_zbran_32_c_delivery_outtyp WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! ZBRAN32_C_DELIVERY_OUT
        "! <br/> Collection of type 'ZBRAN32_C_DELIVERY_OUTType'
        zbran_32_c_delivery_out TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZBRAN_32_C_DELIVERY_OUT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      BEGIN OF gcs_bound_action,
        "! book_gi
        "! <em>bound against entity type</em> ZBRAN32_C_DELIVERY_OUTType
        book_gi TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BOOK_GI',
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for ZBRAN32_C_DELIVERY_OUTType</p>
        "! See also structure type {@link ..tys_zbran_32_c_delivery_outtyp}
        BEGIN OF zbran_32_c_delivery_outtyp,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zbran_32_c_delivery_outtyp,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ZBRAN32_C_DELIVERY_OUTType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zbran_32_c_delivery_outtyp RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define book_gi</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_book_gi RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZBRAN32_SC_TEST IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd.zbran32_ui_c_delivery_out.v0001' ).

    def_sap_message( ).
    def_zbran_32_c_delivery_outtyp( ).
    def_book_gi( ).

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_zbran_32_c_delivery_outtyp.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZBRAN_32_C_DELIVERY_OUTTYP'
                                    is_structure              = VALUE tys_zbran_32_c_delivery_outtyp( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ZBRAN32_C_DELIVERY_OUTType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'ZBRAN_32_C_DELIVERY_OUT' ).
    lo_entity_set->set_edm_name( 'ZBRAN32_C_DELIVERY_OUT' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCID' ).
    lo_primitive_property->set_edm_name( 'docid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'document_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'document_category' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'document_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_AT_DATE' ).
    lo_primitive_property->set_edm_name( 'created_at_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_AT_TIME' ).
    lo_primitive_property->set_edm_name( 'created_at_time' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'created_by' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_FIRST_NAME' ).
    lo_primitive_property->set_edm_name( 'created_by_first_name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_LAST_NAME' ).
    lo_primitive_property->set_edm_name( 'created_by_last_name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

  ENDMETHOD.


  METHOD def_book_gi.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'BOOK_GI' ).
    lo_action->set_edm_name( 'book_gi' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'ZBRAN_32_C_DELIVERY_OUTTYP' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'ZBRAN_32_C_DELIVERY_OUTTYP' ).

  ENDMETHOD.
ENDCLASS.
