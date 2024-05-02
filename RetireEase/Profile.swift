//
//  ContentView.swift
//  RetireEase
//
//  Created by Calvin Christiano on 25/04/24.
//

import SwiftUI

struct Profile: View {
    @State var agenow:Int = 0
    @State var expenses:Int = 0
    @State var lifeExpectancy: Int = 0
    @State var ageRetirement:Int = 0
    @State var married:Bool = false
    @State var currency:String = ""
    @State var inflation:Int = 0
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack {
                        Text("Age Now")
                        Spacer()
                        TextField("Age Now", value: $agenow, formatter: NumberFormatter())
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Monthly Expenses Today")
                        Spacer()
                        TextField("Expense", value:$expenses, formatter: NumberFormatter())
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Life Expectancy Age")
                        Spacer()
                        TextField("Life Expectancy Age", value: $lifeExpectancy , formatter: NumberFormatter())
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Age Retirement")
                        Spacer()
                        TextField("Age Retirement", value: $ageRetirement,formatter: NumberFormatter())
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Married")
                        Spacer()
                        Picker("", selection: $married) {
                            Text("No").tag(false)
                            Text("Yes").tag(true)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
            header: {
                Text("Personal Information")
            }
                
                Section{
                    HStack {
                        Text("Currency")
                        Spacer()
                        Picker("", selection: $currency) {
                            Text("IDR").tag(false)
                            Text("USD").tag(true)
                            Text("AUD").tag(true)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    HStack {
                        Text("Inflation (%)")
                        Spacer()
                        TextField("%", value: $inflation,formatter: NumberFormatter())
                            .multilineTextAlignment(.trailing)
                    }
                }
            header: {
                Text("Other")
            }
            }
            .navigationTitle("Retirement Profile")
        }
    }
    func FutureValue() -> Int {
        
    }
}

#Preview {
    Profile()
}
