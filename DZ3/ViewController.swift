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
        collectionEasyTask1()
        collectionEasyTask2()
        collectionEasyTask3()
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

}

