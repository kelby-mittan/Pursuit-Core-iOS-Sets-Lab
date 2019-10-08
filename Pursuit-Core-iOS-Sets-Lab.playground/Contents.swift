import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()
var noDuplicateSet = Set(numbers)
//print(noDuplicateSet.sorted())
for num in noDuplicateSet.sorted() {
    numbersWithNoDuplicates.append(num)
}
//print(numbersWithNoDuplicates)
// Your code here

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var noNumArray = [Int]()
var uniqueScore = Set<Int>() // 1, 99
var removedNum: Set<Int> = [] // 77, 83 32
var scoresThatAppearOnce = [Int]()
for score in scores {
    if uniqueScore.contains(score) || removedNum.contains(score) {
        uniqueScore.remove(score)
        removedNum.insert(score)
    } else {
        uniqueScore.insert(score)
    }
}
for num in scores where uniqueScore.contains(num) {
    scoresThatAppearOnce.append(num)
}
print(scoresThatAppearOnce)
noNumArray = Array(uniqueScore)
//print(scores)
//print(noNumArray.sorted())
//for num in scores {
//    if uniqueSet.contains(num) {
//        uniqueSet.remove(num)
//    }
//    noNumArray.append(num)
//}

//print(noNumArray)
//print(scores)
//print(uniqueScore.sorted())
//var noNumbersTwice = Set(scores.sorted())


// Your code here

assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

let arrOneSet = Set(arrOne.sorted())
let arrTwoSet = Set(arrTwo)

let arrThreeSet = arrOneSet.union(arrTwoSet)
arrThree = Array(arrThreeSet.sorted())
print(arrThree)
// Your code here

//assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

let arrFourSet = Set(arrFour)
let arrFiveSet = Set(arrFive)

let arrSixSet = arrFourSet.intersection(arrFiveSet)
arrSix = Array(arrSixSet.sorted())
print(arrSix)
// Your code here

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var newSet = Set<Int>()

for num in numsOne {
    newSet.insert(num)
}
for num in numsTwo {
    newSet.insert(num)
}
for num in numsThree {
    newSet.insert(num)
}
print(newSet.sorted())
var allNumsWithNoDuplicates: [Int] = []
allNumsWithNoDuplicates = Array(newSet.sorted())
print(allNumsWithNoDuplicates)
// Your code here

assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

let alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
let lowercasedString1 = strOne.lowercased()
let lowercasedString2 = strTwo.lowercased()
let lowercasedString3 = strThree.lowercased()


var string1AsSet = Set(strOne.lowercased())
var string2AsSet = Set(strTwo.lowercased())
var string3AsSet = Set(strThree.lowercased())

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

if alphabet == string1AsSet {
    print("String1 is a Pangram")
    strOneIsPangram = true
} else {
    print("string1 is not a pangram")
    strOneIsPangram = false
}
if alphabet == string2AsSet {
    print("string2  a pangram")
    strTwoIsPangram = true
} else {
    print("string2 is not a pangram")
    strTwoIsPangram = false
}
if alphabet == string3AsSet {
    print("string3  a pangram")
    strThreeIsPangram = true
} else {
    print("string3 is not a pangram")
    strThreeIsPangram = false
}

print(Set(strOne.lowercased()))
print(Set(strTwo.lowercased()))
print(Set(strThree.lowercased()))

// Your code here

//assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









