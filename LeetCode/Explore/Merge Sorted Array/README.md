#  Merge Sorted Array

### 문제
내림차순이 아닌 순서로 정렬된 두 정수로 된 배열 num1의 요수의 수 m만큼과 num2의 요수의 수 n만큼의 배열을 합치는 문제

<img width="50%" src = "https://hackmd.io/_uploads/H1kdOz5Op.png">

### 풀이 <br>
- num1[..<m]을 이용해 num1의 요소 첫번째~m번째까지 배열을 가져옴 
- '+' num2 의 배열을 합친후 .sorted() 메서드를 이용해 정렬 

### 정리 <br>


문제 출처 <br>
https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150
