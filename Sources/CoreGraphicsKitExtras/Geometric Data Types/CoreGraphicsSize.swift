//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//
//
//  CoreGraphicsSize.swift
//  core-graphics-kit
//
//  Created by Fang Ling on 2026/8/2.
//
//  This source file is part of the CoreGraphicsKit open source project
//
//  Copyright (c) 2026 Fang Ling <fangling@fangl.ing>
//  Licensed under Apache License v2.0
//
//  See LICENSE for license information
//
//  SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//

#if !os(iOS)

import CKit
import SwiftFramework

/// A structure that contains width and height values.
///
/// A ``CoreGraphicsSize`` structure is sometimes used to represent a distance vector, rather than a physical size. As a vector, its values can be negative. To normalize a ``CoreGraphicsRectangle``
/// structure so that its size is represented by positive values, call the ``standardized`` function.
///
/// ## Topics
///
/// ### Geometric Properties
///
/// - ``width``
/// - ``height``
public struct CoreGraphicsSize: SwiftEquatable {
  /// A width value.
  public var width: CFloatingPoint64

  /// A height value.
  public var height: CFloatingPoint64

  /// Creates a size with the specified dimension values.
  ///
  /// - Parameters:
  ///   - width: A width value.
  ///   - height: A height value.
  public init(width: CFloatingPoint64, height: CFloatingPoint64) {
    self.width = width
    self.height = height
  }

  public static func == (lhs: Self, rhs: Self) -> CBoolean {
    return lhs.width == rhs.width && lhs.height == rhs.height
  }
}

#else

import CoreGraphics

/// A structure that contains width and height values.
public typealias CoreGraphicsSize = CoreGraphics::CGSize

#endif
