//
//  ViewController.swift
//  DependenciesFromSPM
//
//  Created by Vadim Belotitskiy on 10/27/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        AF.request("https://httpbin.org/get").response { response in
            if let data = response.data,
               let str = String(data: data, encoding: .utf8)
            {
                print(">>> \(str)")
            }
        }
    }


}

