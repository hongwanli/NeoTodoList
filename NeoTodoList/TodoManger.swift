//
//  TodoManger.swift
//  NeoTodoList
//
//  Created by neolix on 14-9-17.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//加swift群一起学习交流,群号:106413331


import UIKit

//定义结构体，有点类似对象的属性
struct todo {
    var name = "Un-Name"
    var desc = "Un-Described"
}


class Todo: NSObject {
    //Todo对象的属性，相当于原来.h里的属性var声明全局属性let声明局部属性
    var name: String = String()
    var desc: String = String()
}
//协议方法
protocol TodoMangerPortocol {
    func todoMangerAddTodo(todo: Todo)
}

class TodoManger: NSObject {
    var delegate: TodoMangerPortocol?
    //声明todo对象
    var todos = [todo]()
    //声明一个数组
    var todoList: NSMutableArray = NSMutableArray()
    //添加方法，name和desc为变量名称，后面的为变量类型
    func addTask(name: String, desc : String){
        //添加结构体
//        todos.append(todo(name: name, desc: desc))
        //添加Todo对象
        var todo1: Todo = Todo()
        todo1.name = name
        todo1.desc = desc
        todoList.addObject(todo1)
        delegate?.todoMangerAddTodo(todo1)
    }
}
//创建全局对象，let设置常量，var设置变量
var todoManager: TodoManger = TodoManger()


