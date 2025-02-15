/*강아지, 고양이 카테고리(부모 카테고리 데이터 추가)*/
INSERT INTO category (name, code, branch, parentId) VALUES ('강아지', 'dog', 'pet', NULL);
INSERT INTO category (name, code, branch, parentId) VALUES ('고양이', 'cat', 'pet', NULL);
INSERT INTO category (name, code, branch, parentId) VALUES ('간식', 'dog-snacks', 'pet', 1);
INSERT INTO category (name, code, branch, parentId) VALUES ('매트', 'dog-mats', 'pet', 1);
INSERT INTO category (name, code, branch, parentId) VALUES ('사료', 'dog-food', 'pet', 1);
INSERT INTO category (name, code, branch, parentId) VALUES ('패션', 'dog-fashion', 'pet', 1);
INSERT INTO category (name, code, branch, parentId) VALUES ('장난감', 'dog-toys', 'pet', 1);
INSERT INTO category (name, code, branch, parentId) VALUES ('간식', 'cat-snacks', 'pet', 2);
INSERT INTO category (name, code, branch, parentId) VALUES ('매트', 'cat-mats', 'pet', 2);
INSERT INTO category (name, code, branch, parentId) VALUES ('사료', 'cat-food', 'pet', 2);
INSERT INTO category (name, code, branch, parentId) VALUES ('패션', 'cat-fashion', 'pet', 2);
INSERT INTO category (name, code, branch, parentId) VALUES ('장난감', 'cat-toys', 'pet', 2);

/*강아지, 고양이 카테고리(하위카테고리별 상품데이터 추가)*/

INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (3, '강아지 비스킷', 10000, 50, '/static/img/product_img/Dog_buskit_3.png', '맛있는 강아지 비스킷', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (3, '강아지 츄잉껌', 8000, 80, '/static/img/product_img/Dog_chewinggum_3.png', '강아지의 치아 건강을 위한 츄잉껌', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (4, '강아지 쿠션 매트', 10000, 50, '/static/img/product_img/Dog_cushion_mat_4.png', '편안한 강아지용 쿠션 매트', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (4, '강아지 방수 매트', 20000, 30, '/static/img/product_img/Dog_water_mat_4.png', '물에 강한 강아지용 방수 매트', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (5, '강아지 고급 사료', 25000, 80, '/static/img/product_img/Dog_quality_food_5.png', '강아지의 건강을 생각한 고급 사료', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (5, '강아지 일반 사료', 14000, 50, '/static/img/product_img/Dog_normal_food_5.png', '강아지의 체력을 위한 일반 사료', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (6, '강아지 패션 코트', 12000, 20, '/static/img/product_img/Dog_coat_fashion_6.png', '겨울에 따뜻한 강아지용 코트', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (6, '강아지 패션 액세서리', 15000, 60, '/static/img/product_img/Dog_neck_fashion_6.png', '멋쟁이 강아지를 위한 목걸이', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (7, '강아지 놀이용 장난감', 4000, 20, '/static/img/product_img/Dog_ball_toy_7.png', '재미있는 놀이를 위한 강아지 볼', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (7, '강아지 운동용 장난감', 8000, 60, '/static/img/product_img/Dog_doll_toy_7.png', '건강한 운동을 위한 강아지 인형', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (8, '고양이 즐거운 간식', 8000, 40, '/static/img/product_img/Cat_pleasant_snack_8.png', '고양이가 즐겁게 먹을 수 있는 간식', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (8, '고양이 활기찬 간식', 4000, 30, '/static/img/product_img/Cat_can_snack_8.png', '고양이의 활기를 위한 통조림', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (9, '고양이 스크래쳐 매트', 18000, 60, '/static/img/product_img/Cat_scratch_mat_9.png', '발톱 관리에 좋은 스크래쳐 매트', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (9, '고양이 푹신한 매트', 20000, 50, '/static/img/product_img/Cat_comfortable_mat_9.png', '고양이의 편안함을 위한 매트', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (10, '고양이 건강한 사료', 20000, 70, '/static/img/product_img/Cat_healthy_food_10.png', '고양이의 건강을 생각한 사료', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (10, '고양이 맛있는 사료', 5000, 80, '/static/img/product_img/Cat_delicious_food_10.png', '고양이의 맛을 생각한 사료', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (11, '고양이 멋쟁이 리본', 4000, 10, '/static/img/product_img/Cat_ribbon_fashion_11.png', '귀여운 고양이 리본', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (11, '고양이 멋있는 패션', 12000, 35, '/static/img/product_img/Cat_neck_fashion_11.png', '센치한 고양이 목걸이', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (12, '고양이 장난감 마우스', 14000, 30, '/static/img/product_img/Cat_mouse_toy_12.png', '고양이가 좋아하는 마우스 장난감', '2024-04-18', '2024-04-18');
INSERT INTO product (category_id, name, price, stock, image_url, description, created_at, modified_at) VALUES (12, '고양이 장난감 생선', 19000, 44, '/static/img/product_img/Cat_fish_toy_12.png', '고양이가 제일 사랑하는 생선 장난감', '2024-04-18', '2024-04-18');