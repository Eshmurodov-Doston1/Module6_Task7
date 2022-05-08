
import Foundation
import Alamofire

class EmployeViewModel:ObservableObject {
    @Published var employes = EmployeData()
    @Published var employeInfoes = [EmployeInfo]()
    
    @Published var saveEmploye = ResEmploye()
    
    @Published var isLoading = true
    
    func getAllEmploye() {
        isLoading = true
        AFHttp.get(url: EmployeResourse.GET_ALL_EMPLOYE, params: EmployeResourse.paramsEmpty(), holder: { response in
            self.isLoading = false
            switch response.result {
            case .success:
                let employes = try! JSONDecoder().decode(EmployeData.self, from: response.data!)
                self.employes = employes
                self.employeInfoes = employes.data!
            case let .failure(error):
                print(error)
            }
        })
    }
    
    
    
    func saveEmployeData(employe:Employe) {
        AFHttp.post(url: EmployeResourse.CREATE_EMPLOYE, params: EmployeResourse.paramsSaveEmploye(employe: employe), holder: { response in
            switch response.result {
            case .success:
                let saveEmploye = try! JSONDecoder().decode(ResEmploye.self, from: response.data!)
                self.saveEmploye = saveEmploye
                print(saveEmploye.data?.id)
            case let .failure(error):
                print(error)
            }
        })
    }
    
}
