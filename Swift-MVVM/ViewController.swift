//
//  ViewController.swift
//  Swift-MVVM
//
//  Created by Luis Genaro Arvizu Vega on 6/2/19.
//  Copyright © 2019 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit
import RxSwift
class ViewController: UIViewController {
    var one: Int = 0
    var two: Int = 1
    var three = 3
    var observable: Observable<Int>!
    override func viewDidLoad() {
        super.viewDidLoad()
        observable = Observable<Int>.of(one)
        observable.subscribe(onNext: { (response) in
            print(response)
        }, onError: { (error) in
            print(error.localizedDescription)
        }, onCompleted: {
            print("OK!😎")
        }) {
            print("Dispose!🤯")
        }
        // Do any additional setup after loading the view.
        one += 1
    }


}

