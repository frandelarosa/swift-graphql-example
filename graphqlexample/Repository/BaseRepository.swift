//
//  BaseRepository.swift
//  graphqlexample
//
//  Created by Fran on 31/1/22.
//

import Foundation

typealias ResultClosure<T> = ([T]) -> ()

protocol BaseRepository {
    
    associatedtype T

    func getAll(success: @escaping ResultClosure<T>)
    
}
