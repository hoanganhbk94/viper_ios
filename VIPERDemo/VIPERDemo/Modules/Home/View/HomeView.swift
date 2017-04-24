//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class HomeView: UIViewController, HomeViewProtocol, UITableViewDelegate, UITableViewDataSource {
    
    let CellIdentifier      =       "UserTableViewCell"
    
    var presenter: HomePresenterProtocol?
    var array_user: [UserEntity] = []
    
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Display data
        self.presenter!.getUserToken()
        self.presenter?.getUserFromDatabase()
        
        // Register nib
        self.tableView.registerNib(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: CellIdentifier)
    }
    
    // MARK: - Action
    
    @IBAction func didLogout(sender: AnyObject) {
        self.presenter?.logoutAccount()
    }
    
    // MARK: - HomeViewProtocol
    
    func showListUser(array: [UserEntity]) {
        self.array_user = array
        self.tableView.reloadData()
    }
    
    func updateUserToken(token: String) {
        self.lblMessage.text = token
    }
    
    // MARK: - Tableview datasourse
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array_user.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! UserTableViewCell
        cell.lblUsername.text = self.array_user[indexPath.row].user_name
        
        return cell
    }
    
    // MARK: - Tableview delegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}