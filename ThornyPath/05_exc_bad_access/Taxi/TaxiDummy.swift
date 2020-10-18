//
//  Dummy.swift
//  Taxi
//
//  Created by Vadim Belotitskiy on 11/8/20.
//

import Foundation
import UIComponents

protocol Temp {
}

@objc
class TestRunner: NSObject {

    @objc
    func foo() {
        let impl = NilTypedProtocolImpl<Temp>()
        let testProvider = TypedProtocolBox(impl)
        let temp = testProvider.foo()
        print(temp as Any)
        print("OK!")
    }
}
