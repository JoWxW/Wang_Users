//
//  ViewController.swift
//  Wang_Users
//
//  Created by WANG Xiaowen on 05/12/2017.
//  Copyright © 2017 if26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func createTablea() {
        print("Buton Create Table")
    }
    @IBAction func insertUser() {
        print("Buton Insert User")
        let alert = UIAlertController(title:"Insert User", message:nil, preferredStyle: .alert)
        alert.addTextField{(tf)in tf.placeholder = "Name"}
        alert.addTextField{(tf)in tf.placeholder = "Email"}
        let action = UIAlertAction(title:"Submit", style:.default){(_)in
            guard
                let name = alert.textFields?.first?.text,
                let email = alert.textFields?.last?.text
                else{return}
            print(name)
            print(email)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func listUser() {
        print("Buton List User")
    }
    @IBAction func updateUser() {
        print("Buton Update User")
        let alert = UIAlertController(title:"Update User", message:nil, preferredStyle: .alert)
        alert.addTextField{(tf)in tf.placeholder = "ID"}
        let action = UIAlertAction(title:"Submit", style:.default){(_)in
            guard
                let id = alert.textFields?.first?.text
            else{return}
            print(id)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func deleteUser() {
        print("Buton Delete User")
        let alert = UIAlertController(title:"Delete User", message:nil, preferredStyle: .alert)
        alert.addTextField{(tf)in tf.placeholder = "ID"}
        let action = UIAlertAction(title:"Submit", style:.default){(_)in
            guard
                let id = alert.textFields?.first?.text
                else{return}
            print(id)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

