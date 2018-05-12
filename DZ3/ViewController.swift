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
      
        collectionEasyTask1()
        collectionEasyTask2()
        collectionEasyTask3()
        collectionEasyTask4()
        collectionEasyTask5()
        collectionEasyTask6()
      
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

    //    Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    func collectionEasyTask1() {
        var array = [0, 1, 2]
        print("Before delete. Array: \(array)")

        array.removeAll()

        print("After delete. Array: \(array)")
    }

    //Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль
    func collectionEasyTask2() {
        let firstArray = [1,2,3]
        let secondArray = [4,5,6]

        let result = firstArray + secondArray

        print(result)
    }

    //    Создать массив с любыми значениями типа строка(во viewDidLoad()).
    //    Создать метод который будет принимать как аргумент массив.
    //    Метод должен выводить в консоль элементы массива (по одному в одной строке)
    func collectionEasyTask3() {
        printArray(["123", "asd", "###"])
    }

    func printArray(_ array: [String]) {
        for string in array {
            print(string)
        }
    }
    //    Создать массив с любыми значениями типа строка.
    //    Создать метод который будет принимать как аргумент массив.
    //    Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
    func collectionEasyTask4() {
        print(firstAndLastElement(array: ["1", "2", "3"]))
    }

    func firstAndLastElement(array: [String]) -> [String?]{
        return [
            array.first,
            array.last
        ]
    }

    //    Создать словарь в котором ключ будет Строкой а значение Целым.
    //    Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    //    Добавить в данный словарь еще 2 новых элемента.
    func collectionEasyTask5() {
        var dictionary = [
            "Vova" : 1,
            "Jon" : 2,
            "Alex" : 3
        ]

        dictionary["Ivan"] = 3
        dictionary["Test"] = 5
    }

    //    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
    //    Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка.
    //    Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    //    Например: передаваемый словарь будет такой: ["Max": 1, "Dasha": 2, "Sergey": 3]
    //    И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".
    func collectionEasyTask6() {
        print(deleteElement(dictionary: [
            "Vova" : 1,
            "Jon" : 2,
            "Alex" : 3
            ], key: "Vova"))
    }

    func deleteElement(dictionary: [String: Int], key: String) -> [String: Int] {
        var result = dictionary
        result.removeValue(forKey: key)
        return result
    }
}

