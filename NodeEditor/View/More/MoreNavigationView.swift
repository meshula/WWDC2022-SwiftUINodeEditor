//
//  SettingsNavigationView.swift
//  ScriptNode
//
//  Created by fincher on 4/20/22.
//

import SwiftUI

struct MoreNavigationView: View {
    
    @EnvironmentObject var environment : Environment
    
    var body: some View {
        NavigationView {
            List {
                Section(content: {
                    Toggle("Use Context Menu On Nodes", isOn: $environment.useContextMenuOnNodes)
                        .font(.body.monospaced())
                    Toggle("Provide Hint On Node Connections", isOn: $environment.provideConnectionHint)
                        .font(.body.monospaced())
                    Toggle("Debug Mode", isOn: $environment.debugMode)
                        .font(.body.monospaced())
                }, header: {
                    Text("Settings")
                })
            }
            .navigationTitle("More")
        }
        .frame(minWidth: 200, idealWidth: 300, maxWidth: nil,
               minHeight: 360, idealHeight: 540, maxHeight: nil,
               alignment: .top)
    }
}

struct SettingsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MoreNavigationView()
    }
}