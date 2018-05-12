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

}

