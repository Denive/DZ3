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
        stringEasyTask2()
    }

    //    Создать строку со своим именем.
    //    Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем.
    //    Возвращенное значение показать в консоль
    func stringEasyTask1() {
        print(length(name: "Vova"))
    }

    //  Написать метод который принимает 2 слова, например имя и фамилию,
    //  возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
    func stringEasyTask2() {
        print(createUserName(name: "Vova", surname: "Olyinyk"))
    }

    func createUserName(name: String, surname: String) -> String {
        return "\(name.lowercased())_\(surname.lowercased())"
    }

    func length(name: String) -> Int {
        return name.count
    }
}

