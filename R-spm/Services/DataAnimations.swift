//
//  Data.swift
//  R-spm
//
//  Created by Kirill Lozovoi on 11/1/22.
//
import SpringAnimation

struct DataAnimation {

    static let dataAnimation = DataAnimation()
    
    let animations = AnimationPreset.allCases
    
    let curvers = AnimationCurve.allCases
    
    private init() {}
}
