alter table JOKERAPP_PRODUCT_MODIFIER_SPECS add constraint FK_JOKERAPP_PRODUCT_MODIFIER_SPECS_PRODUCT_MODIFIER_CATEGORY foreign key (PRODUCT_MODIFIER_CATEGORY_ID) references JOKERAPP_PRODUCT_MODIFIER_CATEGORY(ID);
create index IDX_JOKERAPP_PRODUCT_MODIFIER_SPECS_PRODUCT_MODIFIER_CATEGORY on JOKERAPP_PRODUCT_MODIFIER_SPECS (PRODUCT_MODIFIER_CATEGORY_ID);
