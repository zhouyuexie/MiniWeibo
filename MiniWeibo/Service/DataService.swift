//
// Created by yuexie.zhou@thoughtworks.com on 3/24/20.
// Copyright (c) 2020 Thoughtworks. All rights reserved.
//

import Foundation
import Alamofire

struct DataService {

	// MARK: - Singleton
	static let shared = DataService()

	// MARK: - URL
	private var photoUrl = "https://jsonplaceholder.typicode.com/photos"

	// MARK: - Services
	func requestFetchPhoto(with id: Int,
	                       completion: @escaping (Photo?, Error?) -> ()) {
		let url = "\(photoUrl)/\(id)"
		AF.request(url).responseDecodable(of: Photo.self) { (response) in
			guard let photo = response.value else {
				completion(nil, response.error)
				return
			}

			completion(photo, nil)
		}
	}

}