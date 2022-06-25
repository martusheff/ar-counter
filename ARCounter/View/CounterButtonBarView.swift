//
//  CounterButtonBarView.swift
//  ARCounter
//
//  Created by Andronick Martusheff on 6/25/22.
//

import SwiftUI

struct CounterButtonBarView: View {
    
    @State var count: Count
    
    var body: some View {
        HStack(alignment: .center, spacing: 50) {
            
            Button { // Decrement Button
                count.num -= 1
                print("Tap -- : \(count.num)")
            } label: {
                Image(systemName: "minus.diamond")
            }

            Button { // Reset Button
                count.num = 0
                print("Tap    : \(count.num)")
            } label: {
                Image(systemName: "xmark.diamond.fill")
            }
            
            Button { // Increment Button
                count.num += 1
                print("Tap ++ : \(count.num)")
            } label: {
                Image(systemName: "plus.diamond")
            }
        }
        .padding(.bottom, 15)
        .font(.system(size: 32))
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .center)
        .background(Color.black)
        .opacity(0.87)
    }
}
