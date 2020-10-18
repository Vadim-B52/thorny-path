import Foundation

open class MyNetrworkClient {

    func get<Parameters: Encodable>(
        url: URL,
        headers: [String: String],
        body: Parameters?,
        completion: @escaping (Result<Data?, Error>) -> Void
    ) {
        fatalError()
    }

    func post<Parameters: Encodable>(
        url: URL,
        headers: [String: String],
        body: Parameters?,
        completion: @escaping (Result<Data?, Error>) -> Void
    ) {
        fatalError()
    }
}
