//
//  ProfileViewController.swift
//  Implement Profile UI
//
//  Created by Anh Tuan on 6/4/16.
//  Copyright © 2016 Anh Tuan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Profile"
        print(navigationController?.navigationItem)
        navigationItem
        print(navigationItem)
        navigationController?.navigationItem
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        self.avatar.layer.cornerRadius = self.avatar.frame.size.width / 2
        self.avatar.layer.masksToBounds = true
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "phong-canh.jpg")!)
        
        self.tableView.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell", forIndexPath: indexPath)
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 78
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton(frame: CGRectMake(tableView.frame.size.width-100, 0, 100, 50))
        button.setTitleColor(UIColor.redColor(), forState: .Normal)
        button.setTitle("View All >", forState: .Normal)
        
        let label = UILabel(frame: CGRectMake(10, 0, 100, 50))
        label.text = "Guides"
        label.textColor = UIColor(red: 159/255, green: 152/255, blue: 143/255, alpha: 1)
        
        let headerView = UIView.init(frame: tableView.frame)
        headerView.addSubview(button)
        headerView.addSubview(label)
        headerView.backgroundColor = UIColor(red: 227/255, green: 221/255, blue: 214/255, alpha: 1)
        return headerView
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let backButton = UIBarButtonItem()
//        backButton.title = "aaa"
//        navigationItem.backBarButtonItem = backButton
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
