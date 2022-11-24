//
//  ExerciseGuide.swift
//  iBreathe
//
//  Created by Luigi Zito on 22/11/22.
//

import SwiftUI

struct ExerciseGuide: View {
    var body: some View {
        
        GeometryReader { g in
            
            VStack(spacing: 16) {
                
                Image("guide0")
                    .offset(y: -10)
                
                Text("“You need Equal Breathing”")
                    .font(.title3)
                    .italic()
                    .foregroundColor(Color(.secondaryLabel))
                    .multilineTextAlignment(.center)
                    .offset(y: -10)
                
            }
            
            .frame(width: g.size.width, height: g.size.height)
            
        }
        
    }
}

struct ExerciseGuide_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseGuide()
    }
}
