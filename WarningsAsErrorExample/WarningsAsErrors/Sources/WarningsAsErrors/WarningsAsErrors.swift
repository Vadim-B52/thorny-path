import UIKit

struct WarningsAsErrors {
    var text = "Hello, World!"

    func foo() {
        let alert = UIAlertView(
            title: "Error",
            message: "Packages with unsafe flags cannot be imported into Xcode project",
            delegate: nil,
            cancelButtonTitle: "OK"
        )
        alert.show()
    }
}
