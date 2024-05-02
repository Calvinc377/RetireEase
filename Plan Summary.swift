//
//  Plan Summary.swift
//  RetireEase
//
//  Created by Calvin Christiano on 29/04/24.
//

import SwiftUI

struct Plan_Summary: View {
    var body: some View {
        NavigationStack {
            Form{
                Section {
                    Text("Your are 36 years away from retirement")
                        .padding()
                        .background(.green)
                }
                Section {
                    Text("Expected Retirement Fund")
                        .padding()
                        .background(.blue)
                }
                Section {
                    Text("Your are 36 years away from retirement")
                        .padding()
                        .background(.blue)
                }
                .navigationTitle("Plan Summary")
            }
        }
    }
}


#Preview {
    Plan_Summary()
}
