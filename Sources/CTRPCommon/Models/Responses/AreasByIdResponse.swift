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
        let today: Today
        let recentHistory: RecentHistory
    }

    struct Today: Codable {
        let temperatures: Temperatures
        let daytime: DayUnit
        let nighttime: DayUnit

        struct Temperatures: Codable {
            let high: ValueUnit
            let low: ValueUnit
        }

        struct DayUnit: Codable {
            let message: String
            let percipitation: Percipitation

            struct Percipitation: Codable {
                let probability: Int
                let type: PercipitationType?
                let intensity: Intensity?
                let amount: ValueUnit

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
}
