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
    }



    //    Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    func collectionEasyTask1() {
        var array = [0, 1, 2]
        print("Before delete. Array: \(array)")

        array.removeAll()

        print("After delete. Array: \(array)")
    }

}

