CREATE TABLE MVC_BOARD
(
 BID        NUMBER(4,0), --게시판 번호
 BNAME      VARCHAR2(20 BYTE), --게시판 이름
 BTITLE     VARCHAR2(100 BYTE), --게시판 제목
 BCONTENT   VARCHAR2(300 BYTE), -- 게시판 본문
 BDATE      DATE DEFAULT sysDate, --게시판 날짜
 BHIT       NUMBER(4, 0) DEFAULT 0, -- 게시판 조회
 BGROUP     NUMBER(4, 0), -- 같은 댓글 그룹
 BSTEP      NUMBER(4, 0), -- 같은 댓글 그룹 순서..
 BNIDENT    NUMBER(4, 0) -- 같은 댓글 그룹 몇번째 댓글인지
 );
 
 alter table "SCOTT"."MVC_BOARD" rename column "BIDENT" to "BINDENT"; 
 
 INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT,
                             BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (1, '로맹가리', '새들은 페루에', '바닷새들의 울음소리가 들려왔다. 물고기떼가 해변을 지나가
                는 모양이었다. 하늘은 온통 하였고, 먼바다의 섬들은',
                to_date('21/06/09', 'YY/MM/DD'), 1, 1, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (2, '김승옥', '서울의 달빛 0장', '나는 약솜을 사기 위해 주차장 건너편에 있는 약방으로 달
                려갔다. 그 여자를 위해서 어디론가 마냥 달리고 있다면 좋겠
                다고 생각했다.',
                to_date('17/03/01', 'YY/MM/DD'), 1, 2, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (3, '아쿠타가와', '오긴', '하지만 박해가 가혹했던 만큼
                    만사를 이루어주시는 주님도 그 무렵에는 한층 더 이 나라의
                    신도에게 영험이 확실한 가호를 베푸셨던 모양이다.',
                to_date('20/01/03', 'YY/MM/DD'), 1, 3, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (4, '알베르', '시지프', '부조리의 인색한 공기 속에서 유지되는 이 모든 삶들은 거
                부에 생을 들어 늘어 주는 어떤 심오하고 한결같은 사상없이는 지탱될 수 없을 것이다.',
                to_date('14/12/11', 'YY/MM/DD'), 1, 4, 0, 0);     
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (5, '헤르타', '숨그네', ' 해는 크기가 줄어도 난폭하고 늙은 호박처럼 속이 꽉 찼다. 눈에서 불꽃
                이 이글거리고, 머리의 세포 하나하나가 욱신거렸다. 수용소로 돌아
                가는 길에는 모든 것이 눈 ',
                to_date('07/11/29', 'YY/MM/DD'), 1, 5, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (6, '다자이', '개', '나는 개에 대해서는 자신이 있다. 언젠가는 반드시 물릴 것이
                라는 자신이다. 나는 틀림없이 개에게 물릴 것이다. 자신 있다.
              ',
                to_date('13/02/09', 'YY/MM/DD'), 133, 6, 0, 0);               
 
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (7, '곽재구', '사평역에서', '막차는 좀처럼 오지 않았다.
                대합실 밖에는 밤새 송이눈이 쌓이고
                흰 보라 수수꽃 눈시린 유리창마다
                톱밥난로가 지펴지고 있었다.',
                to_date('12/12/12', 'YY/MM/DD'), 5, 7, 0, 0);    
                
   INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (8, '체호프', '관리의죽음', '그리고…… 죽었다.',
                to_date('14/08/02', 'YY/MM/DD'), 7, 8, 0, 0);           
                
    INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (9, '기형도', '빈집', ' 장님처럼 나 이제 더듬거리며 문을 잠그네
                가엾은 내 사랑 빈집에 갇혔네',
                to_date('18/05/29', 'YY/MM/DD'), 12, 9, 0, 0);  
                
     INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (10, '아쓰시', '산월기', ' 지금 생각하면 나는 내가 갖고 있던 약간의 재능을 허비해버린 셈이지. 
                인생은 아무것도 이루지 않기에는 너무도 길지',
                to_date('15/02/01', 'YY/MM/DD'), 12, 15, 0, 0);               