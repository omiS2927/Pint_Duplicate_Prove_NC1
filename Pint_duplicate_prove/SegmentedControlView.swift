//
//  SegmentedControlView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 21/11/23.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selectedSegment = 0
    
    let segments = ["Primo", "Secondo", "Terzo"]
    
    var body: some View {
        Picker("Segmenti", selection: $selectedSegment) {
            Text("Photo").tag(0)
            Text("Like").tag(1)
            Text("Collection").tag(2)
        }
        // Questo applica lo stile segmentato al picker
        .pickerStyle(.segmented)
        // Cambia il colore di sfondo del segmento selezionato
        .accentColor(.white)
        // Cambia il colore del testo (non sempre efficace in tutti i contesti)
        .foregroundColor(.white)
        // Cambia il colore di sfondo di tutto il controllo segmentato
        .background(Color.background)
        .padding()
        switch selectedSegment {
            //Photo
        case 0:
            HStack{
                
                VStack{
                    Image("tiger")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                    Image("Terra")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 200)
                        .cornerRadius(40)
                }
                VStack{
                    Image("eagle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 200)
                        .cornerRadius(40)
                    Image("Planet")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                    
                }
            }
            //Like
        case 1:
            HStack{
                VStack{
                    Image("FloBlue")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                    Image("deer")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                }
                VStack{
                    Image("Babyel")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                    Image("Cat")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 168, height: 260)
                        .cornerRadius(40)
                }
            }
            //Collection
        case 2:
            ZStack{
                Color(.title)
                    .frame(height: 200)
                    .cornerRadius(40)
                    .padding()
                    .opacity(0.12)
                HStack{
                    Spacer()
                    
                    VStack{
                        Image("deer")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        Image("Babyel")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                    }
                    
                    VStack{
                        Image("eagle")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        Image("tiger")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                    }
                    VStack{
                        Image("Cat")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        Image("frog")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                    }
                    
                    Spacer()
                    
                    
                }
            }
            
        default:
            Text("Selezione non valida")
            
        }
    }
}

#Preview {
    SegmentedControlView()
}
