//
//  ContentView.swift
//  EasyNote
//
//  Created by Aakash Kothari on 02/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var confirmPassword: String = ""
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var showingAlert: Bool = false
    var body: some View {
        NavigationView {
                        Form {
                            Section("Personal Details") {
                                TextField("Enter your full name", text: $fullName)
                                TextField("Enter your email", text: $email)
                            }
                            Section("Password") {
                                SecureField("Enter your password", text: $password)
                                SecureField("Confirm your password",text: $confirmPassword)
                            }
                            Section() {
                                Button {
                                    print("Sign Up!")
                                } label: {
                                    Text("Sign Up")
                                        .font(.title3)
                                        
                                }
                            }
                        }
                        .navigationTitle("Welcome to EasyNote")
                        .toolbar {
                            Button {
                                // Keyboard down
                            } label: {
                                Image(systemName: "keyboard.chevron.compact.down")
                            }

                        }
                        .alert(alertTitle, isPresented: $showingAlert) {
                            Button("OK") { }
                        } message: {
                            Text(alertMessage)
                        }

        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
