//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIViewController, LoginViewProtocol {
    
    var presenter: LoginPresenterProtocol?
    
    @IBOutlet weak var tfdUserName: UITextField!
    @IBOutlet weak var tfdPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Custom view
    }
    
    // MARK: - LoginViewProtocol
    
    func showErrorWithMessage(message: String) {
        print("Error: \(message)")
    }
    
    func loginSucess(token: String) {
        print("Login sucess with \(token)")
    }
    
    // MARK: - Action
    
    @IBAction func didLoginWithUserAndPass(sender: AnyObject) {
        self.presenter?.didRequestLoginWithUser(self.tfdUserName.text!, password: self.tfdPassword.text!)
    }
    
}