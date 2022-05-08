//
//  ItemEmploye.swift
//  Module6_Task7
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct ItemEmploye: View {
 var employeInfo:EmployeInfo
    var body: some View {
        ZStack {
            VStack(spacing:12){
                HStack {
                    Text(employeInfo.employee_name!)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .lineLimit(2)
                    Spacer()
                    Text("Age: \(employeInfo.employee_age!)")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .lineLimit(2)
                        
                }
                HStack {
                    Text("ID: \(employeInfo.id!))")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .lineLimit(2)
                    Spacer()
                    Text("Salary: \(employeInfo.employee_salary!)")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .lineLimit(2)
                }
                
            }
            .padding(.leading,8)
            .padding(.trailing,8)
            
            Button(action: {
                print("Click Item")
            }, label: {
                
            })
        }
  
    }
}

struct ItemEmploye_Previews: PreviewProvider {
    static var previews: some View {
        ItemEmploye(employeInfo: EmployeInfo())
    }
}
