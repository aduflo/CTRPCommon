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
    public typealias Metadata = Area

    public struct Weather: Codable {
        let today: Today
        let recentHistory: RecentHistory

        public init(today: Today,
                    recentHistory: RecentHistory) {
            self.today = today
            self.recentHistory = recentHistory
        }
    }

    public struct Today: Codable {
        let temperatures: Temperatures
        let daytime: DayUnit
        let nighttime: DayUnit

        public init(temperatures: Temperatures,
                    daytime: DayUnit,
                    nighttime: DayUnit) {
            self.temperatures = temperatures
            self.daytime = daytime
            self.nighttime = nighttime
        }

        public struct Temperatures: Codable {
            let high: ValueUnit
            let low: ValueUnit

            public init(high: ValueUnit,
                        low: ValueUnit) {
                self.high = high
                self.low = low
            }
        }

        public struct DayUnit: Codable {
            let message: String
            let percipitation: Percipitation

            public init(message: String,
                        percipitation: Percipitation) {
                self.message = message
                self.percipitation = percipitation
            }

            public struct Percipitation: Codable {
                let probability: Int
                let type: PercipitationType?
                let intensity: Intensity?
                let amount: ValueUnit

                public init(probability: Int,
                            type: PercipitationType?,
                            intensity: Intensity?,
                            amount: ValueUnit) {
                    self.probability = probability
                    self.type = type
                    self.intensity = intensity
                    self.amount = amount
                }

                enum PercipitationType: String, Codable {
                    case rain
                    case ice
                    case snow
                    case mixed
                }

                enum Intensity: String, Codable {
                    case light
                    case moderate
                    case heavy
                }
            }
        }
    }

    struct RecentHistory: Codable {

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
