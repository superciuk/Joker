alter table JOKERAPP_ORDER_LINE add constraint FK_JOKERAPP_ORDER_LINE_ON_ORDER foreign key (ORDER_ID) references JOKERAPP_ORDER(ID);
alter table JOKERAPP_ORDER_LINE add constraint FK_JOKERAPP_ORDER_LINE_ON_PRODUCT_ITEM foreign key (PRODUCT_ITEM_ID) references JOKERAPP_PRODUCT_ITEM(ID);
create index IDX_JOKERAPP_ORDER_LINE_ON_ORDER on JOKERAPP_ORDER_LINE (ORDER_ID);
create index IDX_JOKERAPP_ORDER_LINE_ON_PRODUCT_ITEM on JOKERAPP_ORDER_LINE (PRODUCT_ITEM_ID);
