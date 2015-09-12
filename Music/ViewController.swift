//
//  ViewController.swift
//  Music
//
//  Created by 麻炜怡 on 9/8/15.
//  Copyright (c) 2015 CodeMonkey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var viewAppr:UIView = UIView()


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        /*self.viewAppr.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 20);
        self.viewAppr.backgroundColor = UIColor(red: 233/255, green: 142/255, blue: 158/255, alpha: 1)
        self.view.addSubview(self.viewAppr)*/
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        //var layer: CALayer
        cell.imageView?.image = UIImage(named: "headerImage")
        cell.imageView?.layer.cornerRadius = 30
        
        print("\(cell.imageView?.image?.size.width)")
        cell.imageView?.clipsToBounds = true
        
        cell.textLabel?.text = "maweiyi"
        return cell as UITableViewCell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 88.0
    }
    


}

