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
        stringHardTask1()
        stringHardTask2()
        stringHardTask3()
    }

//    Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку, где они будут разделены
//    пробелом input = “TungFam” output = “Tung Fam" Сложность задачи в том, что имя может быть любое. Например: Введя “ArtemPigor” должно вернуть
//    “Artem Pigor” Введя “AnnaSecure” должно вернуть “Anna Secure” Введя “BlaCar” должно вернуть “Bla Car” То есть алгоритм разбивает
//    два слова которые начинаются на большую букву
    func stringHardTask1() {
        print(splitByUpperCase(string: "asdAsdffsdfFGsd"))
    }

//    Создать метод который принимает как аргумент строку.
//    Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
    func stringHardTask2() {
        print(reverse(string: "Привет"))
    }

    func stringHardTask3() {
        print(format(number: "12345"))
    }

    func splitByUpperCase(string: String) -> String {
        var result = ""

        for ch in string {
            if String(ch) == String(ch).uppercased() {
                result.append(" ")
            }

            result.append(ch)
        }

        return result
    }

//    Добавить запятые в строку как их расставляет калькулятор
//    1234567 -> 1,234,567 12345 -> 12,345 (не использовать встроенный метод для применения формата)
    func format(number: String) -> String {
        var result = ""

        for (index, element) in number.reversed().enumerated() {
            result.insert(element, at: result.startIndex)

            if((index + 1) % 3 == 0 && index != number.count - 1) {
                result.insert(",", at: result.startIndex)
            }
        }

        return result
    }

    func reverse(string: String) -> String {
        var result: String = ""

        for ch in string {
            result.insert(ch, at: result.startIndex)
        }

        return result
    }
}

