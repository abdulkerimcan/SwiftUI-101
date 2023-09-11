//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Abdulkerim Can on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isNight = false
    var body: some View {
        ZStack {
            BackGroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Gaziantep,TUR")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :"cloud.sun.fill", temperature: 34)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 23)
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperature: 31)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "snow", temperature: 27)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                        
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek).font(.system(size: 20,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature) C°").font(.system(size: 20,weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    var isNight: Bool
    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName).font(.system(size: 32,weight: .bold,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temperature) C°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }.padding(40)
    }
}

