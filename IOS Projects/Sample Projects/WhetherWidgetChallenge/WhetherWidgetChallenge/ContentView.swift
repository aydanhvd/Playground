//
//  ContentView.swift
//  WhetherWidgetChallenge
//
//  Created by Aydan Haqverdili on 9/15/21.
//

import SwiftUI

struct ContentView: View {
    let whetherInfo = Array.init(repeating: WhetherInfo(time: "8AM",
                                                   systemImage: "sun.max.fill",
                                                   degree: "27°",
                                                   hDegree: "30°",
                                                   lDegree: "58°"),
                            count: 5)

    var body: some View {
        VStack(spacing: 19.0) {
            HStack {
                TitleView(title: "Baku",
                          degree: "27°")
                    .previewLayout(.sizeThatFits)
                Spacer()
                DetailView(title: "Sunny",
                           systemImage: "cloud.sun.fill",
                           hDegree: "30°",
                           lDegree: "58°")
                    .previewLayout(.sizeThatFits)

            }

            HStack(spacing: 30.0) {
                ForEach(whetherInfo, id: \.time) { whether in
                    ForecastView(time: whether.time,
                                 systemImage: whether.systemImage,
                                 degree: whether.degree)
                }
            }
        }
        .frame(width: 400, height: 220, alignment: .center)
        .padding()
        .background(Color.blue.opacity(0.6))
        .border(Color.white.opacity(0.7), width: 5)
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}

struct TitleView: View {
    var title: String
    var degree: String

    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            Text(degree)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct DetailView: View {
    var title: String
    var systemImage: String
    var hDegree: String
    var lDegree: String

    var body: some View {
        VStack(alignment: .trailing) {
            Image(systemName: systemImage)
                .renderingMode(.original)
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            HStack {
                Text("H:\(hDegree)")
                Text("L:\(lDegree)")
            }
            .font(.title2)
        }
    }
}

struct ForecastView: View {
    var time: String
    var systemImage: String
    var degree: String

    var body: some View {
        VStack(spacing: 20.0) {
            Text(time)
                .fontWeight(.medium)
            Image(systemName: systemImage)
                .renderingMode(.original)
            Text(degree)
                .fontWeight(.medium)
        }
        .font(.title2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
        TitleView(title: "Baku",
                  degree: "27°")
            .previewLayout(.sizeThatFits)

        DetailView(title: "Sunny",
                   systemImage: "cloud.sun.fill",
                   hDegree: "30°",
                   lDegree: "58°")
            .previewLayout(.sizeThatFits)

        ForecastView(time: "7AM",
                     systemImage: "sun.max.fill",
                     degree: "27°")
            .previewLayout(.sizeThatFits)
    }
}


struct WhetherInfo {
    var time: String
    var systemImage: String
    var degree: String
    var hDegree: String
    var lDegree: String
}
