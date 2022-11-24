//
//  ExerciseButtons.swift
//  iBreathe
//
//  Created by Luigi Zito on 21/11/22.
//

import SwiftUI

struct ExerciseButtons: View {
    var body: some View {
        
        GeometryReader { g in
            
            HStack(spacing: 12) {
                
                Button("Focus") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .foregroundColor(.white)
                .frame(width: (g.size.width/3-8), height: 40)
                .background(.blue)
                .cornerRadius(8)
                
                Button("Relax") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .foregroundColor(.black)
                .frame(width: (g.size.width/3-8), height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                
                Button("Sleep") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .foregroundColor(.black)
                .frame(width: (g.size.width/3-8), height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                
            }
            
        }
        
    }
}

struct ExerciseButtons_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseButtons()
    }
}
