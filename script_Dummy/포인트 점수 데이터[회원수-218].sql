-- 포인트 초기화
update users 
	set point = 0;

update users 
	set point = point + (select count(*) * 50 from board where user_no = 1 and board_no2 = 2)
	where user_no = 1;

select count(*) * 30 from board where user_no = 81 and board_no2 = 2;
select count(*) * 50 from board where user_no = 81 and board_no2 = 1;

-- 포인트 점수 데이터 프로시저
drop procedure if exists userPointUpdate;
delimiter $$
$$
create procedure userPointUpdate()
begin
	declare i int default 1;
	while i <= 218 do
		/* 회원이 쓴 탐방기 갯수 * 50 = point */
		update users 
			set point = point + (select count(*) * 50 from board where user_no = i and board_no2 = 1)
			where user_no = i;
		
		/* 회원이 쓴 카페추천글 갯수 * 30 = point */
		update users 
			set point = point + (select count(*) * 30 from board where user_no = i and board_no2 = 2)
			where user_no = i;
		
		set i = i + 1;
	end while;
end $$
delimiter ;
call userPointUpdate();