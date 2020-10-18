//
//  CoreModel.swift
//  ModuleMapNotFound
//
//  Created by Vadim Belotitskiy on 10/25/20.
//

import MyLibrary

@objc
final class ApplicationModel: NSObject {
    @objc
    var nameObject: ApplicationProtocol?
}

extension MyLibraryModel: ApplicationProtocol {
    public var name: String {
        // строки берем из Bundle.main
        let string = NSLocalizedString("Hello World!", comment: "")
        return "constant_name"


    }
}


