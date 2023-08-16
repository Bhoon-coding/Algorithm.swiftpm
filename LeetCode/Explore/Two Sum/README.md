#  Two Sum

### 문제

정수의 배열로 이루어진 nums로 각각 더해서 target의 값과 같으면 해당 index들을 리턴

<img width="50%" src = "https://hackmd.io/_uploads/BymQ0Cc33.png">

### 풀이 <br>
- enumerated()를 이용해 index를 구함
- 두번째 반복문에서 nums의 index + 1 ~ nums의 갯수 만큼 반복 하게 함
    - 예)
    - 첫번째 반복 [2, 7], [2, 11], [2, 15]
    - 두번째 반복 [7, 11], [7, 15]
    - 세번째 반복 [11, 15]
- 각자 반복될때마다 요소 + 그다음 요소를 더해 target의 값과 같으면 해당 index 리턴
- result는 반복문 내 조건문에 해당하지 않을시 빈 배열 리턴

### 정리 <br>
https://peppo.tistory.com/206

문제 출처 <br>
https://leetcode.com/problems/two-sum/
