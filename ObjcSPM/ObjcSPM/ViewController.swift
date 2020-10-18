//
//  ViewController.swift
//  ObjcSPM
//
//  Created by Vadim Belotitskiy on 10/27/20.
//

import UIKit
import FeatureA

class ViewController: UIViewController {

    private lazy var client = FeatureAClient()

    override func viewDidLoad() {
        super.viewDidLoad()

        client.fetch(userId: "user", pageId: "1") { response in
            guard let response = response else { return }
            print(">>> \(response)")
        }
    }


}

