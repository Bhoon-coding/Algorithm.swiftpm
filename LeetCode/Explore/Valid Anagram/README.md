#  Valid Anagram

### 문제

주어진 string `s`로 `t`를 만들 수 있다면 true를 리턴, 만들 수 없다면 false를 리턴
> **Anagram**
 다른 단어나 구의 글자를 재배열하여 만든 단어 또는 구문


<img width="50%" src = "https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/0b15adc3-ccd9-4329-966f-b63a0540214d">

### 풀이 <br>
- s, t를 정렬해서 두 string의 순서들을 똑같이 만듬.
- `==` (비교연산자)를 사용해 s, t를 비교하여 같으면 true를, 다르면 false를 리턴

### 정리 <br>
https://peppo.tistory.com/205

문제 출처 <br>
https://leetcode.com/problems/valid-anagram/
