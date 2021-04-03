//
//  Created by Harjeet Singh on 05/09/20.
//

import Foundation


public class RequestManagerRetrier: RequestRetrier {
    
    // MARK: - Vars & Lets
    
    var numberOfRetries = 0
    
    public init() { }
    
    // MARK: - Request Retrier methods
    
    public func should(_ manager: SessionManager, retry request: Request, with error: Error, completion: @escaping RequestRetryCompletion) {
        if (error.localizedDescription == "The operation couldn’t be completed. Software caused connection abort") {
            completion(true, 1.0) // retry after 1 second
            self.numberOfRetries += 1
        } else if let response = request.task?.response as? HTTPURLResponse, response.statusCode >= 500, self.numberOfRetries < 3 {
            completion(true, 1.0) // retry after 1 second
            self.numberOfRetries += 1
        } else {
            completion(false, 0.0) // don't retry
            self.numberOfRetries = 0
        }
    }
    
}
