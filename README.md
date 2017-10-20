# Homework 5

1. Exercises 15.3-1<br>
Which is a more efficient way to determine the optimal number of multiplications in a matrix-chain multiplication problem: enumerating all the ways of parenthesizing the product and computing the number of multiplications for each, or running RECURSIVE-MATRIX-CHAIN? Justify your answer.
    - 第十六組

```ruby
RECURSIVE-MATRIX-CHAIN(p, i, j)
    return 0 if i == j
    m[i][j] = ∞
    for k in i...j
        q = RECURSIVE-MATRIX-CHAIN(p, i, k) +
            RECURSIVE-MATRIX-CHAIN(p, k + 1, j) +
            p[i - 1] * p[k] * p[j]
        m[i][j] = q if q < m[i][j]
    return m[i][j]
```

2. Exercises 15.3‐5<br>
Suppose that in the rod-cutting problem, we also had limit l<sub>i</sub> on the number of pieces of length i that we are allowed to produce, for i = 1, 2, …, n. Show that the **optimal-substructure** property described in Section 15.1 (unit05-演算法.pdf p28) no longer holds.
    - 第二組

3. Exercises 15.5‐2<br>
Determine the cost and structure of an **optimal binary search tree** for a set of n = 7 keys with the following probabilities:
    - 第五組

| i | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| p<sub>i</sub> | | 0.04 | 0.06 | 0.08 | 0.02 | 0.10 | 0.12 | 0.14 |
| q<sub>i</sub> | 0.06 | 0.06 | 0.06 | 0.06 | 0.05 | 0.05 | 0.05 | 0.05 |

4. Problems 15-3 Bitonic Euclidean traveling-salesman problem<br>
Given n points in the xy-plane, where their x-coordinates are distinct. Design an O(n<sup>2</sup>)-time algorithm to find an optimal Bitonic Tour, that is, the shortest closed tour that starts at the leftmost point, goes strictly rightward to the rightmost point, then goes strictly leftward back to the starting point, and connects all n points.
    - 第八組

5. Problems 15-5: Edit distance unit01-演算法.pdf p14<br>
Given two sequences x[1..m] and y[1..n] and set of transformation-operation costs, the edit distance from x to y is the cost of the least expensive operation sequence that transforms x to y. Describe a dynamic-programming algorithm that finds the edit distance from x[1..m] to y[1..n] and prints an optimal operation sequence. Analyze the running time and space requirements of your algorithm.
    - transformation-operations
        - **Insert** a character into x
        - **Delete** a character from x
        - **Replace** a character from x by another character
        - **Twiddle** two adjacent characters from x
    - 第十一組

6. Find out all LCS of《ABACABAC》and《CABCBAAB》.
    - 第十四組

7. String Alignment unit01-演算法.pdf p15<br>
Let σ be an alphabet set, β denotes the blank character in σ, and a measure function F: σ×σ → R. Where F is defined as followings, for any x and y in σ, F(x, y) < 0 if x ≠ y and F(x, y) > 0 if x = y; whereas F(β, β) = -∞. Given X and Y be two strings of σ\*, let X' and Y' denote two new strings made by inserting some β into X and Y respectively. The similarity of X and Y is defined by measuring the maximal value of ![Σ\_ai∈X',bi∈Y'(F(ai,bi))](http://latex.codecogs.com/gif.latex?%5CSigma_%7Ba_i%5Cin%7BX%27%7D%2Cb_i%5Cin%7BY%27%7D%7DF%28a_i%2Cb_i%29) among all possible X' and Y'. 
    - Design an algorithm to find the similarity of X and Y.
    - Design an algorithm that describes where the blank characters are inserted to get the similarity. 
    - 第三組
