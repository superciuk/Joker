alter table JOKERAPP_ORDER add constraint FK_JOKERAPP_ORDER_ON_ORDER foreign key (ORDER_ID) references JOKERAPP_TABLE_ITEM(ID);
create index IDX_JOKERAPP_ORDER_ON_ORDER on JOKERAPP_ORDER (ORDER_ID);
