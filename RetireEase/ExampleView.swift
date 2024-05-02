//
//  ExampleView.swift
//  RetireEase
//
//  Created by Calvin Christiano on 30/04/24.
//

import SwiftUI

struct ExampleView: View {
    @State var panjang:Int = 0
    @State var lebar:Int = 0
    
    @State var output:Int = 0
    var body: some View {
        VStack{
            TextField("Panjang", value: $panjang, format: .number)
            TextField("Lebar", value: $lebar, format: .number)
            Button("calculate"){
                output = 4 * lebar
                
                var x: Int = 6
                var y: Int = 3

                var n = Int(pow(Double(x), Double(y)))
                
                output = n
            }
            
            Text("Output: \(output)")
        }
    }
}

#Preview {
    ExampleView()
}
