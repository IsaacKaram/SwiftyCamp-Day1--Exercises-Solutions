import Foundation

/**
    Found nearset number to ten, return 0 if inputs have the same distance.
*/
func nearesTo10(num1: Int, num2: Int)-> Int{
    let des1 = abs(10 - num1)
    let des2 = abs(10 - num2)
    
    if des1 > des2{
        return num2
    }else if des2 > des1{
        return num1
    }else{
        return 0
    }
}

// test Func nearestTo10 with possibles conditions
nearesTo10(num1: 3, num2: 7)
nearesTo10(num1: 13, num2: 7)
nearesTo10(num1: 5, num2: 18)

//------------------------------------------------------------
/**
    create a string taking characters at indexes 0, 2, 4, 6, 8... from a given string.
*/
func getStringFromEvenIndices(_ input : String) ->String{
    var res = ""
    for (index, char) in input.enumerated(){
        if index % 2 == 0{
            res.append(char)
        }
    }
    return res
}
getStringFromEvenIndices("Swifty Camp")

//------------------------------------------------------------
/**
    convert the last three characters in upper case.
*/
func switchLast3CharCase(_ input : String)-> String{
    var res = input
    if input.count < 3{
        res = input.lowercased()
    }else{
        let lastThreeChar = input.suffix(3)
        res.removeLast(3)
        res.append(lastThreeChar.uppercased())
    }
    return res
}

switchLast3CharCase("Swifty Camp")
switchLast3CharCase("Hi")

//-------------------------------------------------------------
/**
    test if the number of 1's is greater than the number of 3's of a given array of integers.
*/
func isFristGreaterThanThird(in input: [Int])->Bool{
    if input.count > 2, input[0] > input[2]{
        return true
    }
    return false
}

isFristGreaterThanThird(in: [5,8,3,4])
isFristGreaterThanThird(in: [5,8,10,4])
isFristGreaterThanThird(in: [5,8,3])
isFristGreaterThanThird(in: [5,8])
//-------------------------------------------------------------
/**
    Determine whether a given integer number is prime.
*/
func isPrime(_ num: Int)->Bool{
    for index in 2...num/2 {
        if num % index == 0{
            return false
        }
    }
    return true
}

isPrime(25)
isPrime(23)
//-------------------------------------------------------------
/**
    Determine the greatest common divisor of two positive integer numbers.
*/

func getGreatesCoomonDivisor(num1: Int, num2: Int)-> Int{
    var greatesDivisor = 0
    let minNum = min(num1, num2)
    for index in 2...minNum {
        if num1 % index == 0, num2 % index == 0{
            greatesDivisor = index
        }
    }
    return greatesDivisor
}

getGreatesCoomonDivisor(num1: 4, num2: 12)
getGreatesCoomonDivisor(num1: 63, num2: 45)
