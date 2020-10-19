//
//  Model.swift
//  translateAndTrain
//
//  Created by Jan Cislinsky (admin) on 19. 10. 2020.
//

import Foundation

public enum Language: Equatable {
    // English to Czech
    case en2cz
}

public struct Word: Hashable, Equatable {
    let text: String
}

public struct Translation: Equatable {
    let tex: String
}

public struct Vocabulary: Equatable {
    public let language: Language

    public var dict: [Word: [Translation]]

    public init(language: Language, dict: [Word : [Translation]]) {
        self.language = language
        self.dict = dict
    }
}

public enum Screen {
    case translate, train
}
