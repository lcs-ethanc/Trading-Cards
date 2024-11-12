//
//  DetailView.swift
//  Trading Cards
//
//  Created by Pak Ching Ethan Chen on 2024-11-12.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading){
            ExtractedView(
                cardName: "Kid Goku",
                image: "kidGoku2",
                power: 10,
                health: 9,
                speed: 12,
                ki: 20,
                endurance: 7,
                battleIQ: 15,
                series: "Dragon Ball",
                school: "Turtle School",
                species: "Saiyan",
                powerLevel: "10-260",
                abilityOne: "Kamehameha: A powerful energy wave",
                abilityTwo: "Power Pole: A magical staff that can extend to incredible lengths."
            )
    }
}



struct ExtractedView: View {
    let cardName: String
    let image: String
    let power: Int
    let health: Int
    let speed: Int
    let ki: Int
    let endurance: Int
    let battleIQ: Int
    let series: String
    let school: String
    let species: String
    let powerLevel: String
    let abilityOne: String
    let abilityTwo: String
    var body: some View {
        Text("\(cardName)")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.bottom,0.5)
                .padding(.trailing, 125)
        Image("\(image)")
                .resizable()
                .frame(width: 300,height: 300)
                .padding(10)
                .background(Color.white)
                .padding(5)
                .background(Color.gray)
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.yellow)
                    .frame(width:100,height:50)
                Text("Stats:")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.bottom,1)
                
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Power: \(power)")
                    Text("Health: \(health)")
                }
                .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Speed: \(speed)")
                    Text("Ki: \(ki)")
                }
                .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Endurance: \(endurance)")
                    Text("Battle IQ: \(battleIQ)")
                }
            }
            .fontWeight(.bold)
            .padding(.bottom,5)
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.yellow)
                    .frame(width:80,height:50)
                Text("Info:")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.bottom,1)
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Series: \(series)")
                    Text("Species: \(species)")
                }
                
                .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("School: \(school)")
                    Text("Power Level: \(powerLevel)")
                }
            }
            .padding(.bottom,1)
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.yellow)
                    .frame(width:130,height:50)
                Text("Abilities:")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.bottom,1)
            }
            
        Text("\(abilityOne)")
            Text("\(abilityTwo)")
            
            
        }
    }
}
#Preview {
    DetailView()
}
