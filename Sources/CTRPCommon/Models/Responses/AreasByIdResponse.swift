//
//  AreasByIdResponse.swift
//
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct AreasByIdResponse: Codable {
    public let metadata: Metadata
    public let weather: Weather
    
    public init(metadata: Metadata,
                weather: Weather) {
        self.metadata = metadata
        self.weather = weather
    }
}

public extension AreasByIdResponse {
    typealias Metadata = Area

    struct Weather: Codable {
        public let today: Today
        public let recentHistory: RecentHistory

        public init(today: Today,
                    recentHistory: RecentHistory) {
            self.today = today
            self.recentHistory = recentHistory
        }

        public struct Today: Codable {
            public let temperature: Temperature
            public let daytime: DayUnit
            public let nighttime: DayUnit

            public init(temperature: Temperature,
                        daytime: DayUnit,
                        nighttime: DayUnit) {
                self.temperature = temperature
                self.daytime = daytime
                self.nighttime = nighttime
            }

            public struct Temperature: Codable {
                public let high: ValueUnit<Scale>
                public let low: ValueUnit<Scale>

                public init(high: ValueUnit<Scale>,
                            low: ValueUnit<Scale>) {
                    self.high = high
                    self.low = low
                }

                public enum Scale: String, Codable {
                    case fahrenheit = "F"
                    case celsius = "C"
                }
            }

            public struct DayUnit: Codable {
                public let message: String
                public let percipitation: Percipitation

                public init(message: String,
                            percipitation: Percipitation) {
                    self.message = message
                    self.percipitation = percipitation
                }

                public struct Percipitation: Codable {
                    public let probability: Int
                    public let kind: Kind?
                    public let intensity: Intensity?
                    public let amount: ValueUnit<LengthUnit>

                    public init(probability: Int,
                                kind: Kind?,
                                intensity: Intensity?,
                                amount: ValueUnit<LengthUnit>) {
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

                    public enum LengthUnit: String, Codable {
                        case inch = "in"
                        case millimetre = "mm"
                    }
                }
            }
        }

        public struct RecentHistory: Codable {
            public init() {

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
    }
}
