# 
<br>

# rasa 오픈소스를 활용한 대화형 업무 비서 챗봇<br>
  ( 팀명 : 도우리 )

## ☑ 서비스 소개
### ✏ 서비스명 
###       : rasa 오픈소스를 활용한 대화형 업무 비서 챗봇
### ✏ 서비스 설명
       : 기업에게 대화형 업무 비서 챗봇을 통해 서류제출 및 리마인더 기능을 제공 -> 단순업무 처리 효율을 높여 업무능률향상 및 편리함 제고
<br>

## ☑ 주요 기능
* 기안문(연차,반차) 제출
* 사직서 제출
* 휴직서 제출
* 리마인더 기능 
* 상급자 승인(웹)

<br>


 ## ☑ 담당 역할
    : Project Manager, DB 설계, Spring Web 구축, 기능구현 및 rasa 연동


### ✏ 사용기술

<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            Spring(eGovFrmae)
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            RASA
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            mysql
        </td>
    </tr>
</table><br>



* Mysql을 활용한 테이블 구조 설계 
* 쿼리문을 통한 데이터 입출력 구현
* Spring을 활용한 MVC 패턴 분리, 웹 서비스 흐름 설계
* 웹 파트 구현(기안문 제출, 수정, 삭제 및 승인/반려처리 게시판 구현)
* RASA API와 Web 연동을 통한 웹챗 구현
* RESTful 방식을 통한 데이터 통신
   
<br><br>



## ☑ 트러블슈팅
  
📌 문제1 : 데이터베이스 설계<br>
   - 테이블을 설계하다 보니 고려해야 할 사항이 많았다. 단순한 테이블이었는데도 추후 값을 가져올 것을 고려해 컬럼별 제약조건과 <br>
     연관관계를 수립하여 작성하다 보니 수정 작업이 계속해서 들어갔다. 서비스를 개발하다 잘못 설계된 부분이 발견되어도 구조 자체를 바     꾸기는 어려운 상황이 생겼다.
 
     💡  최대한 많은 상황을 고려해 쿼리문을 작성해보는것이 큰 도움이 되었다. 설계 초반부터 어떤 테이블이 필요하고, 어떻게 데이터를 가져올 것인지 고민하는 과정이 매우 중요하다는 것을 깨달았다. 
 
<br> 
<br>

📌 문제2 : 자바스크립트 코드 - 제출자, 승인자 이름 값 가져오기<br>
   - 컨트롤러, 맵퍼까지 잘 설계해서 이름이 가져와지는것을 확인했는데 새로고침 할 때 마다 제출자와 승인자 이름이 사라지는 문제가 발생했다. 사라졌다가도 다시 나타나는 현상이 반복됐다. 나타나는 것을 보면 값이 가져와 지는 것은 확실한데, 페이지 노출이 랜덤이었다.<br>

     💡  자바스크립트 흐름 문제라는 선생님의 조언을 통해 함수가 로드되는 타이밍을 계속 바꾸어 보다가 해결할 수 있었다. 저번 프로젝트에서 API를 사용할 때에도 느꼈던 것이지만, 자바스크립트는 코드 작성 뿐 아니라 흘러가는 순서가 정말 중요했다.
<br> 
<br>   


 
<br><br>

<details>
<summary><h2>☑프로젝트 상세</h2></summary>

## ☑ 프로젝트 기간
2022.07.28 ~ 2022.08.22 (4주) <br>

## 📌 SW유스케이스
![image](https://user-images.githubusercontent.com/105588954/184627602-e9100ac1-0b94-4b39-a36e-0da7bcd4f23c.png)
<br>
<br>
<br>


## 📌 서비스 흐름도
![image](https://user-images.githubusercontent.com/105588954/184627869-fa34789f-ea54-4161-88e5-4e3c090aefda.png)
![image](https://user-images.githubusercontent.com/105588954/184635921-6c535947-d778-482c-be1d-0ad8964ee6ef.png)
<br>
<br>
<br>


## 📌 ER다이어그램
![image](https://user-images.githubusercontent.com/105588954/184627698-be449b42-4356-442d-912c-aee4d760c5f9.png)


## 📌 
[화면설계서_도우리.pptx](https://github.com/2022-SMHRD-KDT-BigData-6/DoWoori/files/9336880/_.pptx)
<br>
<br>

</details>

