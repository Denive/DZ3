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

        stringEasyTask1()
    }

    //    Создать строку со своим именем.
    //    Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем.
    //    Возвращенное значение показать в консоль
    func stringEasyTask1() {
        print(length(name: "Vova"))
    }

    func length(name: String) -> Int {
        return name.count
    }

}

