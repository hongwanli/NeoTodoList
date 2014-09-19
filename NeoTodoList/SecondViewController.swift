//
//  SecondViewController.swift
//  NeoTodoList
//
//  Created by neolix on 14-9-17.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//加swift群一起学习交流,群号:106413331

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate,TodoMangerPortocol {

    @IBOutlet weak var nameT: UITextField!
    
    @IBOutlet weak var descT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        todoManager.delegate = self
    }
    
//关联storyboard添加按钮的方法
    @IBAction func addTodo(sender: AnyObject) {
        todoManager.addTask(nameT.text , desc: descT.text)
        self.view.endEditing(true);
        nameT.text = ""
        descT.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    //touch方法，系统自带的方法以override开始，自己写的方法 以func开始，swift里的bool变量变为true，false,NO和YES好像不能用
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //textField的代理方法
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    //TodoMangerProtocol的代理方法
    func todoMangerAddTodo(todo: Todo) {
        println(todo)
    }

}

