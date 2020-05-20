//
//  Second View.swift
//  SketchVSXcode WatchKit Extension
//
//  Created by Antonella Cirma on 21/01/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    @State var show=false
    var color1: Color = Color.red
    var color2: Color = Color(red:1.0 , green:1.0 , blue: 0, opacity: 0.4)
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
            Spacer()
            ZStack {
                Spacer()
                HStack() {
                    Spacer()
                    Spacer()
                    Image("frecce4")
                        
                    Spacer()
                    Spacer()
                    Image("frecce2")
                        
                    Spacer()
            
                }
            //    Spacer()
//                Text("250 m")
//                    .font(.system(.largeTitle, design: .rounded))
            
            
            Circle()
                .trim(from:0.0 , to:1)
                
                .stroke(Color(red:0 , green:1.0 , blue: 0, opacity: 0.4), style: StrokeStyle(lineWidth: CGFloat(integerLiteral: 10), lineCap: .round, lineJoin: .round))
                .zIndex(0)
                .frame(width:150, height: 150)
            
            
            
            Circle()
                .trim(from: show ? 0.0: 0.99 , to:1)
                
                .stroke( Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x:1,y:0,z:0))
                .animation(.easeOut)
                .onTapGesture {
                    self.show.toggle()
                
            }
            .zIndex(100)
            .frame(width:150, height: 150)
            
            
            
            Circle()
                .trim(from:0.0 , to:1)
                
                .stroke(Color(red:1.0 , green:1.0 , blue: 0, opacity: 0.4), style: StrokeStyle(lineWidth: CGFloat(integerLiteral: 10), lineCap: .round, lineJoin: .round))
                .zIndex(0)
                .frame(width:150, height: 150)
            
            Circle()
                .trim(from: show ? 0.0: 0.99 , to:1)
                
                .stroke( Color.yellow, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x:1,y:0,z:0))
                .animation(.easeOut(duration:10))
                .onTapGesture {
                    self.show.toggle()
                    
            }
                
            .frame(width:150, height: 150)
            
            
            
            Circle()
                .trim(from:0.0 , to:1)
                
                .stroke(Color(red:1.0 , green:0 , blue: 0, opacity: 0.4), style: StrokeStyle(lineWidth: CGFloat(integerLiteral: 10), lineCap: .round, lineJoin: .round))
                .zIndex(0)
                .frame(width:150, height: 150)
            Circle()
                .trim(from: show ? 0.0: 0.99 , to:1)
                .stroke( Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x:1,y:0,z:0))
                .animation(.easeOut)
                .onTapGesture {
                    self.show.toggle()
                    
            }
                
            .frame(width:CGFloat(integerLiteral: 150), height: CGFloat(integerLiteral: 150) )
        }
    }
    
}

}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}


