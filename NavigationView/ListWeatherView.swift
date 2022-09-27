//
//  ContentView.swift
//  NavigationView
//
//  Created by Thibault GODEFROY on 22/09/2022.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var name : String
    var image : String
    
}

var weathers : [Weather] = [
    Weather(name: "Sun", image: "sun.max.fill"),
    Weather(name: "Cloud", image: "cloud.fill"),
    Weather(name: "Storm", image: "cloud.heavyrain"),
    Weather(name: "Moon", image: "moon.fill"),
    Weather(name: "Snow", image: "snowflake"),
    Weather(name: "Tornado", image: "tornado")]

struct WeatherList: View {
    var body: some View {
        
        NavigationView{
            List(weathers) { weather in
                NavigationLink (destination: WeatherDetail(weathers: weather))
                {
                                   Image(systemName: weather.image)
                                   Text(weather.name)
                               }
            }
        }
    }
}

struct WeatherList_Previews: PreviewProvider {
    static var previews: some View {
        WeatherList()
    }
}
