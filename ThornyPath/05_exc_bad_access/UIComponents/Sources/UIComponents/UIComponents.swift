struct UIComponents {
    var text = "Hello, World!"
}

public protocol TypedProtocol {
    associatedtype ProtocolType
    func foo() -> ProtocolType?
}

public class NilTypedProtocolImpl<ClassType>: TypedProtocol {
    public init() {}
    public func foo() -> ClassType? {
        return nil
    }
}

private final class TypedProtocolProxy<Subject: TypedProtocol>:
    NilTypedProtocolImpl<Subject.ProtocolType> {

    let subject: Subject

    init(subject: Subject) {
        self.subject = subject
    }

    override func foo() -> Subject.ProtocolType? {
        return subject.foo()
    }
}

public struct TypedProtocolBox<TestType>: TypedProtocol {
    private let base: NilTypedProtocolImpl<TestType>

    public init<T: TypedProtocol>(
        _ concrete: T
    ) where T.ProtocolType == TestType {
        base = TypedProtocolProxy(subject: concrete)
    }

    public func foo() -> TestType? {
        base.foo()
    }
}
