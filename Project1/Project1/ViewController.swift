//
//  ViewController.swift
//  Project1
//
//  Created by Priyank Ranka on 19/08/19.
//  Copyright © 2019 Nimap Infotech. All rights reserved.
//  UILabel ---------> String

import UIKit

class ViewController: UIViewController {
    
    var nameLabel : UILabel?
    var companyLabel : UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.cyan
        
        loadNameLabel()
        loadCompanyLabel()
    }

    func loadNameLabel(){
        
        // step1 : create the model
        let name = "Priyank T Ranka"
        
        //step2 : Create teh view and initialize it's frame
        
        nameLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 40))
        
        //step3 : bind view with model
        nameLabel?.text = name // model meets view inside controller
        
        //step4: Look and feel properties (optional)
        nameLabel?.textColor = UIColor.blue
        nameLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel?.textAlignment = NSTextAlignment.center
        nameLabel?.backgroundColor = UIColor.red
        
        //step 5: Add to the parent view
        view.addSubview(nameLabel!)
        
    }
    
    func loadCompanyLabel(){
        
        companyLabel = UILabel(frame: CGRect(x: 10, y: 60, width: 300, height: 40))
        companyLabel?.text = "Nimap Infotech"
        companyLabel?.textColor = UIColor.red
        view.addSubview(companyLabel!)
    }

}

