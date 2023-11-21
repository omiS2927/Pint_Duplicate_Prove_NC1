//
//  SegmentedControlView.swift
//  Pint_duplicate_prove
//
//  Created by Simona De Luca on 21/11/23.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selectedSegment = 0

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
       }
   }
   
#Preview {
    SegmentedControlView()
}
