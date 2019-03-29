//
//  APIClient.swift
//  MyProject
//
//  Created by AuthorName
//  Copyright © 2019 OrganizationName. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class APIClient: NSObject {
    
    func execute(request apiRequest: APIRequest) -> Observable<Data> {
        guard let request = apiRequest.request() else {
            print("Invalid request")
            return Observable.just(Data())
        }
        
        return URLSession.shared.rx.data(request: request)
    }
}
