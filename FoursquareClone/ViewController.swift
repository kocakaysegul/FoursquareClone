//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Ayşegül Koçak on 19.03.2023.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["calories"] = 100
        parseObject.saveInBackground { success, error in
            
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("uploaded")
            }
        }
        
    }


}

