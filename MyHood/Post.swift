//
//  Post.swift
//  MyHood
//
//  Created by Chris Hovey on 3/22/16.
//  Copyright © 2016 Chris Hovey. All rights reserved.
//

import Foundation

class Post {
    private var _imagePath: String
    private var _title: String
    private var _postDesc: String    //"description" as variable can cause problems with underlying code
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    
    init(imagePath: String, title: String, postDesc: String){
        self._imagePath = imagePath
        self._title = title
        self._postDesc = postDesc
        
    }
}