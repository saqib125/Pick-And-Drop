//
//  Extension.swift
//  Pick-And-Drop
//
//  Created by Saqib Siddique on 14/12/2023.
//

import Foundation

extension Date {
    public func getFormattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }
}
