alter table JOKERAPP_PRODUCT_MODIFIER_CATEGORY_PRODUCT_ITEM_LINK add constraint FK_PROMODCATPROITE_ON_PRODUCT_MODIFIER_CATEGORY foreign key (PRODUCT_MODIFIER_CATEGORY_ID) references JOKERAPP_PRODUCT_MODIFIER_CATEGORY(ID);
alter table JOKERAPP_PRODUCT_MODIFIER_CATEGORY_PRODUCT_ITEM_LINK add constraint FK_PROMODCATPROITE_ON_PRODUCT_ITEM foreign key (PRODUCT_ITEM_ID) references JOKERAPP_PRODUCT_ITEM(ID);
