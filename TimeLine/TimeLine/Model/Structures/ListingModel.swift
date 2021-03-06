//
//  ListingModel.swift
//  TimeLine
//
//  Created by Anshuman on 20/04/20.
//  Copyright © 2020 Anshuman Singh. All rights reserved.
//

import Foundation

// MARK: - ListingModel
struct ListingModel: Codable {
    let status, copyright: String
    let numResults: Int
    let results: [ArticleModel]

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}


// MARK: - Result
struct ArticleModel : Codable , Identifiable {
    let id : Int
    let uri: String
    let url: String
    let assetID: Int
    let source: String
    let publishedDate, updated, section: String
    let subsection: String
    let nytdsection, adxKeywords: String
    let byline: String
    let type: String
    let title, abstract: String
    let desFacet, orgFacet, perFacet, geoFacet: [String]
    let media: [Media]
    let etaID: Int

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case source
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case byline, type, title, abstract
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case media
        case etaID = "eta_id"
    }
}
