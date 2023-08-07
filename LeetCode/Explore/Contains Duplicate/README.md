#  Contains Duplicate

### 문제

주어진 배열에서 중복되는 요소가 있으면 `true`를 리턴, 없다면 `false`를 리턴
<img width="50%" src = "https://hackmd.io/_uploads/r18Kkbk3n.png">

### 풀이 <br>
- 새로운 배열 numbers에 Set을 사용해서 중복되는 요소들을 걸러냄
- 주어진 배열과 numbers 배열의 길이(count)가 같지 않으면 중복된게 있다는 뜻이므로 true를 리턴하게 함. 아닐경우 false 리턴

### 정리 <br>
https://peppo.tistory.com/204

문제 출처 <br>
https://leetcode.com/problems/contains-duplicate/description/
