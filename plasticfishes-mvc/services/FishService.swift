//
//  FishService.swift
//  plasticfishes-mvc
//
//  Created by Rodriguez Isaac on 9/14/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import Foundation
struct FishService {
    static func list_all() -> [Fish] {
        let decoder = JSONDecoder()
        do {
            debugPrint(DataSource().fishes)
           return try decoder.decode([Fish].self, from: DataSource().fishes)
        } catch  {
           return []
        }
    }
}
