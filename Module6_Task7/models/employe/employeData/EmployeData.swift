
import Foundation
struct EmployeData: Decodable {
  
    var data:[EmployeInfo]?
    var message:String?
    var status:String?
    
    init() {
        
    }
    
    init(data:[EmployeInfo],message:String,status:String) {
        self.status = status
        self.data = data
        self.message = message
    }
}
