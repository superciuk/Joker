alter table JOKERAPP_PRINTER_GROUP add constraint FK_JOKERAPP_PRINTER_GROUP_PRINTER foreign key (PRINTER_ID) references JOKERAPP_PRINTER(ID);
create index IDX_JOKERAPP_PRINTER_GROUP_PRINTER on JOKERAPP_PRINTER_GROUP (PRINTER_ID);
