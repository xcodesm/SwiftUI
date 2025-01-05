

A sample SwiftUI app demonstrating SwiftData (iOS 17+), OpenWeather's One Call 3.0 API, and MapKit with CoreLocation.

Summary

This app allows you to:

Automatically load London weather on first launch.

Search for a new city using Apple’s geocoder (CoreLocation).

Store and revisit city locations in a SwiftData database.

Display top 5 local tourist attractions on a SwiftUI Map.


Requirements

iOS 17 or later

Xcode 15 or later

A valid OpenWeather API key


Setup

Open WeatherMapPlaceViewModel.swift and insert your OpenWeather API key in the fetchWeatherData method.

Build and run on an iOS 17+ device or simulator.


Folder Structure

CWKTemplate24App.swift: Main app entry point.

WeatherMapPlaceViewModel.swift: Handles API calls, geocoding, and data updates.

Models/:

WeatherDataModel.swift: Codable structs for weather/forecast.

AirDataModel.swift: Codable struct for air quality data.

LocationModel.swift: SwiftData model for stored places.

Views/:

NavBarView.swift: Main container with tab navigation.

CurrentWeatherView.swift, ForecastWeatherView.swift: Display current, hourly, and daily forecasts.

MapView.swift: Shows tourist attractions as pins.

VisitedPlacesView.swift: Lists stored cities from SwiftData.

Notes

The free OpenWeather plan has daily request limits. Avoid unnecessary calls to prevent 429 errors.

SwiftData automatically persists new locations. If you change LocationModel structure, you may need to reset the local store.

License

This project is for educational purposes only and uses data from OpenWeather under their terms of service.
