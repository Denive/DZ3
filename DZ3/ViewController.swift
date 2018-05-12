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
      
        stringHardTask1()
        stringHardTask2()
        stringHardTask3()
        stringHardTask4()
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

    //    Добавить запятые в строку как их расставляет калькулятор
    //    1234567 -> 1,234,567 12345 -> 12,345 (не использовать встроенный метод для применения формата)
    func stringHardTask3() {
        print(format(number: "12345"))
    }

    //    проверить пароль на надежность от 1 до 5
    //    если пароль содержит числа +1
    //    символы верхнего регистра +1
    //    символы нижнего регистра +1
    //    спец символы +1
    //    если длина пароля 8 или более символов +1
    func stringHardTask4() {
        print(checkSecureLavel(password: "12345678ф,A"))
    }

    func checkSecureLavel(password: String) -> Int{
        var secureLevel = 0

        if containsNumber(password) {
            secureLevel += 1
        }

        if  containsLowcaseChar(password){
            secureLevel += 1
        }

        if  containsUpercaseChar(password){
            secureLevel += 1
        }

        if  containsSpecialChar(password){
            secureLevel += 1
        }

        if  password.count >= 8{
            secureLevel += 1
        }

        return secureLevel
    }

    func containsSpecialChar(_ string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) != nil
    }

    func containsUpercaseChar(_ string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet.uppercaseLetters) != nil
    }

    func containsLowcaseChar(_ string: String) -> Bool {
        return string.rangeOfCharacter(from: CharacterSet.lowercaseLetters) != nil
    }

    func containsNumber(_ string: String) -> Bool {
        let numbersRange = string.rangeOfCharacter(from: .decimalDigits)
        return (numbersRange != nil)
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

