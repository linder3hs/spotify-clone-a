//
//  SignInView.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 11/05/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Color("dark").ignoresSafeArea()
                    VStack {
                        Image("bg-login")
                            .resizable()
                            .frame(height: 200)
                            .padding()
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 53, height: 53)
                        
                        Text("Millions of Songs.")
                            .font(.title)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .padding(.top)

                        Text("Free on Spotify.")
                            .font(.title)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                        VStack(spacing: 20) {
                            ButtonView(title: "Sign up free", background: Color("primary"), color: .black, borderColor: .clear)
                            ButtonView(title: "Continue with Google", image: "google")
                            ButtonView(title: "Continue with Facebook", image: "facebook")
                            ButtonView(title: "Continue with Apple", image: "apple")
                            NavigationLink("Login", destination: SignUpView())
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                        }.padding(.top)
                    }
                }
            }
        }
        
    }
}

#Preview {
    SignInView()
}
