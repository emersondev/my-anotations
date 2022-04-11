//
//  ViewController.swift
//  my-anotations
//
//  Created by Emerson.Novais on 09/04/22.
//

import UIKit

class ViewController: UIViewController {
    let keyCode: String = "annotations"
    @IBOutlet weak var textFieldAnnotations: UITextView!
    
    @IBAction func saveAnnotations(_ sender: Any) {
        if let text = textFieldAnnotations.text {
            UserDefaults.standard.set(text, forKey: keyCode)
            print("salvou")
        }
    }
    
    func recoveryText() -> String {
        if let recoveredText = UserDefaults.standard.object(forKey: keyCode) {
            return recoveredText as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldAnnotations.text = recoveryText()
        
    }


}

