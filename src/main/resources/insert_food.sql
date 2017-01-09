use food_store;
insert into food(title, description, price, picture) values ('Chicken Strips',
'Tenders made with a 100% White Breast Meat Chicken, raised without antibiotics.',
8.49,'chicken_strips.png');
insert into food(title, description, price, picture) values ('Chicken Bites',
'Boneless chunks of 100% white breast meat, raised without antibiotics and sourced from Canadian farms.',
9.75,'chicken_bitess.png');
insert into food(title, description, price, picture) values ('Tossed and Sauced Wings',
'Have your choice of wing sauce Tossed and Sauced right on your order of crispy breaded wings.',
18.99,'tossed_sauced.png');
insert into food(title, description, price, picture) values ('Chicken Wings',
'Choose between classic or crispy breaded wings. Includes your choice of a free dipping sauce. A tasty side selection with any meal.',
5.00,'5W.png');
insert into food(title, description, price, picture) values ('Bacon Caesar Salad',
'Fresh crisp romaine lettuce, bacon strips, parmesan cheese, Rothbury Homestyle croutons',
5.99,'BCS.png');
insert into food(title, description, price, picture) values ('Cryspy Chicken Caesar Salad',
'Fresh crisp romaine lettuce, crispy chicken, parmesan cheese, Rothbury Homestyle croutons.',
5.99,'CCCS.png');
insert into food(title, description, price, picture) values ('Grilled Chicken Caesar Salad',
'Fresh crisp romaine lettuce, grilled chicken, parmesan cheese, Rothbury Homestyle croutons.',
5.99,'GCCS.png');
insert into food(title, description, price, picture) values ('Caesar Salad',
'Fresh crisp romaine lettuce, parmesan cheese, Marcys crunchy croutons.',
5.49,'Caesar.png');
insert into food(title, description, price, picture) values ('Garden Salad',
'Cucumber slices, and ripe red grape tomatoes on a bed of fresh crisp iceberg lettuce.',
5.49,'garden.png');
update food set picture = concat('/resources/img/img_data/', picture) where ID > 0;
