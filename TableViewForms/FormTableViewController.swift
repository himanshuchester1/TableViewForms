//
//  FormTableViewController.swift
//  TableViewForms
//
//  Created by Himanshu Sharma on 12/05/20.
//  Copyright © 2020 Himanshu Sharma. All rights reserved.
//

import UIKit

class FormTableViewController: UITableViewController {

    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var contactTextfield: UITextField!
    @IBOutlet weak var addressTextfield: UITextField!
   
    var signInShowing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    @IBAction func didTapSignIn(){
        
    }
    
    @IBAction func didTapSignUp(){
        
    }
    
    @IBAction func toggleForm(){
        signInShowing = !signInShowing
    
        if signInShowing{
          print("Sign is showing")
        }else{
          print("Sign up is showing")
        }
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let signinHiddenrows = [2,3,5,6,7,8,9,10]
        let signupHiddenrows = [8,11]
        
        if signInShowing{
            if signinHiddenrows.contains(indexPath.row){
                return 0
            }
        } else{
            if signupHiddenrows.contains(indexPath.row){
                return 0
            }
        }
        return  super.tableView(tableView, heightForRowAt: indexPath)
    }
}
