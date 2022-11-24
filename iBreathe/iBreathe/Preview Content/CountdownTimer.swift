//
//  CountdownTimer.swift
//  iBreathe
//
//  Created by Luigi Zito on 22/11/22.
//

import SwiftUI

struct CountdownTimer: View {
    
    @StateObject private var vm = Function()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    
    var body: some View {
        
        VStack(spacing: 88) {
            
            Spacer()
            
            HStack(spacing: 16) {
                
                Button(action: {print("")}){
                    Image(systemName: "minus")
                }
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .disabled(vm.isActive)
                
                Text("\(vm.time)")
                    .frame(width: 64)
                    .font(.title)
                    .fontWeight(.bold)
                
                Button(action: {print("")}){
                    Image(systemName: "plus")
                }
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .disabled(vm.isActive)
                
            }
/*
            Stepper(value: $vm.minutes, in: 1...5) {}
                .frame(width: 0)
                .disabled(vm.isActive)
*/            
            Button("Tap anywhere to start") {
                vm.start(minutes: vm.minutes)
            }
            .font(.title3)
            .foregroundColor(Color(.tertiaryLabel))
            .multilineTextAlignment(.center)
            .disabled(vm.isActive)
/*
            Button("Tap anywhere to stop", action: vm.reset)
                .font(.title3)
                .foregroundColor(Color(.tertiaryLabel))
                .multilineTextAlignment(.center)
                .disabled(vm.isActive == false)
*/
        }

        .padding(.bottom, 66)
        .onReceive(timer) { _ in
            vm.updateCountdown()
        }
        
    }
    
    
    
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        CountdownTimer()
    }
}
