//
//  ViewController.swift
//  Calculator
//
//  Created by soslab on 2016/3/12.
//  Copyright © 2016年 soslab. All rights reserved.
//

import UIKit

func cal(numberA:Float ,NumberB numberB:Float,Cal Operator:(Float,Float)->Float)->Float{
    let res =  Operator(numberA,numberB)
    return res
}



class ViewController: UIViewController {
    
    var temp:Float = 0
    var number:[Float] = []
    var Operator:[(Float,Float)->Float] = []
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func number0(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "0"
        }else{
            let res = String(self.resultLabel.text!) + "0"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number00(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "0"
        }else{
            let res = String(self.resultLabel.text!) + "00"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number1(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "1"
        }else{
            let res = String(self.resultLabel.text!) + "1"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number2(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "2"
        }else{
            let res = String(self.resultLabel.text!) + "2"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number3(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "3"
        }else{
            let res = String(self.resultLabel.text!) + "3"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number4(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "4"
        }else{
            let res = String(self.resultLabel.text!) + "4"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number5(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "5"
        }else{
            let res = String(self.resultLabel.text!) + "5"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number6(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "6"
        }else{
            let res = String(self.resultLabel.text!) + "6"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number7(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "7"
        }else{
            let res = String(self.resultLabel.text!) + "7"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number8(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "8"
        }else{
            let res = String(self.resultLabel.text!) + "8"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func number9(sender: AnyObject) {
        if(Float(self.resultLabel.text!)! == 0 && self.resultLabel.text!.containsString(".") == false && self.resultLabel.text!.containsString("-") == false){
            self.resultLabel.text = "9"
        }else{
            let res = String(self.resultLabel.text!) + "9"
            self.resultLabel.text = "\(res)"
        }
    }
    
    @IBAction func dot(sender: AnyObject) {
        if(self.resultLabel.text!.containsString(".")){
            return
        }else{
            let res = String(self.resultLabel.text!) + "."
            self.resultLabel.text="\(res)"
        }
    }
    
    @IBAction func buttonAC(sender: AnyObject) {
        self.resultLabel.text = "0"
        temp = 0
        number = []
        Operator = []
    }
    
    @IBAction func change(sender: AnyObject) {
        if(self.resultLabel.text!.containsString("-")){
            self.resultLabel.text?.removeAtIndex((self.resultLabel.text?.startIndex)!)
        }else{
            self.resultLabel.text?.insert("-", atIndex: (self.resultLabel.text?.startIndex)!)
            
        }
        
    }
    
    @IBAction func percentage(sender: AnyObject) {
        let res = Float(self.resultLabel.text!)!/100
        self.resultLabel.text = "\(res)"
    }
    
    @IBAction func increase(sender: AnyObject) {
        if(number.count == 0){
            number.insert(Float(self.resultLabel.text!)!, atIndex:0)
            Operator.insert((+), atIndex:0)
            self.resultLabel.text = "0"
        }else{
            temp += Float(cal(Float(number.popLast()!), NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
            Operator.insert((+), atIndex:0)
            self.resultLabel.text = "0"
        }
    }
    
    @IBAction func decrease(sender: AnyObject) {
        if(number.count == 0){
            number.insert(Float(self.resultLabel.text!)!, atIndex:0)
            Operator.insert((-), atIndex:0)
            self.resultLabel.text = "0"
        }else{
            temp += Float(cal(Float(number.popLast()!), NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
            Operator.insert((-), atIndex:0)
            self.resultLabel.text = "0"
        }    }
    
    @IBAction func multipliy(sender: AnyObject) {
        if(number.count == 0){
            number.insert(Float(self.resultLabel.text!)!, atIndex:0)
            Operator.insert((*), atIndex:0)
            self.resultLabel.text = "0"
        }else{
            temp += Float(cal(Float(number.popLast()!), NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
            Operator.insert((*), atIndex:0)
            self.resultLabel.text = "0"
        }
    }
    
    @IBAction func divide(sender: AnyObject) {
        if(number.count == 0){
            number.insert(Float(self.resultLabel.text!)!, atIndex:0)
            Operator.insert((/), atIndex:0)
            self.resultLabel.text = "0"
        }else{
            temp += Float(cal(Float(number.popLast()!), NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
            Operator.insert((/), atIndex:0)
            self.resultLabel.text = "0"
        }
    }
    
    @IBAction func equal(sender: AnyObject) {
        if(temp == 0){
            if(number.count>0){
                let res = Float(cal(number.popLast()!, NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
                self.resultLabel.text = "\(res)"
            }else{
                self.resultLabel.text = "0"
            }
        }else{
            let res = Float(cal(temp, NumberB: Float(self.resultLabel.text!)!, Cal: Operator.popLast()!))
            self.resultLabel.text = "\(res)"
        }
        temp = 0
        number = []
        Operator = []
    }
    
}

