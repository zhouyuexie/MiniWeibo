//
// Created by yuexie.zhou@thoughtworks.com on 3/24/20.
// Copyright (c) 2020 Thoughtworks. All rights reserved.
//


import Foundation

extension String {

	static func replaceHttpToHttps(with urlString: String) -> String? {
		// split into array
		let separateCriteria = "://"
		var parts = urlString.components(separatedBy: separateCriteria)
		parts[0] = "https"
		guard let firstPart = parts.first, let lastPart = parts.last else {
			print("AFString+Extension: replaceHttpToHttps: failed")
			return nil
		}
		let finalString = firstPart + separateCriteria + lastPart
		return finalString
	}

}