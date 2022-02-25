//
//  ContentView.swift
//  SwiftUIdatepicker
//
//  Created by daffolapmac-82 on 18/02/22.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var body: some View {
        NavigationView{
            VStack{
                DatePicker("Trip Date & Time", selection: $date,
                           in: Date()...)
                .padding()
            }
            .navigationTitle("Select Date & Time")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
