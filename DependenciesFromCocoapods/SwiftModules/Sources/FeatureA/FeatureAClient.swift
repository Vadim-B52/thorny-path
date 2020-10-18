import Foundation
import MyNetwork

public final class FeatureAClient {

    private let network: MyNetrworkClient

    public init(_ network: MyNetrworkClient) {
        self.network = network
    }

    public func fetch(_ completion: @escaping (FeatureAModel) -> Void) {
    }
}
