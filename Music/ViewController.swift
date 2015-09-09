//
//  ViewController.swift
//  Music
//
//  Created by 麻炜怡 on 9/8/15.
//  Copyright (c) 2015 CodeMonkey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewAppr:UIView = UIView()


    @IBOutlet weak var viewPosition: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        /*self.viewAppr.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 20);
        self.viewAppr.backgroundColor = UIColor(red: 233/255, green: 142/255, blue: 158/255, alpha: 1)
        self.view.addSubview(self.viewAppr)*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

