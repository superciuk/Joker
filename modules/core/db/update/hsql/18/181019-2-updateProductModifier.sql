alter table JOKERAPP_PRODUCT_MODIFIER alter column ADD_PRICE rename to ADD_PRICE__U31691 ^
alter table JOKERAPP_PRODUCT_MODIFIER alter column SUBTRACT_PRICE rename to SUBTRACT_PRICE__U57894 ^
alter table JOKERAPP_PRODUCT_MODIFIER add column SUBTRACT_PRICE bigint ;
alter table JOKERAPP_PRODUCT_MODIFIER add column ADD_PRICE bigint ;
