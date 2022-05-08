
import Foundation
import Alamofire

class EmployeResourse {
    // MARK: - Employe Api
    
    static let GET_ALL_EMPLOYE = "api/v1/employees"
    static let GET_SINGLE_EMPLOYE = "api/v1/employees/" //+ id
    static let CREATE_EMPLOYE = "api/v1/create"
    static let UPDATE_EMPLOYE = "api/v1/update/" //+ id
    static let DELETE_EMPLOYE = "api/v1/delete/" //+ id
    
    
    
    // MAERK: - Methode parametrs
    
    class func paramsEmpty()->Parameters {
        let params:Parameters = [:]
        return params
    }
    
    class func paramsSaveEmploye(employe:Employe)->Parameters {
        let params:Parameters = [
            "name":employe.name!,
            "salary":employe.salary!,
            "age":employe.age!
        ]
        return params
    }
    
    class func paramsUpdateEmploye(employe:Employe)->Parameters {
        let params:Parameters = [
            "name":employe.name!,
            "salary":employe.salary!,
            "age":employe.age!
        ]
        return params
    }
    
}
