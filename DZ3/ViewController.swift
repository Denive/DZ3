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
        var a = array

        for x in 1..<a.count {
            var y = x
            while y > 0 && a[y] < a[y - 1] {
                a.swapAt(y - 1, y)
                y -= 1
            }
        }
        return a
    }

}

