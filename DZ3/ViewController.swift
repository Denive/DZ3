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
        stringEasyTask3()
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
    
    //  Создать строку с именем и своим отчеством.
    //  Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания.
    //  Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
    //  Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его
    func stringEasyTask3() {
        if let sex = detectSexBy(patronymic: "Витальевич"){
            print(sex)
        } else {
            print("Упс, что то пошло нетак!Проверьте отчество и попробуйте еще раз")
        }
    }

    func createUserName(name: String, surname: String) -> String {
        return "\(name.lowercased())_\(surname.lowercased())"
    }

    func length(name: String) -> Int {
        return name.count
    }

    func detectSexBy(patronymic: String) -> String? {
        let sex: String?

        if patronymic.lowercased().hasSuffix("ич") {
            sex = "M"
        } else if patronymic.lowercased().hasSuffix("на") {
            sex = "Ж"
        } else {
            sex = nil
        }

        return sex
    }
}

