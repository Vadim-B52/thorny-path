//
//  ViewController.swift
//  DependenciesFromCocoapods
//
//  Created by Vadim Belotitskiy on 10/27/20.
//

import UIKit
import FeatureA
import FeatureB

class ViewController: UIViewController {

    private lazy var featureAClient = FeatureAClient(NetworkClient())
    private lazy var featureBClient = FeatureBClient(NetworkClient())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

