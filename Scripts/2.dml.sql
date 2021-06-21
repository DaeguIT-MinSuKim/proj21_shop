-- 회원
INSERT INTO proj21_shop.`member`
(m_id , m_passwd , m_name, m_phone, m_birthday, m_gender, m_addr1, m_addr2, m_addr3, m_question, m_answer, m_email)
VALUES
('test01', password(123), '이종가', '010-1234-5678', '1994-08-17', 1, 746858, '대구광역시 남구 봉덕동 이천로 51', '3층', '본인확인질문', '본인확인질문답변', 'test1@test.co.kr'),
('test02', password(123), '이종나', '010-1234-5678', '1994-08-17', 1, 746851, '대구광역시 남구 봉덕동 이천로 52', '2층','본인확인질문', '본인확인질문답변', 'test2@test.co.kr'),
('test03', password(123), '이종다', '010-1234-5678', '1994-08-17', 1, 746852, '대구광역시 남구 봉덕동 이천로 53', '1층','본인확인질문', '본인확인질문답변', 'test3@test.co.kr'),
('test04', password(123), '이종라', '010-1234-5678', '1994-08-17', 0, 746853, '대구광역시 남구 봉덕동 이천로 54', '2층','본인확인질문', '본인확인질문답변', 'test4@test.co.kr'),
('test05', password(123), '이종마', '010-1234-5678', '1994-08-17', 0, 746854, '대구광역시 남구 봉덕동 이천로 55', '3층','본인확인질문', '본인확인질문답변', 'test5@test.co.kr');


-- 주소
INSERT INTO proj21_shop.address
			(m_id,  m_addr1, m_addr2, m_addr3)
values
			('test01', 746858, '대구광역시 남구 봉덕동 이천로 51', '3층'),
			('test02', 746851, '대구광역시 남구 봉덕동 이천로 52', '2층'),
			('test03', 746852, '대구광역시 남구 봉덕동 이천로 53', '1층'),
			('test04', 746853, '대구광역시 남구 봉덕동 이천로 54', '2층'),
			('test05', 746854, '대구광역시 남구 봉덕동 이천로 55', '3층');
		
-- 관리자
INSERT INTO proj21_shop.`member`
(m_id, m_passwd, m_name, m_phone, m_birthday, m_gender, m_addr1, m_addr2, m_addr3, m_question, m_answer, m_email, m_point)
VALUES	
('admin', password(123), '관리자', '010-1234-5678', '1994-08-17', 0, 111111, '대구광역시 남구', '3층','본인확인질문', '본인확인질문답변', 'admin@shop.co.kr',1000000);

 
-- 제품
-- 제품 번호 1      옷 카테고리 = (1:반팔)(2:긴팔)(3:슬립리스)(4:후디)(5:셔츠)(6:맨투맨)
-- 			01      옷 색상       = 아래 참고 색상=번호 참고
-- 			  1    옷 사이즈    = (1:XS)(2:S)(3:M)(4:L)(5:XL)

-- white = 1, ivory = 2, gray = 3, pink = 4, yellow =5, mint = 6
-- green = 7, purple = 8, navy = 9, black = 11, brown = 12, orange = 13, blue = 14, red=15, basic=16

INSERT ignore INTO proj21_shop.product
	(pro_num, pro_category, pro_name, pro_price, pro_content, pro_salesrate, pro_color, pro_size, pro_quantity)
values
	(1111, 1, 'blackT',    5000, '검정색 반팔티 XS사이즈 입니다.'  , 10 , 11, 1, 10),
	(1112, 1, 'blackT',    5000, '검정색 반팔티 XS사이즈 입니다.'  , 10 , 11, 2, 10),
	(1113, 1, 'blackT',    5000, '검정색 반팔티 XS사이즈 입니다.'  , 10 , 11, 3, 10),
	(1114, 1, 'blackT',    5000, '검정색 반팔티 XS사이즈 입니다.'  , 10 , 11, 4, 10),
	(1115, 1, 'blackT',    5000, '검정색 반팔티 XS사이즈 입니다.'  , 10 , 11, 5, 10),
	(1031, 1, 'grayT',     5000, '회색 반팔티 M사이즈 입니다.'    , 10 , 3, 1, 10),
	(1032, 1, 'grayT',     5000, '회색 반팔티 M사이즈 입니다.'    , 10 , 3, 2, 10),
	(1033, 1, 'grayT',     5000, '회색 반팔티 M사이즈 입니다.'    , 10 , 3, 3, 10),
	(1034, 1, 'grayT',     5000, '회색 반팔티 M사이즈 입니다.'    , 10 , 3, 4, 10),
	(1035, 1, 'grayT',     5000, '회색 반팔티 M사이즈 입니다.'    , 10 , 3, 5, 10),
	(1091, 1, 'navyT',     5000, '네이비 반팔티 M사이즈 입니다.'  , 10 , 9, 1, 10),
	(1092, 1, 'navyT',     5000, '네이비 반팔티 M사이즈 입니다.'  , 10 , 9, 2, 10),
	(1093, 1, 'navyT',     5000, '네이비 반팔티 M사이즈 입니다.'  , 10 , 9, 3, 10),
	(1094, 1, 'navyT',     5000, '네이비 반팔티 M사이즈 입니다.'  , 10 , 9, 4, 10),
	(1095, 1, 'navyT',     5000, '네이비 반팔티 M사이즈 입니다.'  , 10 , 9, 5, 10),
	(1141, 1, 'blueT',     5000, '파란 반팔티 M사이즈 입니다.'    , 10 , 14, 1, 10),
	(1142, 1, 'blueT',     5000, '파란 반팔티 M사이즈 입니다.'    , 10 , 14, 2, 10),
	(1143, 1, 'blueT',     5000, '파란 반팔티 M사이즈 입니다.'    , 10 , 14, 3, 10),
	(1144, 1, 'blueT',     5000, '파란 반팔티 M사이즈 입니다.'    , 10 , 14, 4, 10),
	(1145, 1, 'blueT',     5000, '파란 반팔티 M사이즈 입니다.'    , 10 , 14, 5, 10),
	(1041, 1, 'pinkT',     5000, '분홍 반팔티 M사이즈 입니다.'    , 10 ,  4, 1, 10),
	(1042, 1, 'pinkT',     5000, '분홍 반팔티 M사이즈 입니다.'    , 10 ,  4, 2, 10),
	(1043, 1, 'pinkT',     5000, '분홍 반팔티 M사이즈 입니다.'    , 10 ,  4, 3, 10),
	(1044, 1, 'pinkT',     5000, '분홍 반팔티 M사이즈 입니다.'    , 10 ,  4, 4, 10),
	(1045, 1, 'pinkT',     5000, '분홍 반팔티 M사이즈 입니다.'    , 10 ,  4, 5, 10),
	(2091, 2, 'navyLong',    5000, 'navy 긴팔티 M사이즈 입니다.'     , 10 , 9, 1, 10),
	(2092, 2, 'navyLong',    5000, 'navy 긴팔티 M사이즈 입니다.'     , 10 , 9, 2, 10),
	(2093, 2, 'navyLong',    5000, 'navy 긴팔티 M사이즈 입니다.'     , 10 , 9, 3, 10),
	(2094, 2, 'navyLong',    5000, 'navy 긴팔티 M사이즈 입니다.'     , 10 , 9, 4, 10),
	(2095, 2, 'navyLong',    5000, 'navy 긴팔티 M사이즈 입니다.'     , 10 , 9, 5, 10),
	(2061, 2, 'mintLong',    5000, 'mint 긴팔티 M사이즈 입니다.'     , 10 , 6, 1, 10),
	(2062, 2, 'mintLong',    5000, 'mint 긴팔티 M사이즈 입니다.'     , 10 , 6, 2, 10),
	(2063, 2, 'mintLong',    5000, 'mint 긴팔티 M사이즈 입니다.'     , 10 , 6, 3, 10),
	(2064, 2, 'mintLong',    5000, 'mint 긴팔티 M사이즈 입니다.'     , 10 , 6, 4, 10),
	(2065, 2, 'mintLong',    5000, 'mint 긴팔티 M사이즈 입니다.'     , 10 , 6, 5, 10),
	(2121, 2, 'brownLong',   5000, 'brown 긴팔티 M사이즈 입니다.'    , 10 , 12, 1, 10),
	(2122, 2, 'brownLong',   5000, 'brown 긴팔티 M사이즈 입니다.'    , 10 , 12, 2, 10),
	(2123, 2, 'brownLong',   5000, 'brown 긴팔티 M사이즈 입니다.'    , 10 , 12, 3, 10),
	(2124, 2, 'brownLong',   5000, 'brown 긴팔티 M사이즈 입니다.'    , 10 , 12, 4, 10),
	(2125, 2, 'brownLong',   5000, 'brown 긴팔티 M사이즈 입니다.'    , 10 , 12, 5, 10),
	(2111, 2, 'blackLong',   5000, 'black 긴팔티 M사이즈 입니다.'    , 10 , 11, 1, 10),
	(2112, 2, 'blackLong',   5000, 'black 긴팔티 M사이즈 입니다.'    , 10 , 11, 2, 10),
	(2113, 2, 'blackLong',   5000, 'black 긴팔티 M사이즈 입니다.'    , 10 , 11, 3, 10),
	(2114, 2, 'blackLong',   5000, 'black 긴팔티 M사이즈 입니다.'    , 10 , 11, 4, 10),
	(2115, 2, 'blackLong',   5000, 'black 긴팔티 M사이즈 입니다.'    , 10 , 11, 5, 10),
	(2021, 2, 'ivoryLong',   5000, 'ivory 긴팔티 M사이즈 입니다.'    , 10 , 2, 1, 10),
	(2022, 2, 'ivoryLong',   5000, 'ivory 긴팔티 M사이즈 입니다.'    , 10 , 2, 2, 10),
	(2023, 2, 'ivoryLong',   5000, 'ivory 긴팔티 M사이즈 입니다.'    , 10 , 2, 3, 10),
	(2024, 2, 'ivoryLong',   5000, 'ivory 긴팔티 M사이즈 입니다.'    , 10 , 2, 4, 10),
	(2025, 2, 'ivoryLong',   5000, 'ivory 긴팔티 M사이즈 입니다.'    , 10 , 2, 5, 10),
	(3151, 3, 'redSleev',   5000, 'redSleev M사이즈 입니다.'   ,5 , 15, 1, 10),
	(3152, 3, 'redSleev',   5000, 'redSleev M사이즈 입니다.'   ,5 , 15, 2, 10),
	(3153, 3, 'redSleev',   5000, 'redSleev M사이즈 입니다.'   ,5 , 15, 3, 10),
	(3154, 3, 'redSleev',   5000, 'redSleev M사이즈 입니다.'   ,5 , 15, 4, 10),
	(3155, 3, 'redSleev',   5000, 'redSleev M사이즈 입니다.'   ,5 , 15, 5, 10),
	(3121, 3, 'brownSleev', 5000, 'brownSleev M사이즈 입니다.' ,5 , 12, 1, 10),
	(3122, 3, 'brownSleev', 5000, 'brownSleev M사이즈 입니다.' ,5 , 12, 2, 10),
	(3123, 3, 'brownSleev', 5000, 'brownSleev M사이즈 입니다.' ,5 , 12, 3, 10),
	(3124, 3, 'brownSleev', 5000, 'brownSleev M사이즈 입니다.' ,5 , 12, 4, 10),
	(3125, 3, 'brownSleev', 5000, 'brownSleev M사이즈 입니다.' ,5 , 12, 5, 10),
	(3111, 3, 'blackSleev', 5000, 'blackSleev M사이즈 입니다.' ,5 , 11, 1, 10),
	(3112, 3, 'blackSleev', 5000, 'blackSleev M사이즈 입니다.' ,5 , 11, 2, 10),
	(3113, 3, 'blackSleev', 5000, 'blackSleev M사이즈 입니다.' ,5 , 11, 3, 10),
	(3114, 3, 'blackSleev', 5000, 'blackSleev M사이즈 입니다.' ,5 , 11, 4, 10),
	(3115, 3, 'blackSleev', 5000, 'blackSleev M사이즈 입니다.' ,5 , 11, 5, 10),
	(3141, 3, 'blueSleev',  5000, 'blueSleev M사이즈 입니다.'  ,5 , 14, 1, 10),
	(3142, 3, 'blueSleev',  5000, 'blueSleev M사이즈 입니다.'  ,5 , 14, 2, 10),
	(3143, 3, 'blueSleev',  5000, 'blueSleev M사이즈 입니다.'  ,5 , 14, 3, 10),
	(3144, 3, 'blueSleev',  5000, 'blueSleev M사이즈 입니다.'  ,5 , 14, 4, 10),
	(3145, 3, 'blueSleev',  5000, 'blueSleev M사이즈 입니다.'  ,5 , 14, 5, 10),
	(3021, 3, 'ivorySleev', 5000, 'ivorySleev M사이즈 입니다.' ,5 ,  2, 1, 10),
	(3022, 3, 'ivorySleev', 5000, 'ivorySleev M사이즈 입니다.' ,5 ,  2, 2, 10),
	(3023, 3, 'ivorySleev', 5000, 'ivorySleev M사이즈 입니다.' ,5 ,  2, 3, 10),
	(3024, 3, 'ivorySleev', 5000, 'ivorySleev M사이즈 입니다.' ,5 ,  2, 4, 10),
	(3025, 3, 'ivorySleev', 5000, 'ivorySleev M사이즈 입니다.' ,5 ,  2, 5, 10),
	(4041, 4, 'AUTHENTIC PINK',     		 5000, 'PINK 후디 M사이즈 입니다.'    , 5  ,  4, 1, 10),
	(4042, 4, 'AUTHENTIC PINK',     		 5000, 'PINK 후디 M사이즈 입니다.'    , 5  ,  4, 2, 10),
	(4043, 4, 'AUTHENTIC PINK',     		 5000, 'PINK 후디 M사이즈 입니다.'    , 5  ,  4, 3, 10),
	(4044, 4, 'AUTHENTIC PINK',     		 5000, 'PINK 후디 M사이즈 입니다.'    , 5  ,  4, 4, 10),
	(4045, 4, 'AUTHENTIC PINK',     		 5000, 'PINK 후디 M사이즈 입니다.'    , 5  ,  4, 5, 10),
	(4071, 4, 'ARCH HOODIE GREEN',  		 5000, 'GREEN 후디 M사이즈 입니다.'    , 5  ,  7, 1, 10),
	(4072, 4, 'ARCH HOODIE GREEN',  		 5000, 'GREEN 후디 M사이즈 입니다.'    , 5  ,  7, 2, 10),
	(4073, 4, 'ARCH HOODIE GREEN',  		 5000, 'GREEN 후디 M사이즈 입니다.'    , 5  ,  7, 3, 10),
	(4074, 4, 'ARCH HOODIE GREEN',  		 5000, 'GREEN 후디 M사이즈 입니다.'    , 5  ,  7, 4, 10),
	(4075, 4, 'ARCH HOODIE GREEN',  		 5000, 'GREEN 후디 M사이즈 입니다.'    , 5  ,  7, 5, 10),
	(4091, 4, 'Bear Hoodie Navy',   		 5000, 'Navy 후디 M사이즈 입니다.'    , 5  ,  9, 1, 10),
	(4092, 4, 'Bear Hoodie Navy',   		 5000, 'Navy 후디 M사이즈 입니다.'    , 5  ,  9, 2, 10),
	(4093, 4, 'Bear Hoodie Navy',   		 5000, 'Navy 후디 M사이즈 입니다.'    , 5  ,  9, 3, 10),
	(4094, 4, 'Bear Hoodie Navy',   		 5000, 'Navy 후디 M사이즈 입니다.'    , 5  ,  9, 4, 10),
	(4095, 4, 'Bear Hoodie Navy',   		 5000, 'Navy 후디 M사이즈 입니다.'    , 5  ,  9, 5, 10),
	(4031, 4, 'Crop Hoodie Gray',   		 5000, 'Gray 후디 M사이즈 입니다.'    , 5  ,  3, 1, 10),
	(4032, 4, 'Crop Hoodie Gray',   		 5000, 'Gray 후디 M사이즈 입니다.'    , 5  ,  3, 2, 10),
	(4033, 4, 'Crop Hoodie Gray',   		 5000, 'Gray 후디 M사이즈 입니다.'    , 5  ,  3, 3, 10),
	(4034, 4, 'Crop Hoodie Gray',   		 5000, 'Gray 후디 M사이즈 입니다.'    , 5  ,  3, 4, 10),
	(4035, 4, 'Crop Hoodie Gray',   		 5000, 'Gray 후디 M사이즈 입니다.'    , 5  ,  3, 5, 10),
	(4111, 4, 'SOFT HOODIE Black',    		 5000, 'Black 후디 M사이즈 입니다.'    , 5  , 11, 1, 10),
	(4112, 4, 'SOFT HOODIE Black',    		 5000, 'Black 후디 M사이즈 입니다.'    , 5  , 11, 2, 10),
	(4113, 4, 'SOFT HOODIE Black',    		 5000, 'Black 후디 M사이즈 입니다.'    , 5  , 11, 3, 10),
	(4114, 4, 'SOFT HOODIE Black',    		 5000, 'Black 후디 M사이즈 입니다.'    , 5  , 11, 4, 10),
	(4115, 4, 'SOFT HOODIE Black',    		 5000, 'Black 후디 M사이즈 입니다.'    , 5  , 11, 5, 10),
	(5031, 5, 'LOLA SHIRT gray',    	 5000, 'gray 셔츠 M사이즈 입니다.'       , 10 , 3, 1, 10),
	(5032, 5, 'LOLA SHIRT gray',    	 5000, 'gray 셔츠 M사이즈 입니다.'       , 10 , 3, 2, 10),
	(5033, 5, 'LOLA SHIRT gray',    	 5000, 'gray 셔츠 M사이즈 입니다.'       , 10 , 3, 3, 10),
	(5034, 5, 'LOLA SHIRT gray',    	 5000, 'gray 셔츠 M사이즈 입니다.'       , 10 , 3, 4, 10),
	(5035, 5, 'LOLA SHIRT gray',    	 5000, 'gray 셔츠 M사이즈 입니다.'       , 10 , 3, 5, 10),
	(5021, 5, 'FRIDAY SHIRT (IVORY)',    5000, 'IVORY 셔츠 M사이즈 입니다.'      , 10 , 2, 1, 10),
	(5022, 5, 'FRIDAY SHIRT (IVORY)',    5000, 'IVORY 셔츠 M사이즈 입니다.'      , 10 , 2, 2, 10),
	(5023, 5, 'FRIDAY SHIRT (IVORY)',    5000, 'IVORY 셔츠 M사이즈 입니다.'      , 10 , 2, 3, 10),
	(5024, 5, 'FRIDAY SHIRT (IVORY)',    5000, 'IVORY 셔츠 M사이즈 입니다.'      , 10 , 2, 4, 10),
	(5025, 5, 'FRIDAY SHIRT (IVORY)',    5000, 'IVORY 셔츠 M사이즈 입니다.'      , 10 , 2, 4, 10),
	(5011, 5, 'NECK SHIRT white',    	 5000, 'white 셔츠 M사이즈 입니다.'      , 10 , 1, 1, 10),
	(5012, 5, 'NECK SHIRT white',    	 5000, 'white 셔츠 M사이즈 입니다.'      , 10 , 1, 2, 10),
	(5013, 5, 'NECK SHIRT white',    	 5000, 'white 셔츠 M사이즈 입니다.'      , 10 , 1, 3, 10),
	(5014, 5, 'NECK SHIRT white',    	 5000, 'white 셔츠 M사이즈 입니다.'      , 10 , 1, 4, 10),
	(5015, 5, 'NECK SHIRT white',    	 5000, 'white 셔츠 M사이즈 입니다.'      , 10 , 1, 5, 10),
	(5051, 5, '풀오버 셔츠 옐로우',    	 	 5000, '옐로우 셔츠 M사이즈 입니다.'       , 10 , 5, 1, 10),
	(5052, 5, '풀오버 셔츠 옐로우',    	 	 5000, '옐로우 셔츠 M사이즈 입니다.'       , 10 , 5, 2, 10),
	(5053, 5, '풀오버 셔츠 옐로우',    	 	 5000, '옐로우 셔츠 M사이즈 입니다.'       , 10 , 5, 3, 10),
	(5054, 5, '풀오버 셔츠 옐로우',    	 	 5000, '옐로우 셔츠 M사이즈 입니다.'       , 10 , 5, 4, 10),
	(5055, 5, '풀오버 셔츠 옐로우',    	 	 5000, '옐로우 셔츠 M사이즈 입니다.'       , 10 , 5, 5, 10),
	(5111, 5, '오버핏 체크셔츠 black',    	 5000, 'black 셔츠 M사이즈 입니다.'         , 10 , 11, 1, 10),
	(5112, 5, '오버핏 체크셔츠 black',    	 5000, 'black 셔츠 M사이즈 입니다.'         , 10 , 11, 2, 10),
	(5113, 5, '오버핏 체크셔츠 black',    	 5000, 'black 셔츠 M사이즈 입니다.'         , 10 , 11, 3, 10),
	(5114, 5, '오버핏 체크셔츠 black',    	 5000, 'black 셔츠 M사이즈 입니다.'         , 10 , 11, 4, 10),
	(5115, 5, '오버핏 체크셔츠 black',    	 5000, 'black 셔츠 M사이즈 입니다.'         , 10 , 11, 5, 10),
	(5081, 5, 'CHECK SHIRTS_PURPLE',     5000, 'PURPLE 셔츠 M사이즈 입니다.'      , 10 , 8, 1, 10),
	(5082, 5, 'CHECK SHIRTS_PURPLE',     5000, 'PURPLE 셔츠 M사이즈 입니다.'      , 10 , 8, 2, 10),
	(5083, 5, 'CHECK SHIRTS_PURPLE',     5000, 'PURPLE 셔츠 M사이즈 입니다.'      , 10 , 8, 3, 10),
	(5084, 5, 'CHECK SHIRTS_PURPLE',     5000, 'PURPLE 셔츠 M사이즈 입니다.'      , 10 , 8, 4, 10),
	(5085, 5, 'CHECK SHIRTS_PURPLE',     5000, 'PURPLE 셔츠 M사이즈 입니다.'      , 10 , 8, 5, 10),
	(6011, 6, '크롭 맨투맨 - 화이트',			    	5000, '화이트 맨투맨 M사이즈 입니다.', 0  ,  1, 1, 10),
	(6012, 6, '크롭 맨투맨 - 화이트',			    	5000, '화이트 맨투맨 M사이즈 입니다.', 0  ,  1, 2, 10),
	(6013, 6, '크롭 맨투맨 - 화이트',			    	5000, '화이트 맨투맨 M사이즈 입니다.', 0  ,  1, 3, 10),
	(6014, 6, '크롭 맨투맨 - 화이트',			    	5000, '화이트 맨투맨 M사이즈 입니다.', 0  ,  1, 4, 10),
	(6015, 6, '크롭 맨투맨 - 화이트',			    	5000, '화이트 맨투맨 M사이즈 입니다.', 0  ,  1, 5, 10),
	(6091, 6, 'CREWNECK KS [NAVY]', 		 		5000, 'NAVY 맨투맨 M사이즈 입니다.', 0  ,  9, 1, 10),
	(6092, 6, 'CREWNECK KS [NAVY]', 		 		5000, 'NAVY 맨투맨 M사이즈 입니다.', 0  ,  9, 2, 10),
	(6093, 6, 'CREWNECK KS [NAVY]', 		 		5000, 'NAVY 맨투맨 M사이즈 입니다.', 0  ,  9, 3, 10),
	(6094, 6, 'CREWNECK KS [NAVY]', 		 		5000, 'NAVY 맨투맨 M사이즈 입니다.', 0  ,  9, 4, 10),
	(6095, 6, 'CREWNECK KS [NAVY]', 		 		5000, 'NAVY 맨투맨 M사이즈 입니다.', 0  ,  9, 5, 10),
	(6031, 6, 'balloon type (GRAY)',				5000, 'GRAY 맨투맨  M사이즈 입니다.', 0  ,  3, 1, 10),
	(6032, 6, 'balloon type (GRAY)',				5000, 'GRAY 맨투맨  M사이즈 입니다.', 0  ,  3, 2, 10),
	(6033, 6, 'balloon type (GRAY)',				5000, 'GRAY 맨투맨  M사이즈 입니다.', 0  ,  3, 3, 10),
	(6034, 6, 'balloon type (GRAY)',				5000, 'GRAY 맨투맨  M사이즈 입니다.', 0  ,  3, 4, 10),
	(6035, 6, 'balloon type (GRAY)',				5000, 'GRAY 맨투맨  M사이즈 입니다.', 0  ,  3, 5, 10),
	(6021, 6, '코지 _IVORY 스웨트셔츠',					5000, 'IVORY 맨투맨 M사이즈 입니다.', 0  ,  2, 1, 10),
	(6022, 6, '코지 _IVORY 스웨트셔츠',					5000, 'IVORY 맨투맨 M사이즈 입니다.', 0  ,  2, 2, 10),
	(6023, 6, '코지 _IVORY 스웨트셔츠',					5000, 'IVORY 맨투맨 M사이즈 입니다.', 0  ,  2, 3, 10),
	(6024, 6, '코지 _IVORY 스웨트셔츠',					5000, 'IVORY 맨투맨 M사이즈 입니다.', 0  ,  2, 4, 10),
	(6025, 6, '코지 _IVORY 스웨트셔츠',					5000, 'IVORY 맨투맨 M사이즈 입니다.', 0  ,  2, 5, 10),
	(6161, 6, '테일러스튜디오(basic) FG 맨투맨',			5000, 'basic 맨투맨 M사이즈 입니다.', 0  , 16, 1, 10),
	(6162, 6, '테일러스튜디오(basic) FG 맨투맨',			5000, 'basic 맨투맨 M사이즈 입니다.', 0  , 16, 2, 10),
	(6163, 6, '테일러스튜디오(basic) FG 맨투맨',			5000, 'basic 맨투맨 M사이즈 입니다.', 0  , 16, 3, 10),
	(6164, 6, '테일러스튜디오(basic) FG 맨투맨',			5000, 'basic 맨투맨 M사이즈 입니다.', 0  , 16, 4, 10),
	(6165, 6, '테일러스튜디오(basic) FG 맨투맨',			5000, 'basic 맨투맨 M사이즈 입니다.', 0  , 16, 5, 10);
-- white = 1, ivory = 2, gray = 3, pink = 4, yellow =5, mint = 6
-- green = 7, purple = 8, navy = 9, black = 11, brown = 12, orange = 13, blue = 14, red=15, basic = 16

-- 제품 이미지
-- pro_img_state가 1이면 메인 이미지 0이면 보조 이미지
INSERT IGNORE INTO proj21_shop.pro_img
		(pro_num , pro_imagefilename, pro_img_state)
values
		(1111, '1113.jpg',1),
		(1112, '1113.jpg',1),
		(1113, '1113.jpg',1),
		(1114, '1113.jpg',1),
		(1115, '1113.jpg',1),
		(1031, '1033.jpg',1),
		(1032, '1033.jpg',1),
		(1033, '1033.jpg',1),
		(1034, '1033.jpg',1),
		(1035, '1033.jpg',1),
		(1091, '1093.jpg',1),
		(1092, '1093.jpg',1),
		(1093, '1093.jpg',1),
		(1094, '1093.jpg',1),
		(1095, '1093.jpg',1),
		(1141, '1143.jpg',1),
		(1142, '1143.jpg',1),
		(1143, '1143.jpg',1),
		(1144, '1143.jpg',1),
		(1145, '1143.jpg',1),
		(1041, '1043.jpg',1),
		(1042, '1043.jpg',1),
		(1043, '1043.jpg',1),
		(1044, '1043.jpg',1),
		(1045, '1043.jpg',1),
		(2091, '2093.jpg',1),
		(2092, '2093.jpg',1),
		(2093, '2093.jpg',1),
		(2094, '2093.jpg',1),
		(2095, '2093.jpg',1),
		(2061, '2063.jpg',1),
		(2062, '2063.jpg',1),
		(2063, '2063.jpg',1),
		(2064, '2063.jpg',1),
		(2065, '2063.jpg',1),
		(2121, '2123.jpg',1),
		(2122, '2123.jpg',1),
		(2123, '2123.jpg',1),
		(2124, '2123.jpg',1),
		(2125, '2123.jpg',1),
		(2111, '2113.jpg',1),
		(2112, '2113.jpg',1),
		(2113, '2113.jpg',1),
		(2114, '2113.jpg',1),
		(2115, '2113.jpg',1),
		(2021, '2023.jpg',1),
		(2022, '2023.jpg',1),
		(2023, '2023.jpg',1),
		(2024, '2023.jpg',1),
		(2025, '2023.jpg',1),
		(3151, '3153.jpg',1),
		(3152, '3153.jpg',1),
		(3153, '3153.jpg',1),
		(3154, '3153.jpg',1),
		(3155, '3153.jpg',1),
		(3121, '3123.jpg',1),
		(3122, '3123.jpg',1),
		(3123, '3123.jpg',1),
		(3124, '3123.jpg',1),
		(3125, '3123.jpg',1),
		(3111, '3113.jpg',1),
		(3112, '3113.jpg',1),
		(3113, '3113.jpg',1),
		(3114, '3113.jpg',1),
		(3115, '3113.jpg',1),
		(3141, '3143.jpg',1),
		(3142, '3143.jpg',1),
		(3143, '3143.jpg',1),
		(3144, '3143.jpg',1),
		(3145, '3143.jpg',1),
		(3021, '3023.jpg',1),
		(3022, '3023.jpg',1),
		(3023, '3023.jpg',1),
		(3024, '3023.jpg',1),
		(3025, '3023.jpg',1),
		(4041, '4043.jpg',1),
		(4042, '4043.jpg',1),
		(4043, '4043.jpg',1),
		(4044, '4043.jpg',1),
		(4045, '4043.jpg',1),
		(4071, '4073.jpg',1),
		(4072, '4073.jpg',1),
		(4073, '4073.jpg',1),
		(4074, '4073.jpg',1),
		(4075, '4073.jpg',1),
		(4091, '4093.jpg',1),
		(4092, '4093.jpg',1),
		(4093, '4093.jpg',1),
		(4094, '4093.jpg',1),
		(4095, '4093.jpg',1),
		(4031, '4033.jpg',1),
		(4032, '4033.jpg',1),
		(4033, '4033.jpg',1),
		(4034, '4033.jpg',1),
		(4035, '4033.jpg',1),
		(4111, '4113.jpg',1),
		(4112, '4113.jpg',1),
		(4113, '4113.jpg',1),
		(4114, '4113.jpg',1),
		(4115, '4113.jpg',1),
		(5031, '5033.jpg',1),
		(5032, '5033.jpg',1),
		(5033, '5033.jpg',1),
		(5034, '5033.jpg',1),
		(5035, '5033.jpg',1),
		(5021, '5023.jpg',1),
		(5022, '5023.jpg',1),
		(5023, '5023.jpg',1),
		(5024, '5023.jpg',1),
		(5025, '5023.jpg',1),
		(5011, '5013.jpg',1),
		(5012, '5013.jpg',1),
		(5013, '5013.jpg',1),
		(5014, '5013.jpg',1),
		(5015, '5013.jpg',1),
		(5051, '5053.jpg',1),
		(5052, '5053.jpg',1),
		(5053, '5053.jpg',1),
		(5054, '5053.jpg',1),
		(5055, '5053.jpg',1),
		(5111, '5113.jpg',1),
		(5112, '5113.jpg',1),
		(5113, '5113.jpg',1),
		(5114, '5113.jpg',1),
		(5115, '5113.jpg',1),
		(5081, '5083.jpg',1),
		(5082, '5083.jpg',1),
		(5083, '5083.jpg',1),
		(5084, '5083.jpg',1),
		(5085, '5083.jpg',1),
		(6011, '6013.jpg',1),
		(6012, '6013.jpg',1),
		(6013, '6013.jpg',1),
		(6014, '6013.jpg',1),
		(6015, '6013.jpg',1),
		(6091, '6093.jpg',1),
		(6092, '6093.jpg',1),
		(6093, '6093.jpg',1),
		(6094, '6093.jpg',1),
		(6095, '6093.jpg',1),
		(6031, '6033.jpg',1),
		(6032, '6033.jpg',1),
		(6033, '6033.jpg',1),
		(6034, '6033.jpg',1),
		(6035, '6033.jpg',1),
		(6021, '6023.jpg',1),
		(6022, '6023.jpg',1),
		(6023, '6023.jpg',1),
		(6024, '6023.jpg',1),
		(6025, '6023.jpg',1),
		(6161, '6163.jpg',1),
		(6162, '6163.jpg',1),
		(6163, '6163.jpg',1),
		(6164, '6163.jpg',1),
		(6165, '6163.jpg',1);

-- 여기 까지

-- 장바구니
INSERT INTO proj21_shop.cart
		(cart_member_Id, cart_pro_num, cart_pro_quantity)
values
		('test01', 1033, 1);

-- 주문 
	
INSERT INTO proj21_shop.`order`
(order_pro_num,order_member_id, pro_num, order_member_name, order_pro_quantity, order_price, order_discount, 
 receiver_name, receiver_tel1, receiver_tel2, delivery_addr1, delivery_addr2, delivery_addr3, request_to_delivery, who_pay, which_bank)
values
(1,'test01', 6163, '이종윤', 1, 5000, 0, '이종윤', '010-1234-5678', '010-1234-5678', 54545,'대구광역시 남구 봉덕동 이천로 51', '2층', '배송참고사항', '이종윤', '국민'),
(1,'test01', 1033, '이종윤', 1, 5000, 0, '이종윤', '010-1234-5678', '010-1234-5678', 54545,'대구광역시 남구 봉덕동 이천로 51', '2층', '배송참고사항', '이종윤', '국민');

-- Q&A
INSERT INTO qna
(q_title, q_option, q_member, q_content, q_file)
values
('아니이게뭐죠?', '제품상담', 'test01', '이런 제품이 있나요? 말이 됩니까? 어떻게 하실껀가요?', '첨부파일'),
('반품관련공지', '공지', 'admin', '배송이 출발하면 반품이 안됩니다.', '첨부파일');

-- 후기
INSERT INTO review
(pro_num, re_member, re_content, re_image, re_image2, re_stars)
values
(6163, 'test01', '완전 싸고 좋습니다. 강추드립니다.', 'review_test.jpg', 'review_test.jpg', 5);

-- 후기 댓글 
INSERT INTO proj21_shop.re_reply
(re_num, re_rep_member,re_rep_content)
values
(1, 'test01','후기 감사합니다.');

-- list 만들기 위한 view
CREATE VIEW productall
as
select p.pro_num,pro_category,pro_name,pro_price,pro_content,pro_salesrate,pro_cre_date,pro_status,pro_color,pro_size,pro_quantity,pro_sold,pro_hits,re_replyCount
		   ,pro_img_code,pro_imagefilename,pro_img_state
  from product p join pro_img i on p.pro_num = i.pro_num;
