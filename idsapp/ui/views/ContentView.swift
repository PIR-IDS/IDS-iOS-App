//
//  ContentView.swift
//  idsapp
//
//  Created by rmonier on 05/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                TextTabs()
                Spacer()
            }
            .navigationBarTitle("IDS App")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                TopBar()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopBar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Image("ids_logo_flat")
                .resizable()
                .scaledToFit()
                .colorMultiply(Color.accentColor)
        }
        ToolbarItem(placement: .automatic) {
            Button {
                
            } label: {
                Image(systemName: "bell")
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "gearshape")
            }
        }
    }
}

struct TextTabs: View {
    @State private var selectionIndex = TabItem.services
    
    var body: some View {
        Picker("Menu", selection: $selectionIndex) {
            Text("My Services").tag(TabItem.services)
            Text("My Probes").tag(TabItem.devices)
            Text("My Network").tag(TabItem.network)
        }
        .padding()
        .pickerStyle(SegmentedPickerStyle())
    }
}
