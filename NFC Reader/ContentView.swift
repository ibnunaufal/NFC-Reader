//
//  ContentView.swift
//  NFC Reader
//
//  Created by Macbook Pro on 13/04/2023.
//

import SwiftUI
import SwiftNFC


struct ContentView: View {
    @State private var nfcId: String? = ""
    @ObservedObject var NFCR = NFCReader()
    
    var body: some View {
        VStack {
            Text("NFC Id: \(NFCR.raw)")
            Button (action: { read() }) {
                ZStack {
                    Color.pink.opacity(0.85)
                    Label("Read NFC", systemImage: "wave.3.left.circle.fill")
                        .foregroundColor(.white)
                }
            }
            .frame(height: 75)
            .cornerRadius(10)
        }
        .padding()
    }
    
    func read() {
        NFCR.read()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
