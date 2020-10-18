import Alamofire
import FeatureA_Objc
import Foundation

public final class FeatureAClient {
    public init() {
    }

    public func fetch(
        userId: String,
        pageId: String,
        completion: @escaping (FeatureAResponseDTO?) -> Void
    ) {
        let request = FeatureARequestDTO()
        request.userId = userId
        request.pageId = pageId
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let response = FeatureAResponseDTO()
            response.request = request
            response.pages = []
            completion(response)
        }
    }
}
