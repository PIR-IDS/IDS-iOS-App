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
        Tabs(selectionIndex: $selectionIndex)
        TabsContent(selectionIndex: $selectionIndex)
    }
}

struct Tabs: View {
    let selectionIndex: Binding<TabItem>
    
    var body: some View {
        Picker("Menu", selection: selectionIndex) {
            Text(TabItem.services.title).tag(TabItem.services)
            Text(TabItem.devices.title).tag(TabItem.devices)
            Text(TabItem.network.title).tag(TabItem.network)
        }
        .padding()
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct TabsContent: View {
    let selectionIndex: Binding<TabItem>
    
    var body: some View {
        switch selectionIndex.wrappedValue {
        case .services: ServicesScreen()
        case .devices: DevicesScreen()
        case .network: NetworkScreen()
        }
    }
}

struct ServicesScreen: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                TabItem.services.icon
                    .font(.system(size: 30))
                    .padding(.bottom, -2)
                    .padding(.top, -10)
                Text("My Services".uppercased())
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 150, maximum: 150))],
                alignment: .center
            ) {
                ForEach(Array(Service.connectedServices), id: \.self) { item in
                    Button {
                        
                    } label : {
                        Image("ids_logo_flat")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .clipShape(Circle())
                    }
                }
                Button {
                    
                } label : {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .clipShape(Circle())
                        .opacity(0.8)
                }
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct ServicesScreen_Previews: PreviewProvider {
    static var previews: some View {
        ServicesScreen()
    }
}

struct DevicesScreen: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                TabItem.devices.icon
                    .font(.system(size: 30))
                    .padding(.bottom, 2)
                    .padding(.top, -10)
                Text("My Devices".uppercased())
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 150, maximum: 150))],
                alignment: .center
            ) {
                ForEach(Array(Device.knownDevices), id: \.self) { item in
                    Button {
                        
                    } label : {
                        Image("ids_logo_flat")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .clipShape(Circle())
                    }
                }
                Button {
                    
                } label : {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .clipShape(Circle())
                        .opacity(0.8)
                }
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct DevicesScreen_Previews: PreviewProvider {
    static var previews: some View {
        DevicesScreen()
    }
}

struct NetworkScreen: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                TabItem.network.icon
                    .font(.system(size: 30))
                    .padding(.bottom, 2)
                    .padding(.top, -10)
                Text("My Network".uppercased())
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            ZStack(alignment: .center) {
                Image(systemName: "antenna.radiowaves.left.and.right.slash")
                    .resizable()
                    .scaledToFit()
                    .padding(80)
                    .opacity(0.3)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct NetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        NetworkScreen()
    }
}
