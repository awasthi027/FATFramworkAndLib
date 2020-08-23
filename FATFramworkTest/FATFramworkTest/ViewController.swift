//
//  ViewController.swift
//  FATFramworkTest
//
//  Created by Ashish Awasthi on 22/08/20.
//  Copyright © 2020 Ashish Awasthi. All rights reserved.
//

import UIKit
import TestFramework
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        print("Load view")
        let obj = TODOClass()
        print(obj.doSothingWithResultData().contentType)
        print(obj.takeSwiftStaticLibAction())
    print(obj.takeSwiftStaticLibAction())
        
        // Do any additional setup after loading the view.
    }


}

