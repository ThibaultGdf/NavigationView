//
//  WeatherDetail.swift
//  NavigationView
//
//  Created by Thibault GODEFROY on 22/09/2022.
//

import SwiftUI

struct WeatherDetail: View {
    let weathers : Weather
    var body: some View {
        
        HStack {
                   Image(systemName: weathers.image)
                   Text(weathers.name)
                       .padding()
               }
    }
}

struct WeatherDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetail(weathers: Weather(name: "Sun", image: "sun.max.fill"))
    }
}

