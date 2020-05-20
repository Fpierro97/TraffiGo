//
//  3.swift
//  SketchVSXcode WatchKit Extension
//
//  Created by Antonella Cirma on 21/01/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
        
        VStack() {
            Spacer()
            Spacer()
            Spacer()
            HStack(){
                Spacer()
                Image("frecce")
                Spacer()
                Spacer()
                Image("frecce3")
                Spacer()
            }
            Spacer()
            Spacer()
            
            HStack() {
                Spacer()
                Image("frecce4")
                Spacer()
            }
            Text("250 m")
                .font(.system(.largeTitle, design: .rounded))
            Spacer()
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
