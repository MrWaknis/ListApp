//
//  TodoModel.swift
//  bitlist
//
//  Created by Mihir Waknis on 1/2/16.
//  Copyright © 2016 mihirwaknis. All rights reserved.
//

import Foundation

enum RepeatType: Int {
    case Daily = 0
    case Weekly = 1
    case Monthly = 2
    case Yearly = 3
    
    
}

struct TodoModel {
    var title: String
    var favorited: Bool
    var dueDate:  NSDate?
    var completed: Bool
    
    var repeated: RepeatType?
    var reminder: NSDate?
    
}

