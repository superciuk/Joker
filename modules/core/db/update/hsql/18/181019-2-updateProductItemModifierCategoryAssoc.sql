alter table JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC alter column PRODUCT_ITEM_ID rename to PRODUCT_ITEM_ID__U90631 ^
alter table JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC alter column PRODUCT_ITEM_ID__U90631 set null ;
drop index IDX_JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC_PRODUCT_ITEM ;
alter table JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC drop constraint FK_JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC_PRODUCT_ITEM ;
alter table JOKERAPP_PRODUCT_ITEM_MODIFIER_CATEGORY_ASSOC add column ORDER_ID varchar(36) ;
