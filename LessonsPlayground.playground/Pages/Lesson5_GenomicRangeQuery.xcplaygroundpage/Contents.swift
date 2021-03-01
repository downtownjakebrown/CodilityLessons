
import Foundation

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    
    var A = [Int]()
    var C = [Int]()
    var G = [Int]()
    var T = [Int]()

    A.append(0)
    C.append(0)
    G.append(0)
    T.append(0)
    
    let byteString: [UInt8] = Array(S.utf8)
    
    let byteA: UInt8 = Array("A".utf8)[0]
    let byteC: UInt8 = Array("C".utf8)[0]
    let byteG: UInt8 = Array("G".utf8)[0]
    let byteT: UInt8 = Array("T".utf8)[0]
    
    for i in 0..<S.count {
        
        if byteString[i] == byteA {
            
            A.append(A[i] + 1)
            C.append(C[i])
            G.append(G[i])
            T.append(T[i])
            
        } else if byteString[i] == byteC {
            
            A.append(A[i])
            C.append(C[i] + 1)
            G.append(G[i])
            T.append(T[i])
            
        } else if byteString[i] == byteG {
            
            A.append(A[i])
            C.append(C[i])
            G.append(G[i] + 1)
            T.append(T[i])
            
        } else if byteString[i] == byteT {
            
            A.append(A[i])
            C.append(C[i])
            G.append(G[i])
            T.append(T[i] + 1)
            
        }
        
    }
    
    let numQueries = P.count
    var queryResults = [Int]()

    for j in 0..<numQueries {

        if A[Q[j] + 1] > A[P[j]] {
            queryResults.append(1)
        } else if C[Q[j] + 1] > C[P[j]] {
            queryResults.append(2)
        } else if G[Q[j] + 1] > G[P[j]] {
            queryResults.append(3)
        } else if T[Q[j] + 1] > T[P[j]] {
            queryResults.append(4)
        }

    }

    return queryResults
          
}

var S = "CAGCCTA"
var P = [2,5,0]
var Q = [4,5,6]

print(solution(&S, &P, &Q)) // -> [2, 4, 1]

// MARK: - Prompt

/*
 A DNA sequence can be represented as a string consisting of the letters A, C, G and T, which correspond to the types of successive nucleotides in the sequence. Each nucleotide has an impact factor, which is an integer. Nucleotides of types A, C, G and T have impact factors of 1, 2, 3 and 4, respectively. You are going to answer several queries of the form: What is the minimal impact factor of nucleotides contained in a particular part of the given DNA sequence?

 The DNA sequence is given as a non-empty string S = S[0]S[1]...S[N-1] consisting of N characters. There are M queries, which are given in non-empty arrays P and Q, each consisting of M integers. The K-th query (0 ≤ K < M) requires you to find the minimal impact factor of nucleotides contained in the DNA sequence between positions P[K] and Q[K] (inclusive).

 For example, consider string S = CAGCCTA and arrays P, Q such that:

     P[0] = 2    Q[0] = 4
     P[1] = 5    Q[1] = 5
     P[2] = 0    Q[2] = 6
 The answers to these M = 3 queries are as follows:

 The part of the DNA between positions 2 and 4 contains nucleotides G and C (twice), whose impact factors are 3 and 2 respectively, so the answer is 2.
 The part between positions 5 and 5 contains a single nucleotide T, whose impact factor is 4, so the answer is 4.
 The part between positions 0 and 6 (the whole string) contains all nucleotides, in particular nucleotide A whose impact factor is 1, so the answer is 1.
 Write a function:

 public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int]
 that, given a non-empty string S consisting of N characters and two non-empty arrays P and Q consisting of M integers, returns an array consisting of M integers specifying the consecutive answers to all queries.

 Result array should be returned as an array of integers.

 For example, given the string S = CAGCCTA and arrays P, Q such that:

     P[0] = 2    Q[0] = 4
     P[1] = 5    Q[1] = 5
     P[2] = 0    Q[2] = 6
 the function should return the values [2, 4, 1], as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..100,000];
 M is an integer within the range [1..50,000];
 each element of arrays P, Q is an integer within the range [0..N − 1];
 P[K] ≤ Q[K], where 0 ≤ K < M;
 string S consists only of upper-case English letters A, C, G, T.
*/
