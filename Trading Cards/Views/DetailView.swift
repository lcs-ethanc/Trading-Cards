//
//  DetailView.swift
//  Trading Cards
//
//  Created by Pak Ching Ethan Chen on 2024-11-12.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack{
            Text("Kid Goku")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.bottom,0.5)
                .padding(.trailing, 125)
            Image("kidGoku2")
                .resizable()
                .frame(width: 300,height: 300)
                .padding(10)
                .background(Color.white)
                .padding(5)
                .background(Color.gray)
            Text("Stats:")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.bottom,1)
            HStack{
                VStack(alignment: .leading){
                    Text("Power: 10")
                    Text("Health: 20")
                }
                .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Speed: 9")
                    Text("Ki: 7")
                }
                .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Endurance: 12")
                    Text("Battle IQ: 15")
                }
            }
            .padding(.bottom,5)
            Text("Info:")
                .font(.system(size: 30))
                .fontWeight(.regular)
                .padding(.bottom,1)
            HStack{
                
            }
            .padding(.bottom,1)
        }
    }
}

#Preview {
    DetailView()
}
