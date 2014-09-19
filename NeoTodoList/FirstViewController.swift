//
//  FirstViewController.swift
//  NeoTodoList
//
//  Created by neolix on 14-9-17.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//加swift群一起学习交流,群号:106413331

import UIKit
//注:在使用代理时不需要使用<>
class FirstViewController: UIViewController,UITableViewDataSource , UITableViewDelegate {
    //关联storyboard
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //使用结构体
//        return todoManager.todos.count
        //使用数组
        return todoManager.todoList.count
    }
    //tableview的代理方法   ->来指定函数返回值
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell (style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")!
        //使用结构体
//        cell.textLabel?.text = todoManager.todoList[indexPath.row].name
//        cell.detailTextLabel?.text = todoManager.todos[indexPath.row].desc;
        // as Todo与原来的强制类型转换有点相似        //使用数组
        let todoModel: Todo = todoManager.todoList[indexPath.row] as Todo
        //不知道赋值的时候为什么要加问号  Swift教程解释说在类型后面加一个问号来标记这个变量的值是可选的。
        cell.textLabel?.text = todoModel.name
        cell.detailTextLabel?.text = todoModel.desc;
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete{
//            todoManager.todos.removeAtIndex(indexPath.row)
            //移除一条数据
            todoManager.todoList.removeObjectAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}

