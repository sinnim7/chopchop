
-- 회원 데이터 입력

insert into member(member_id, password, email, photo, nickname, tel, post_no, base_address, detail_address, grade)
value(1, '1111', 'a@email.com', 'a.jpg', 'aaaa', '1111-1111', '11111', 'seoul', 'gangnam', 1);
insert into member(member_id, password, email, photo, nickname, tel, post_no, base_address, detail_address, grade)
value(2, '2222', 'b@email.com', 'b.jpg', 'bbbb', '2222-2222', '22222', 'seoul', 'gangnam', 1);

-- 레시피 데이터 입력

insert into recipe(recipe_id, member_id, title, created_date, view_count, content, thumbnail, category, tag, other_info, scrap)
value(1,1,'title1','2019-10-01',1,'content1', 'thumbnail1', 'category1', 'tag1', 'info1', 1);
insert into recipe(recipe_id, member_id, title, created_date, view_count, content, thumbnail, category, tag, other_info, scrap)
value(2,2,'title2','2019-10-02',2,'content2', 'thumbnail2', 'category2', 'tag2', 'info2', 2);
insert into recipe(recipe_id, member_id, title, created_date, view_count, content, thumbnail, category, tag, other_info, scrap)
value(3,1,'title3','2019-10-03',3,'content3', 'thumbnail3', 'category3', 'tag3', 'info3', 3);
insert into recipe(recipe_id, member_id, title, created_date, view_count, content, thumbnail, category, tag, other_info, scrap)
value(4,2,'title4','2019-10-04',4,'content4', 'thumbnail4', 'category4', 'tag4', 'info4', 4);
insert into recipe(recipe_id, member_id, title, created_date, view_count, content, thumbnail, category, tag, other_info, scrap)
 value(5,2,'title5','2019-10-05',5,'content5', 'thumbnail5', 'category5', 'tag5', 'info5', 5);

-- 재료 데이터 입력

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(1, 1, '재료1', '용량1');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(2, 1, '재료2', '용량2');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(3, 1, '재료3', '용량3');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(4, 1, '재료4', '용량4');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(5, 1, '재료5', '용량5');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(6, 2, '재료1', '용량1');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(7, 2, '재료2', '용량2');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(8, 2, '재료3', '용량3');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(9, 2, '재료4', '용량4');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(10, 2, '재료5', '용량5');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(11, 3, '재료1', '용량1');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(12, 3, '재료2', '용량2');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(13, 3, '재료3', '용량3');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(14, 3, '재료4', '용량4');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(15, 3, '재료5', '용량5');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(16, 4, '재료1', '용량1');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(17, 4, '재료2', '용량2');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(18, 4, '재료3', '용량3');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(19, 4, '재료4', '용량4');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(20, 4, '재료5', '용량5');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(21, 5, '재료1', '용량1');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(22, 5, '재료2', '용량2');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(23, 5, '재료3', '용량3');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(24, 5, '재료4', '용량4');

insert into ingredient(ingredient_id, recipe_id, ingredient, quantity)
value(25, 5, '재료5', '용량5');

-- 조리과정 데이터 입력
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(1, 1, 1, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(2, 1, 2, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(3, 1, 3, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(4, 1, 4, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(5, 1, 5, '사진', '내용');

insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(6, 2, 1, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(7, 2, 2, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(8, 2, 3, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(9, 2, 4, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(10, 2, 5, '사진', '내용');

insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(11, 3, 1, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(12, 3, 2, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(13, 3, 3, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(14, 3, 4, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(15, 3, 5, '사진', '내용');

insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(16, 4, 1, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(17, 4, 2, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(18, 4, 3, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(19, 4, 4, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(20, 4, 5, '사진', '내용');

insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(21, 5, 1, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(22, 5, 2, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(23, 5, 3, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(24, 5, 4, '사진', '내용');
insert into cooking (cooking_id, recipe_id, process, file_path, content)
value(25, 5, 5, '사진', '내용');
 
-- recipe_comment

insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 1,'content1', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 1,'content2', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 1,'content3', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 1,'content4', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 1,'content5', '2019-10-16');

insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 2,'content6', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 2,'content7', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 2,'content8', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 2,'content9', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 2,'content10', '2019-10-16');

insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 3,'content11', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 3,'content12', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 3,'content13', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 3,'content14', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(1, 3,'content15', '2019-10-16');

insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 4,'content16', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 4,'content17', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 4,'content18', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 4,'content19', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 4,'content20', '2019-10-16');

insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 5,'content21', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 5,'content22', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 5,'content23', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 5,'content24', '2019-10-16');
insert into recipe_comment(member_id, recipe_id, content, created_date) values(2, 5,'content25', '2019-10-16');


-- recipe_like
insert into recipe_like(member_id, recipe_id) values(1,1);
insert into recipe_like(member_id, recipe_id) values(2,2);
insert into recipe_like(member_id, recipe_id) values(1,3);
insert into recipe_like(member_id, recipe_id) values(2,4);
insert into recipe_like(member_id, recipe_id) values(2,5);


-- 동물 분류 데이터 입력
insert into category(category_id, category)
value(1, '강아지');
insert into category(category_id, category)
value(2, '고양이');
insert into category(category_id, category)
value(3, '강아지');
insert into category(category_id, category)
value(4, '고양이');
insert into category(category_id, category)
value(5, '강아지');