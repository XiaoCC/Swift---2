//
//  ViewController.swift
//  jsq
//
//  Created by LinJingCheng on 14/6/22.
//  Copyright (c) 2014年 LinJingCheng. All rights reserved.
//

import UIKit

var data1 = ""
var data2 = ""
var data3 = ""

class ViewController: UIViewController {
                            
    @IBOutlet var jieguo: UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func touch(sender: UIButton) {
        let input = sender.currentTitle
        if input == "+" || input == "-" || input == "x" || input == "÷" {
            data3 = input
            return
        }
        else if input == "=" {
            var data:Double = 0.0
            
            switch data3 {
                case "+":
                    data = String.bridgeToObjectiveC(data1)().doubleValue + String.bridgeToObjectiveC(data2)().doubleValue
                case "-":
                    data = String.bridgeToObjectiveC(data1)().doubleValue - String.bridgeToObjectiveC(data2)().doubleValue
                case "x":
                    data = String.bridgeToObjectiveC(data1)().doubleValue * String.bridgeToObjectiveC(data2)().doubleValue
                case "÷":
                    data = String.bridgeToObjectiveC(data1)().doubleValue / String.bridgeToObjectiveC(data2)().doubleValue
            default:
                data = 0.0
            }
            
            jieguo.text = "\(data)"
            
            data1 = ""
            data2 = ""
            data3 = ""
            
            return
        }
        else if input == "c" {
            data1 = ""
            data2 = ""
            data3 = ""
            jieguo.text = "0.0"
       
        }
        
        if data3 == "" && input != "c" {
            data1 = data1 + input
            jieguo.text = data1
        }else if input != "c" {
            data2 = data2 + input
            jieguo.text = data2
        }
    }
}

