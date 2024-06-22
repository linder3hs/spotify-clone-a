//
//  SignUpView.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 18/05/24.
//

import SwiftUI

struct SignUpView: View {
    @State var counter: Int = 0
    
    @StateObject var signUpViewModel = SignUpViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        VStack {
            ZStack {
                Color("dark")
                    .ignoresSafeArea()
                VStack {
                    ForEach(0..<signUpViewModel.elements.count, id: \.self) {index in
                        if index == counter {
                            VStack {
                                VStack(alignment: .leading) {
                                    Text(signUpViewModel.elements[index].title)
                                        .foregroundStyle(.white)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Group {
                                        if signUpViewModel.elements[index].isSecureField {
                                            SecureField("", text: binding(index: index))
                                        } else {
                                            TextField("", text: binding(index: index))
                                        }
                                    }
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 1)
                                    )
                                    .background(.gray)
                                    .foregroundStyle(.white)
                                    .padding(.bottom, 4)
                                    .keyboardType(signUpViewModel.elements[index].keyboardType)
                                    
                                    
                                    
                                    Text(signUpViewModel.elements[index].helpText)
                                        .foregroundStyle(.white)
                                        .font(.caption2)
                                }
                                
                                HStack {
                                    if counter != 0 {
                                        StepperButton(counter: $counter, isNext: false, text: "Back")
                                    }
                                    
                                    Spacer()
                                    
                                    if counter != signUpViewModel.elements.count - 1 {
                                        StepperButton(counter: $counter)
                                    } else {
                                        Button {
                                            signUpViewModel.createUser()
                                        } label: {
                                            Text("SignUp")
                                        }
                                    }
                                }.padding(.top, 30)
                            }
                        }
                        
                    }
                    Spacer()
                }
                .padding(30)
                
            }
            
        }
        .navigationTitle("Create account")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                BackButtonView()
            }
        }
        
    }
    
    private func binding(index: Int) -> Binding<String> {
        return $signUpViewModel.elements[index].value
    }
}

#Preview {
    SignUpView()
}
