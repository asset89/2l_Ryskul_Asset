//
//  main.swift
//  2l_Ryskul_Asset
//
//  Created by Asset Ryskul on 06.11.2021.
//

import Foundation

// MARK: - задание 1
func is_even(_ n: Int) -> Bool {
    if n % 2 == 0 {
        return true
    } else {
        return false
    }
}

// примеры
print("<---задание 1--->")
print("Веедите число или или 'q' для выхода: ")
while let n_string = readLine() {
    if n_string == "q" {
        break
    } else {
        if let n = Int(n_string) {
            if is_even(n) {
                print("Число \(n) четное")
            } else {
                print("Число \(n) нечетное")
            }
        } else {
            print("Введено неправильное или пустое значение! Введите цифры!")
        }
    }
}
print("\n")
// MARK: - задание 2
func is_divide_by_three(_ n: Int) -> Bool {
    if n % 3 == 0 {
        return true
    } else {
        return false
    }
}

// примеры
print("<---задание 2--->")
print("Веедите число или или 'q' для выхода: ")
while let n_string = readLine() {
    if n_string == "q" {
        break
    } else {
        if let n = Int(n_string) {
            if is_divide_by_three(n) {
                print("Число \(n) делится на 3 без остатка")
            } else {
                print("Число \(n) делится на 3 с остатком \(n % 3) ")
            }
        } else {
            print("Введено неправильное или пустое значение! Введите цифры!")
        }
    }
}
print("\n")
// MARK: - задание 3
var array: [Int] = []

for i in 1...100 {
    array.append(i)
}
print("<---задание 3--->")
print("Массив из 100 элементов:\n\(array)")
print("\n")
// MARK: - задание 4
var i = 0
while (i < array.count) {
    if is_even(array[i]) || !is_divide_by_three(array[i]) {
        array.remove(at: i)
    } else {
        i += 1
    }
}
print("<---задание 4--->")
print("Массив из задания 4:\n\(array)")
print("\n")
// MARK: - задание 5
func fibonacci_number(by step: Int) -> Int {
    var n1 = 0
    var n2 = 1
    var n = 0
    for _ in 0 ..< step {
        n = n1 + n2
        n1 = n2
        n2 = n
    }
    return n
}

var fib_sequence = [0,1]
for i in 1 ... 48 {
    fib_sequence.append(fibonacci_number(by: i))
}
print("<---задание 5--->")
print("Массив из последовательностей чисел Фибоначчи:\n\(fib_sequence)")
print("\n")
// MARK: - задание 6
//функция, которая возвращает массив чисел не делящихся на prime
func not_divisibles(prime: Int, arr: [Int]) -> [Int] {
    var tmp : [Int] = []
    for number in arr {
        let isDividible : Bool = number % prime == 0 ? true : false
        if (!isDividible){
            tmp.append(number)
        }
    }
    return tmp
}
// массив из 100 чисел, далее заполняем его
var nums = [Int]()
for i in 2...100 {
    nums.append(i)
}
var p = 2
// массив для хранения простых чисел
var primes: [Int] = [2]
// находим все простые числа из исходного массива nums
while nums.count > 1 {
    nums = not_divisibles(prime: p, arr: nums)
    p = nums.first!
    primes.append(p)

}
print("<---задание 6--->")
print("Массив из простых чисел:\n\(primes)")
print("\n")


