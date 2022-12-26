//
//  SidebarView.swift
//  SidebarView
//
//  Created by Aydan Haqverdili on 12/19/22.
//
import SwiftUI

struct SidebarView: View {
  @Binding var selection: EventType?

  var body: some View {
    List(selection: $selection) {
      Section("TODAY") {
        ForEach(EventType.allCases, id: \.self) { type in
          Text(type.rawValue)
        }
      }
    }
    .listStyle(.sidebar)
  }
}

struct SidebarView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SidebarView(selection: .constant(nil))
        .preferredColorScheme(.light)
        .frame(width: 200)
      SidebarView(selection: .constant(nil))
        .preferredColorScheme(.dark)
        .frame(width: 200)
    }
  }
}
