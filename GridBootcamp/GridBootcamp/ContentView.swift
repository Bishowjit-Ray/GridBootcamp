//
//  ContentView.swift
//  GridBootcamp
//
//  Created by Bishowjit Ray on 29/9/22.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
       
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
    
        
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400 )
            
            LazyVGrid(columns: columns,
             alignment: .center,
             spacing: 6,
                      pinnedViews: [.sectionHeaders],
             content: {
       Section(header:
                Text("Section 1")
        .foregroundColor(.white)
        .font(.title)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.blue)
        .padding()
       )
       {
           ForEach(0..<20) { index in
               Rectangle()
                   .frame(height: 150)
           }
       }
       Section(header:
                Text("Section 1")
        .foregroundColor(.white)
        .font(.title)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.red)
        .padding()
       )
       {
           ForEach(0..<20) { index in
               Rectangle()
                   .frame(height: 150)
           }
       }
    
      })
        }
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
