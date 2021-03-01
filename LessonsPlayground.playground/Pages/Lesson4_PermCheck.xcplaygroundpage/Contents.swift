
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    let isPermutation = 1
    let notPermutation = 0
    
    if A.count == 0 {
        return notPermutation
    }
    
    let sortedValues = A.sorted(by: { $0 < $1 })
    
    for i in 0..<sortedValues.count {
        if sortedValues[i] != (i + 1) {
            return notPermutation
        }
    }
    
    return isPermutation
    
}

var A1 = [4,1,3,2]
var A2 = [4,1,3]
var A3 = [1,2,3,3]

print(solution(&A1)) // -> 1
print(solution(&A2)) // -> 0
print(solution(&A3)) // -> 0



// MARK: - Prompt

/*
 
A non-empty array A consisting of N integers is given.

A permutation is a sequence containing each element from 1 to N once, and only once.

For example, array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
    A[3] = 2
is a permutation, but array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
is not a permutation, because value 2 is missing.

The goal is to check whether array A is a permutation.

Write a function:

public func solution(_ A : inout [Int]) -> Int

that, given an array A, returns 1 if array A is a permutation and 0 if it is not.

For example, given array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
    A[3] = 2
the function should return 1.

Given array A such that:

    A[0] = 4
    A[1] = 1
    A[2] = 3
the function should return 0.

Write an efficient algorithm for the following assumptions:

N is an integer within the range [1..100,000];
each element of array A is an integer within the range [1..1,000,000,000].

*/
