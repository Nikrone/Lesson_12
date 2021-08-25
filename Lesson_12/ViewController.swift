//
//  ViewController.swift
//  Lesson_12
//
//  Created by Evgeniy Nosko on 25.08.21.
//

import UIKit

class ViewController: UIViewController {
    
//     ОПЦИОНАЛ - это Enum, в котором есть 2 кейса(1-none - нет значения, 2-some - есть значение)
    var integer: Int? = 5
//    var integer: Optional<Int> = 3 - Полная запись опционала(НЕ используется)
    var integer2:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Разворачиваем опционал 1 - СПОСОБ-Безопасный
//        if let unwrappedInteger = integer {
//            self.integer2 = unwrappedInteger
//        }
        
//        Разворачиваем опционал 2 - СПОСОБ-Безопасный (ИСПОЛЬЗУЕТСЯ ЧАЩЕ)
//        guard let unwrappedInteger = integer else {
//            return
//        }
//        self.integer2 = unwrappedInteger
        
//        Разворачиваем опционал 3 - СПОСОБ-Безопасный
//        switch integer {
//        case let unwrappedInteger:
//            <#code#>
//        default:
//            <#code#>
//        }
        
//        Разворачиваем опционал 4 - СПОСОБ-Безопасный (c присваиванием значения, если оно отсутствует "?? 3")
        let unwrappedInteger = integer ?? 3
        self.integer2 = unwrappedInteger
        
        
//        switch integer {
//        case .none:
//            print("Nil value")
//        case .some(let value):
//            print("Not nil value", value)
//        }
    
//        В опциональое значение можно присвоить обычное значение.
        
//        integer = integer2
        print(integer2)
        
        let a = A()
//        достаем значение "С", И разворачиваем опционал
//        let c = a.b?.c
        guard let b = a.b, let integer =  integer else {
            return
        }
        let c = b.c
        print(c, integer)
        
//        проверка на НАЛИЧИЕ значения
//        if integer == nil {
//
//        }
        
//        var integer: Int! - Force and wrapped Опционал! (Используется если мы знаем что значение ТОЧНО есть, разворачивать не обязательно)
        
    }

}


struct A {
    let b: B? = B()
    
    }

struct B {
    let c = 3
}
