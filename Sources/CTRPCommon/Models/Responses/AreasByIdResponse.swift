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
            public let temperatures: Temperatures
            public let daytime: DayUnit
            public let nighttime: DayUnit

            public init(temperatures: Temperatures,
                        daytime: DayUnit,
                        nighttime: DayUnit) {
                self.temperatures = temperatures
                self.daytime = daytime
                self.nighttime = nighttime
            }

            public struct Temperatures: Codable {
                public let high: ValueUnit
                public let low: ValueUnit

                public init(high: ValueUnit,
                            low: ValueUnit) {
                    self.high = high
                    self.low = low
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
                    public let amount: ValueUnit

                    public init(probability: Int,
                                kind: Kind?,
                                intensity: Intensity?,
                                amount: ValueUnit) {
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

        public struct RecentHistory: Codable {
            public init() {

            }
        }

        public struct ValueUnit: Codable {
            public let value: Double
            public let unit: String

            public init(value: Double,
                        unit: String) {
                self.value = value
                self.unit = unit
            }
        }
    }
}
