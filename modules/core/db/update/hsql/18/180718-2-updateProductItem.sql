alter table JOKERAPP_PRODUCT_ITEM alter column PRINTER_GROUP_ID rename to PRINTER_GROUP_ID__UNUSED ;
drop index IDX_JOKERAPP_PRODUCT_ITEM_PRINTER_GROUP ;
