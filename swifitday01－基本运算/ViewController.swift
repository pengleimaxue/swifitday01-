//
//  ViewController.swift
//  swifitday01－基本运算
//
//  Created by 万安 on 16/4/20.
//  Copyright © 2016年 penglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = 1;//a被定义为常量后就不允许修改了
        var f = "hello Wrold";//var定义变量
        f = "penglei";
        //也可以直接给变量指定类型
        var red,green,bule:Double;
        //数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量
        let oneMillion = 1_000_000
        print(a,"I love\(f)",oneMillion);
        let twoThousand: UInt16 = 2_000
        let ont:UInt8 = 1;
        //，常量twoThousand是UInt16类型，然而常量one是UInt8类型。它们不能直接相加，因为它们类型不同。所以要调用UInt16(one)来创建一个新的UInt16数字并用one的值来初始化，然后使用这个新数字来计算
        let twoThousandAndone = twoThousand + UInt16(ont);
        //类型别名（type aliases）就是给现有类型定义另一个名字。你可以使用typealias关键字来定义类型别名。当你想要给现有类型起一个更有意义的名字时，类型别名非常有用。假设你正在处理特定长度的外部资源的数据：
        typealias AudioSample = UInt16;
        var maxAmplitudeFound = AudioSample.min;
        //Swift 有一个基本的布尔（Boolean）类型，叫做Bool。布尔值指逻辑上的值，因为它们只能是真或者假。Swift 有两个布尔常量，true和false：
        let orangesAreOrange = true;
        let turnipsAreDelicious = false;
        //元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型,你可以把任意顺序的类型组合成一个元组，这个元组可以包含所有类型。只要你想，你可以创建一个类型为(Int, Int, Int)或者(String, Bool)或者其他任何你想要的组合的元组。
        //(404, "Not Found")元组把一个Int值和一个String值组合起来表示 HTTP 状态码的两个部分：一个数字和一个人类可读的描述。这个元组可以被描述为“一个类型为(Int, String)的元组”
        let http404Error = (404,"Not Found");
        //你可以将一个元组的内容分解（decompose）成单独的常量和变量，然后你就可以正常使用它们了
        let (statusCode,statisMessage) = http404Error;
        //输出为The status code is (404, "Not Found")
        print("The status code is \(statusCode,(statisMessage))");
        //如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线（_）标记：
        let (justTheStatusCode,_) = http404Error;
        print(justTheStatusCode);
        //此外，你还可以通过下标来访问元组中的单个元素，下标从零开始
        print(http404Error.0);
        //你可以在定义元组的时候给单个元素命名,给元组中的元素命名后，你可以通过名字来获取这些元素的值：
        let http404Status = (statu:200,description:"error");
        //输出200 error
        print(http404Status.statu,http404Status.description);
        //可选类型使用可选类型（optionals）来处理值可能缺失的情况。可选类型表示：有值，等于 x或者没有值
        //ResponeseCode包含一个可选的Int值404
        var ResponeseCode:Int? = 404;
        //你可以给可选变量赋值为nil来表示它没有值,ResponeseCode现在不包含值nil不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型
        ResponeseCode = nil;
        //如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为nil
        //Swift 的nil和 Objective-C 中的nil并不一样。在 Objective-C 中，nil是一个指向不存在对象的指针。在 Swift 中，nil不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为nil，不只是对象类型
        var Answer:String?;//answer被自动设置为nil
        Answer = "peng";
        //你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）
        if Answer != nil{
            //输入结果:Answer has an string value of peng
            print("Answer has an string value of \(Answer!)");
        
        }
        //可选绑定:使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在if和while语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量
        let str: String? = "peng"
        //if 判断可选变量 str 是否为nil,如果str不为nil程序将会对str执行强制解析，并将解析到的值赋给actilanswer
        if let actulAnswer = str {
          //输出结果'Optional("peng")'has an string value of peng
               print("\'\(str)\'has an string value of \(actulAnswer)")
        }
        //隐式解析可选类型有时候在程序架构中，第一次被赋值之后，可以确定一个可选类型_总会_有值。在这种情况下，每次都要判断和解析可选值是非常低效的，因为可以确定它总会有值。这种类型的可选状态被定义为隐式解析可选类型（implicitly unwrapped optionals）。把想要用作可选的类型的后面的问号（String?）改成感叹号（String!）来声明一个隐式解析可选类型。当可选类型被第一次赋值之后就可以确定之后一直有值的时候，隐式解析可选类型非常有用。隐式解析可选类型主要被用在 Swift 中类的构造过程中
        let possibleString:String? = "peng";
        let forcedString :String = possibleString!;//需要感叹号执行强制解析
        let s :String! = "peng";
        let s1 :String = s;//不需要感叹号执行强制解析
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
   

    

}

