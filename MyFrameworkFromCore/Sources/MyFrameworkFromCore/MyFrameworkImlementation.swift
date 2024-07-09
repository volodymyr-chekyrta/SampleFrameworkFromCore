//
//  MyFrameworkImlementation.swift
//
//
//  Created by Volodymyr Chekyrta on 9.07.24.
//

import Foundation
import Core

public class MyFrameworkImlementation: AbstractionFromCore {
    
    public init() {
        
    }
    
    public func function1() {
        print("This is function 1 from MyFrameworkImlementation")
    }
    
    public func function2() {
        print("This is function 2 from MyFrameworkImlementation")
        print("Core NetworkManager")
        
        Task {
            await NetworkManager().makeTestRequest()
        }
    }
    
}
