//
//  Party.swift
//  nightowls
//
//  Created by Elvis Marcelo on 12/13/20.
//

import Foundation

class Party {
    var parname: String
    var partype: String
    var parimage: String
    var parloc: String

    init(parname: String, partype: String, parimage: String, parloc: String) {
        self.parname = parname
        self.partype = partype
        self.parimage = parimage
        self.parloc = parloc
    }
}

