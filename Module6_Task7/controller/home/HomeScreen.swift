//
//  HomeScreen.swift
//  Module6_Task7
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var employeViewModel = EmployeViewModel()
    
    @State var showListItems = false
        @State var animationDelay = 0.1
    
    var body: some View {
        NavigationView {
            ZStack {
                List(self.employeViewModel.employeInfoes,id: \.id) { employeInfo in
                    ItemEmploye(employeInfo: employeInfo)
                }
                .animation(.easeIn(duration: 1))
                .listStyle(PlainListStyle())
                .navigationBarTitle("Employe List",displayMode: .inline)
                .navigationBarItems(trailing: NavigationLink(destination: {
                    AddEmploye()
                }, label: {
                    Image(systemName: "person.fill.badge.plus")
                }))
                
                if employeViewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(1.5)
                }
            }
           
        }
        .onAppear{
            self.employeViewModel.getAllEmploye()
        }
        .onDisappear{
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
