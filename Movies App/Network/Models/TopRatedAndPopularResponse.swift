//
//  TopRatedResponse.swift
//  Movies App
//
//  Created by Ivan Ivanušić on 17.10.2022..
//

import Foundation

// MARK: - TopRatedAndPopularResponse
struct TopRatedAndPopularResponse: Codable {
    let page: Int
    let results: [TopRatedMovie]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - TopRatedMovie
struct TopRatedMovie: Codable {
    let backdropPath: String?
    let id: Int
    let posterPath: String?
    let title: String

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id
        case posterPath = "poster_path"
        case title
    }
}

