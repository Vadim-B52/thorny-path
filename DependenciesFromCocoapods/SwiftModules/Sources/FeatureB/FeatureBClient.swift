import Foundation
import MyNetwork

public final class FeatureBClient {
    private let network: MyNetrworkClient

    public init(_ network: MyNetrworkClient) {
        self.network = network
    }

    public func fetch(_ completion: @escaping (FeatureBModel) -> Void) {
    }
}
