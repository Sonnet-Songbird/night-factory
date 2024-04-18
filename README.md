# 😨 *밤의 공장 <span style="color: gray">Night Factory</span>*


### 프로젝트 소개
대부분의 방탈출 예약 사이트 등은 업소의 콘셉트보다는 일반적으로 유행하는 디자인으로 설계 되었습니다.

저희조는 일반적으로 유행하는 디자인에 맞추기 보다는 호러라는 독특한 콘셉트에 적합한 UX디자인을 통해 소비자의 흥미를 유발할 수 있는 웹페이지를 구현하고자 했습니다.

프론트엔드 및, 독특한 디자인의 사이트에 호환되면서도 뷰 의존성을 배제하여 재사용 가능한 백엔드 개발 역량 습득을 위해 웹페이지를 구현하였습니다.


<br>

## 📝프로젝트 기간
* 2024.01.17 ~ 2024.04.18

 ### 조원 및 역할
 - 팀장 <a href="https://github.com/Sonnet-Songbird/" >Sonnet-Songbird</a> : PM, 개발 환경 구축, DB 설계, 아키텍처 설계, 도메인 구현
 - 팀원 <a href="https://github.com/neulhappy" >neulhappy</a> : 화면설계서 및 예약 모듈(UI 구현, API를 이용한 날짜 필터링 및 AJAX를 이용한 비동기적 데이터 처리)
 - 팀원 <a href="https://github.com/jihyun0425" >jihyun0425</a> : 게시판 모듈 구현, Bcrypt 알고리즘을 이용한 암호화, 웹사이트 UI 구현
 - 팀원 <a href="https://github.com/Yeo-ok" >Yeo-ok </a> : 웹페이지간 이동경로 매핑, SMS전송기능 설계, 예약 생성 및 취소, 결제, DB연동 구현

### 환경
- `Java 17`
- `JDK : Amazon Corretto`
- **FrameWork** : Springboot 3.2.1
- **Database** : Maria DB
- **WAS** : Tomcat embed core 10.1.17

<br>

## 🛠기능
#### <a href="#" > 예약 & 결제 관리 </a>
- Fetch API를 이용한 비동기 처리
- 예약 단계별로 예약 정보를 순차적으로 DB 저장
- 예약의 결제 상태에 따라 Ready, Paid, Failed(Ready상태에서 30분이상 결제를 하지 않을시), Cancelled 값을 주어서 중복 예약 방지
- 예약번호, 주문자, 연락처를 통해서 예약정보 확인 및 취소
  
#### <a href="#" > 게시판 </a>
- 비밀번호로 게시글 보호
- 게시글 작성, 보기, 삭제
<br>


## 🚀추후 개선 사항
### 개선 사항1
- 관리자 페이지 추가

#### 개선사항 2
- 반응형 웹페이지 추가
