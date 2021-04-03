//
//  Created by Harjeet Singh on 05/09/20.
//

import Foundation

public class AlertMessage: Error {
    
    // MARK: - Vars & Lets
    
    public var title = ""
    public var body = ""
    public var isDismissRequired = false
    public var isPopRequired = false
    
    // MARK: - Intialization
    
    public init(title: String, body: String, isPopRequired: Bool = false, isDismissRequired: Bool = false) {
        self.title = title
        self.body = body
        self.isPopRequired = isPopRequired
        self.isDismissRequired = isDismissRequired
    }
    
}
