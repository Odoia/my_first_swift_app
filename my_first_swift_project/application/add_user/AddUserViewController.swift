//
//  AddUserViewController.swift
//  my_first_swift_project
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import UIKit

class AddUserViewController: UIViewController {
    public static let NIB_NAME = "AddUserViewController"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
    }
    
    @IBAction func submit(_ sender: Any) {
        let userDetail: UserDetailViewController = ViewUtils.loadNibNamed(UserDetailViewController.NIB_NAME, owner: self)
        self.present(userDetail, animated: true, completion: nil)
    }
    
    @objc func dismissKeyBoard(){
        self.view.endEditing(true)
    }
}
