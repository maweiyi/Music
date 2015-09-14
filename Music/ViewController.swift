//
//  ViewController.swift
//  Music
//
<<<<<<< HEAD
//  Created by 麻炜怡 on 9/13/15.
//  Copyright © 2015 CodeMonkey. All rights reserved.
=======
//  Created by 麻炜怡 on 9/8/15.
//  Copyright (c) 2015 CodeMonkey. All rights reserved.
>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var viewAppr:UIView = UIView()
    var topPlayLists: TopPlayLists = TopPlayLists()
<<<<<<< HEAD
    
    
=======


>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
<<<<<<< HEAD
        
=======
    
>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
        /*self.viewAppr.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 20);
        self.viewAppr.backgroundColor = UIColor(red: 233/255, green: 142/255, blue: 158/255, alpha: 1)
        self.view.addSubview(self.viewAppr)*/
        self.tableView.delegate = self
        self.tableView.dataSource = self
<<<<<<< HEAD
        self.tableView.registerClass(TableCell.classForCoder(), forCellReuseIdentifier: "Cell")
        //从服务端请求数据
        self.tableView.hidden = true
        print("Hello World1")
        self.getDataFromServer()
        
    }
    
    
=======
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        //从服务端请求数据
        
        print("Hello World1")
        self.getDataFromServer()
                    
    }

>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
<<<<<<< HEAD
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.topPlayLists.listId.count
=======

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        //var layer: CALayer
<<<<<<< HEAD
        let stringUrl: NSString = NSString(string: self.topPlayLists.listImage[indexPath.row] as!String)
        let url: NSURL = NSURL(string: stringUrl as String)!
        let data: NSData = NSData(contentsOfURL: url)!
        
        cell.imageView?.image = UIImage(data: data)
=======
        cell.imageView?.image = UIImage(named: "headerImage")
>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
        
        cell.imageView?.layer.cornerRadius = 30
        cell.imageView?.clipsToBounds = true
        
<<<<<<< HEAD
        cell.textLabel?.text = self.topPlayLists.listName[indexPath.row] as! String
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
=======
        cell.textLabel?.text = "maweiyi"
>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
        
        
        return cell as UITableViewCell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 88.0
    }
    //从服务端获取数据
    func getDataFromServer() {
        
        print("Hello World2")
        
        let stringUrl: NSString = NSString(string: "http://127.0.0.1:8000/music/hello1/")
        let url: NSURL = NSURL(string: stringUrl as String)!
        
        let session: NSURLSession = NSURLSession.sharedSession()
        session.dataTaskWithURL(url, completionHandler: {
            (data, response, error) -> Void in
            
            // var jsonArray: NSMutableArray = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves) as! NSMutableArray
            
            var jsonArray: NSMutableArray? = NSMutableArray()
            
<<<<<<< HEAD
            do{
            
            jsonArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves) as! NSMutableArray
            } catch{
            
            }
            self.topPlayLists.listId.addObjectsFromArray((jsonArray?.objectAtIndex(0))! as! [AnyObject])
            self.topPlayLists.listName.addObjectsFromArray(jsonArray?.objectAtIndex(1) as! [AnyObject])
            self.topPlayLists.listImage.addObjectsFromArray(jsonArray?.objectAtIndex(2) as! [AnyObject])
            
            print("\(self.topPlayLists.listId)")
            
            print("\(self.topPlayLists.listId.count)")
            
            self.tableView.hidden = false
            self.tableView.reloadData()
            
            self.tableView.setNeedsDisplay()
            
            
            
            
=======
            /*do{
        
            jsonArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves) as! NSMutableArray
            } catch{
                
            }*/
            
            print("Hello World")
            
            print("\(jsonArray)")
            
            

>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
        })?.resume()
        
        
    }
<<<<<<< HEAD
    
=======

>>>>>>> 68c80703b098209c8afd53694263a9f8783ccf8b
}

