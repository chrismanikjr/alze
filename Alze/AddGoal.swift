//
//  AddGoal.swift
//  Alze
//
//  Created by Ridho Saputra on 15/06/22.
//

import SwiftUI

struct AddGoal: View {
    
    @State var goalTitle = ""
    @State var description = ""
    @State var repeatToggle = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            
            Text("Add Goals").font(.system(size: 24, weight: .medium))
            
            Text("Explore Activity").font(.system(size: 16, weight: .medium))
                .padding(6)
                .background(K.CustomColor.color1)
                .cornerRadius(12)
                .foregroundColor(.white)
            
            Group {
                HStack(spacing: 0.0) {
                    Text("Goal Title").font(.system(size: 16, weight: .medium))
                        .padding(.top, 8)
                    
                    Text("*").font(.system(size: 16, weight: .medium))
                        .padding(.top, 8)
                        .foregroundColor(.red)
                }
                                
                TextField("Goal Title", text: $goalTitle)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .frame(width: 350, height: 51)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(K.CustomColor.color1)
                    )
                
            }
            
            Group {
                HStack(spacing: 0.0) {
                    Text("Description").font(.system(size: 16, weight: .medium))
                        .padding(.top, 8)
                    
                    Text("*").font(.system(size: 16, weight: .medium))
                        .padding(.top, 8)
                        .foregroundColor(.red)
                }
                
                
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: $description)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .frame(width: 350, height: 140, alignment: .topLeading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(K.CustomColor.color1)
                        )
                    
                    if description == "" {
                        Text("Write a desc about the activity  …")
                            .font(.system(size: 18, weight: .regular))
                            .opacity(0.25)
                            .padding(.horizontal, 18)
                            .padding(.vertical, 20)
                    }
                }
                
            }
            
            Toggle(isOn: $repeatToggle, label: {
                Text("Repeat")
            })
            .tint(K.CustomColor.color1)
            .padding(.horizontal, 6)
            .padding(.vertical)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Done").font(.system(size: 16, weight: .medium))
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .background(K.CustomColor.color1)
                    .cornerRadius(25)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct AddGoal_Previews: PreviewProvider {
    static var previews: some View {
        AddGoal()
    }
}
