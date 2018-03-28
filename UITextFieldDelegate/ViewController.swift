//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by D7703_28 on 2018. 3. 22..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//
import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtInput.delegate = self
        
        txtInput.placeholder = "입력하세요"
        txtInput.clearButtonMode = UITextFieldViewMode.whileEditing
        
        // Do any additional setup after loading the view, typically from a nib.
        // Delegate와 ViewController 연결
        txtInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btInput(_ sender: Any) {
        lblResult.text = "Hello " + txtInput.text!
        txtInput.text = ""
        txtInput.resignFirstResponder()
    }
    
    //view를 터치하면 키패드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtInput.resignFirstResponder()
        view.backgroundColor = UIColor.yellow
    }
    
    //UITextFieldDelegate Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtInput.resignFirstResponder()
        view.backgroundColor = UIColor.black
        return true
    }

    //clear button 눌렀을때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        txtInput.backgroundColor = UIColor.cyan
        return true
    }
}

