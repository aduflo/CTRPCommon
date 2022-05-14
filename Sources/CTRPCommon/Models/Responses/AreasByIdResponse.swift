//
//  AreasByIdResponse.swift
//
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct AreasByIdResponse: Codable {
    public let metadata: Metadata
    public let canTheRocksPlay: CanTheRocksPlay
    public let weatherData: WeatherData
    
    public init(metadata: Metadata,
                canTheRocksPlay: CanTheRocksPlay,
                weatherData: WeatherData) {
        self.metadata = metadata
        self.canTheRocksPlay = canTheRocksPlay
        self.weatherData = weatherData
    }
}

public extension AreasByIdResponse {
    typealias Metadata = Area

    enum CanTheRocksPlay: String, Codable {
        case yes
        case no
        case maybe
    }

    struct WeatherData: Codable {
        public let today: Today
        public let dailyHistories: [DailyHistory]

        public init(today: Today,
                    dailyHistories: [DailyHistory]) {
            self.today = today
            self.dailyHistories = dailyHistories
        }

        public struct Today: Codable {
            public let temperature: Temperature
            public let daytime: DayInfo
            public let nighttime: DayInfo

            public init(temperature: Temperature,
                        daytime: DayInfo,
                        nighttime: DayInfo) {
                self.temperature = temperature
                self.daytime = daytime
                self.nighttime = nighttime
            }

            public struct Temperature: Codable {
                public let high: ValueUnit<ScaleUnit>
                public let low: ValueUnit<ScaleUnit>

                public init(high: ValueUnit<ScaleUnit>,
                            low: ValueUnit<ScaleUnit>) {
                    self.high = high
                    self.low = low
                }
            }

            public struct DayInfo: Codable {
                public let message: String
                public let precipitation: Precipitation

                public init(message: String,
                            precipitation: Precipitation) {
                    self.message = message
                    self.precipitation = precipitation
                }

                public struct Precipitation: Codable {
                    public let probability: Int
                    public let kind: Kind?
                    public let intensity: Intensity?
                    public let amount: ValueUnit<DepthUnit>

                    public init(probability: Int,
                                kind: Kind?,
                                intensity: Intensity?,
                                amount: ValueUnit<DepthUnit>) {
                        self.probability = probability
                        self.kind = kind
                        self.intensity = intensity
                        self.amount = amount
                    }

                    public enum Kind: String, Codable {
                        case rain
                        case ice
                        case snow
                        case mixed
                    }

                    public enum Intensity: String, Codable {
                        case light
                        case moderate
                        case heavy
                    }
                }
            }
        }

        public struct DailyHistory: Codable {
            public let date: String
            public let precipitation: Precipitation

            public init(date: String,
                        precipitation: Precipitation) {
                self.date = date
                self.precipitation = precipitation
            }

            public struct Precipitation: Codable {
                public let amount: Amount

                public init(amount: Amount) {
                    self.amount = amount
                }

                public struct Amount: Codable {
                    public let imperial: ValueUnit<DepthUnit>
                    public let metric: ValueUnit<DepthUnit>

                    public init(imperial: ValueUnit<DepthUnit>,
                                metric: ValueUnit<DepthUnit>) {
                        self.imperial = imperial
                        self.metric = metric
                    }
                }
            }
        }

        public struct ValueUnit<Unit: Codable>: Codable {
            public let value: Double
            public let unit: Unit

            public init(value: Double,
                        unit: Unit) {
                self.value = value
                self.unit = unit
            }
        }

        public enum ScaleUnit: String, Codable {
            case fahrenheit = "F"
            case celsius = "C"
        }

        public enum DepthUnit: String, Codable {
            case inch = "in"
            case millimetre = "mm"
        }
    }
}
