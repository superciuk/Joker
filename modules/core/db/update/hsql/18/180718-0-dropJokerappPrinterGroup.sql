alter table JOKERAPP_PRINTER_GROUP rename to JOKERAPP_PRINTER_GROUP__UNUSED ;
alter table JOKERAPP_PRODUCT_ITEM drop constraint FK_JOKERAPP_PRODUCT_ITEM_PRINTER_GROUP ;
