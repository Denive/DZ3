//
//  ViewController.swift
//  DZ3
//
//  Created by Владимир Олейник on 09.05.2018.
//  Copyright © 2018 Владимир Олейник. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionHardTask1()
        collectionHardTask2()
        collectionHardTask3()
        collectionHardTask4()
    }


    //    Создать метод который принимает 2 аргумента: массив строк и просто строку.
    //    Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент,
    //    который строка) в массиве (тот первый аргумент, который массив строк). например массив let array = [“one”, “two”]
    //    и если передать в этот метод “one“ то должно вернуть true а если передать “three” то должно вернуть false
    func collectionHardTask1() {
        print(contains(in: ["one", "two"], value: "one"))
    }

    func contains(in array: [String], value:String) -> Bool {
        return array.contains(value)
    }



    //    метод который выведет все ключи словаря и метод который выведет все значения словаря
    func collectionHardTask2() {
        let dataSetForTest =  ["1":"2", "3": "4"]

        printKeys(dictionary: dataSetForTest)
        printValues(dictionary: dataSetForTest)
    }

    func printKeys(dictionary: [String: String]) {
        print(dictionary.keys)
    }

    func printValues(dictionary: [String: String]) {
        print(dictionary.values)
    }

    //    Cортировка массива не встроенным методом по возрастанию + удалить дубликаты
    //    Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36] Результат должен быть [1, 2, 3, 6, 13, 36, 77]
    func collectionHardTask3() {
        let dataSetForTest =  [3, 6, 1, 2, 2, 6, 13, 77, 36]
        let  result = insertionSort(deleteDublicats(array: dataSetForTest))

        print(result)
    }

    func deleteDublicats(array: [Int]) -> [Int] {
        return Array(Set(array))
    }

    func insertionSort(_ array: [Int]) -> [Int] {
        var result = array

        for x in 1..<result.count {
            var y = x
            while y > 0 && result[y] < result[y - 1] {
                result.swapAt(y - 1, y)
                y -= 1
            }
        }
        return result
    }

    //    Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
    //    Их мы будем передавать в метод, который напишем.
    //    Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку.
    //    Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
    func collectionHardTask4() {
        let dataSetForTest = [
            "2" : [2: 3],
            "3" : [4: 5]
        ]

        print(getValue(dictionary: dataSetForTest, key: "3") as Any)
    }

    func getValue(dictionary: [String: [Int: Int]], key: String) -> [Int: Int]? {
        return dictionary[key]
    }

}

