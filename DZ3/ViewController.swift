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

        stringHardTask2()
    }

//    Создать метод который принимает как аргумент строку.
//    Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
    func stringHardTask2() {
        print(reverse(string: "Привет"))
    }

    func reverse(string: String) -> String {
        var result: String = ""

        for ch in string {
            result.insert(ch, at: result.startIndex)
        }

        return result
    }
}

