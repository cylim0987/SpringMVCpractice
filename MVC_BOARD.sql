CREATE TABLE MVC_BOARD
(
 BID        NUMBER(4,0), --�Խ��� ��ȣ
 BNAME      VARCHAR2(20 BYTE), --�Խ��� �̸�
 BTITLE     VARCHAR2(100 BYTE), --�Խ��� ����
 BCONTENT   VARCHAR2(300 BYTE), -- �Խ��� ����
 BDATE      DATE DEFAULT sysDate, --�Խ��� ��¥
 BHIT       NUMBER(4, 0) DEFAULT 0, -- �Խ��� ��ȸ
 BGROUP     NUMBER(4, 0), -- ���� ��� �׷�
 BSTEP      NUMBER(4, 0), -- ���� ��� �׷� ����..
 BNIDENT    NUMBER(4, 0) -- ���� ��� �׷� ���° �������
 );
 
 alter table "SCOTT"."MVC_BOARD" rename column "BIDENT" to "BINDENT"; 
 
 INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT,
                             BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (1, '�θͰ���', '������ ��翡', '�ٴ������ �����Ҹ��� ����Դ�. ����ⶼ�� �غ��� ������
                �� ����̾���. �ϴ��� ���� �Ͽ���, �չٴ��� ������',
                to_date('21/06/09', 'YY/MM/DD'), 1, 1, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (2, '��¿�', '������ �޺� 0��', '���� ����� ��� ���� ������ �ǳ��� �ִ� ������� ��
                ������. �� ���ڸ� ���ؼ� ���а� ���� �޸��� �ִٸ� ����
                �ٰ� �����ߴ�.',
                to_date('17/03/01', 'YY/MM/DD'), 1, 2, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (3, '����Ÿ����', '����', '������ ���ذ� ��Ȥ�ߴ� ��ŭ
                    ���縦 �̷���ֽô� �ִԵ� �� ���ƿ��� ���� �� �� ������
                    �ŵ����� ������ Ȯ���� ��ȣ�� ��Ǫ�̴� ����̴�.',
                to_date('20/01/03', 'YY/MM/DD'), 1, 3, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (4, '�˺���', '������', '�������� �λ��� ���� �ӿ��� �����Ǵ� �� ��� ����� ��
                �ο� ���� ��� �þ� �ִ� � �ɿ��ϰ� �Ѱᰰ�� �����̴� ���ʵ� �� ���� ���̴�.',
                to_date('14/12/11', 'YY/MM/DD'), 1, 4, 0, 0);     
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (5, '�츣Ÿ', '���׳�', ' �ش� ũ�Ⱑ �پ �����ϰ� ���� ȣ��ó�� ���� �� á��. ������ �Ҳ�
                �� �̱۰Ÿ���, �Ӹ��� ���� �ϳ��ϳ��� ��Űŷȴ�. ����ҷ� ����
                ���� �濡�� ��� ���� �� ',
                to_date('07/11/29', 'YY/MM/DD'), 1, 5, 0, 0);
                
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (6, '������', '��', '���� ���� ���ؼ��� �ڽ��� �ִ�. �������� �ݵ�� ���� ����
                ��� �ڽ��̴�. ���� Ʋ������ ������ ���� ���̴�. �ڽ� �ִ�.
              ',
                to_date('13/02/09', 'YY/MM/DD'), 133, 6, 0, 0);               
 
  INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (7, '���籸', '���򿪿���', '������ ��ó�� ���� �ʾҴ�.
                ���ս� �ۿ��� ��� ���̴��� ���̰�
                �� ���� ������ ���ø� ����â����
                ��䳭�ΰ� �������� �־���.',
                to_date('12/12/12', 'YY/MM/DD'), 5, 7, 0, 0);    
                
   INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (8, 'üȣ��', '����������', '�׸����� �׾���.',
                to_date('14/08/02', 'YY/MM/DD'), 7, 8, 0, 0);           
                
    INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (9, '������', '����', ' ���ó�� �� ���� ����Ÿ��� ���� ��׳�
                ������ �� ��� ������ ������',
                to_date('18/05/29', 'YY/MM/DD'), 12, 9, 0, 0);  
                
     INSERT INTO SCOTT.MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT, BGROUP, BSTEP, BINDENT)
        VALUES (10, '�ƾ���', '�����', ' ���� �����ϸ� ���� ���� ���� �ִ� �ణ�� ����� ����ع��� ������. 
                �λ��� �ƹ��͵� �̷��� �ʱ⿡�� �ʹ��� ����',
                to_date('15/02/01', 'YY/MM/DD'), 12, 15, 0, 0);               