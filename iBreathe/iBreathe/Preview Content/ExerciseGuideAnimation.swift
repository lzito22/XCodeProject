//
//  ExerciseGuideAnimation.swift
//  iBreathe
//
//  Created by Luigi Zito on 23/11/22.
//

import SwiftUI

struct ExerciseGuideAnimation: View {
    
    @State var animatedImage : String = ""
    @State var animatedText : String = ""
    @State var timer = Timer.publish(every: 2.0, on: RunLoop.main, in: .common).autoconnect()
    @State var index = 2
    
    var body: some View {
        
        GeometryReader { g in
            
            VStack(spacing: 16) {
                
                Image(animatedImage)
                    .offset(y: -10)
                    .onReceive(timer) { _ in
                        
                        if index<3 {
                            animatedImage = "guide\(index)"
                        } else {
                            animatedImage = "guide\(index)"
                        }
                        
                        index += 1
                        
                        if (index > 3) {
                            index = 2
                        }
                        
                    }
                
                Text(animatedText)
                    .font(.title3)
                    .italic()
                    .foregroundColor(Color(.secondaryLabel))
                    .multilineTextAlignment(.center)
                    .offset(y: -10)
                    .onReceive(timer) { _ in
                        
                        if index<3 {
                            animatedText = "Breath in for 2 seconds..."
                        } else {
                            animatedText = "Breath out for 2 seconds..."
                        }
                        
                    }
                
            }
            
            .frame(width: g.size.width, height: g.size.height)
            
        }
        
    }
    
    
    
}

struct ExerciseGuideAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseGuideAnimation()
    }
}
