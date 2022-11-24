//
//  ContentView.swift
//  iBreathe
//
//  Created by Luigi Zito on 21/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { g in
            
            ZStack() {
                
                VStack(alignment: .leading) {
                    
                    Text("I need to...")
                        .frame(width: g.size.width, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 16.0)
                    
                    ExerciseButtons()
                    
                }
                
                ExerciseGuide()
                
                CountdownTimer()
                
            }
            
        }
        
        .padding(.top, 32.0)
        .padding(.horizontal, 16)
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
