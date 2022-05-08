//
//  AddEmploye.swift
//  Module6_Task7
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct AddEmploye: View {
    @State var name = ""
    @State var salary = ""
    @State var age = ""
    
    @State var idLog = 5072
    
    @ObservedObject var employeVm = EmployeViewModel()
    var body: some View {
       
            VStack {
                Form {
                    Section(header:Text("Data Employe")){
                        TextField("Name",text: $name)
                            .frame(width: .infinity, height: 35)
                        TextField("Salary",text: $salary)
                            .frame(width: .infinity, height: 35)
                        TextField("Age",text: $age)
                            .frame(width: .infinity, height: 35)
                    }
                }
                .background(.white)
               
                Button(action: {
                    if name.isEmpty==false && salary.isEmpty==false && age.isEmpty==false {
                        employeVm.saveEmployeData(employe: Employe(id: idLog, name:self.name, salary: self.salary, age: self.age))
                        idLog += 1
                    }
                }, label: {
                    Text("Save Employe")
                       
                        .frame(width: 150, height: 40,alignment: .center)
                        
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding()
              
              
               
                
            }
            .background(.white)
            .navigationBarTitle("Add Employe",displayMode: .inline)
        
        
            
        
   
    }
}

struct AddEmploye_Previews: PreviewProvider {
    static var previews: some View {
        AddEmploye()
    }
}
