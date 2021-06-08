-- LEE TaeHoon TEST scripts
show tables;
select *
  from cart;
select *
  from member;
select *
  from pro_img;
select *
  from product;
select *
  from qna;
select *
  from re_reply;
select *
  from review;
select *
  from Address;
select *
  from admin;
select *
  from `order`;

-- 제품 전체 검색(제품, 제품 이미지 조인문)
DROP VIEW productall;

CREATE VIEW productall
as
select p.pro_num,pro_category,pro_name,pro_price,pro_content,pro_salesrate,pro_cre_date,pro_status,pro_color,pro_size,pro_quantity,pro_sold,pro_hits,re_replyCount
		   ,pro_img_code,pro_imagefilename,pro_img_state
  from product p join pro_img i on p.pro_num = i.pro_num;

  where pro_img_state = 1 and pro_category = 1;

select pro_num,pro_category,pro_name,pro_price,pro_content,pro_salesrate,pro_cre_date,pro_status,pro_color,pro_size,pro_quantity,pro_sold,pro_hits,re_replyCount,pro_img_code,pro_imagefilename,pro_img_state 
  from productAll where pro_img_state = 1;

select * 
  from productall
where pro_img_state =1 and pro_num = 111;

-- 제품 클릭시 조회수 +1
update product 
      set pro_hits = pro_hits + 1 
 where pro_num = 111;      

-- 제품 삭제
delete
  from product
 where pro_category <= 7000;
 
-- 장바구니 
desc cart;

-- 장바구니 회원 아이디로 검색후 리스트 목록 보여주기
select cart_num, c.cart_member_id, c.cart_pro_num, cart_pro_quantity, p.pro_imagefilename, p.pro_name, p.pro_price, p.pro_size, p.pro_salesrate
  from cart c join productall p on c.cart_pro_num = p.pro_num 
where cart_member_Id ='test01';

select * from productall;

select * from cart;

select * from cart where cart_pro_num  like '%';

-- 장바구니 추가
INSERT INTO cart
		(cart_member_Id, cart_pro_num, cart_pro_quantity)
values
		('test01', 1111, 1);

-- 장바구니 삭제	
delete 
  from cart 
where cart_pro_num = 1033;

select * 
  from cart
where cart_pro_num = 1033 and cart_member_Id = 'test01';


 select cart_num, c.cart_member_id, c.cart_pro_num, cart_pro_quantity, p.pro_imagefilename, p.pro_name, p.pro_price,p.pro_size, p.pro_salesrate 
   from cart c 
    join productall p on c.cart_pro_num = p.pro_num where cart_member_Id = 'test01';

/*장바구니 추가 시 이미 있는 제품인 경우 수량 증가*/
update cart
	set cart_pro_quantity = cart_pro_quantity + 1
where cart_pro_num = 1113;

select * from cart;

	