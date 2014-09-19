// Playground - noun: a place where people can play

import UIKit
//var设置变量
var str = "Hello, playground"
//let设置常量
let x = 30
let y = 40
println(x+y)

let label = "The width is"
let width = 94
//将数字转换成字符String()
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
//\()来把一个浮点计算转换成字符串
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//[]声明数组和字典
var shoppingList = ["catfish" , "water" , "tulips", "blue paint"]

shoppingList[1] = "bottle of water"

var occupations = ["Malcolm": "Captain", "Kaylee": "Mechanic",]

occupations["Jayne"] = "Public Relations"

var newsId = NSInteger()

var detailURL = "http://qingbin.sinaapp.com/api/html/" + String(newsId) + ".html"

