//
//  Created by Harjeet Singh on 05/09/20.
//
import Foundation
extension String: ParameterEncoding {
    
    // MARK: - Public Methods
    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()
        request.httpBody = data(using: .utf8, allowLossyConversion: false)
        return request
    }
}

extension URL {
    
    func valueOf(_ queryParamaterName: String) -> String? {
        guard let url = URLComponents(string: self.absoluteString) else { return nil }
        return url.queryItems?.first(where: { $0.name == queryParamaterName })?.value
    }
    
    func appendParameters(whereKey queryItem: String, value: Any?) -> URL? {
        guard var urlComponents = URLComponents(string: absoluteString) else { return nil}
        var queryItems: [URLQueryItem] = urlComponents.queryItems ??  []
        let queryItem = URLQueryItem(name: queryItem, value: "\(value ?? "")")
        queryItems.append(queryItem)
        urlComponents.queryItems = queryItems
        return urlComponents.url!
    }
}
