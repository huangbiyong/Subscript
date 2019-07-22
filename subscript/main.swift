//
//  main.swift
//  subscript
//
//  Created by chhu02 on 2019/7/22.
//  Copyright © 2019 chase. All rights reserved.
//

import Foundation

//struct Person {
//    var age = 0
//    var no  = 0
//    subscript(index: Int) -> Int {
//        set {
//            if index == 0 {
//                age = newValue
//            } else {
//                no = newValue
//            }
//        }
//        get {
//            if index == 0 {
//                return age
//            } else {
//                return no
//            }
//        }
//    }
//}
//
//var p = Person()
//p[0] = 10
//p[1] = 20
//
//print(p.age)  // 10
//print(p[0])   // 10
//
//print(p.no)  // 20
//print(p[1])  // 20




//struct Person {
//    var age = 30
//
//    subscript(index: Int) -> Int {
//        if index == 0 {
//            return age
//        } else {
//            return age * 2
//        }
//    }
//}
//
//var p = Person()
//print(p[0])  // 30
//print(p[1])  // 60


//struct Person {
//    var age = 30
//
//    subscript(index i: Int) -> Int {
//        if i == 0 {
//            return age
//        } else {
//            return age * 2
//        }
//    }
//}
//var p = Person()
//print(p[index:0])  // 30
//print(p[index:1])  // 60


//struct Person {
//    static subscript(index i: Int) -> Int {
//        if i == 0 {
//            return 30
//        } else {
//            return 60
//        }
//    }
//}
//print(Person[index:0])  // 30
//print(Person[index:1])  // 60


//struct Point {
//    var x = 0
//    var y = 0
//}
//
//class PointM {
//    var point = Point()
//    subscript(index: Int) -> Point {
//        get {
//            return point
//        }
//    }
//}
//
//var pm = PointM()
//pm[0].x = 10
//pm[0].y = 20
//


class Matix {
    var data = [
       [1,0,0],
       [0,1,0],
       [0,0,1]
    ]
    subscript(row: Int , col: Int) -> Int {
        set {
            guard row >= 0 && row < 3 && col >= 0 && col < 3 else {
                return
            }
            data[row][col] = newValue
        }
        get {
            guard row >= 0 && row < 3 && col >= 0 && col < 3 else {
                return 0
            }
            return data[row][col]
        }
    }
}

var m = Matix()
m[1, 1] = 3
m[0, 1] = 4
