//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//
//
//  CoreGraphicsRectangle.swift
//  core-graphics-kit
//
//  Created by Fang Ling on 2026/8/8.
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
import CoreGraphicsKitEssentials
import SwiftFramework

/// A rectangle.
///
/// ## Topics
///
/// ### Creating a Rectangle
///
/// - ``init(origin:size:)``
/// - ``init(x:y:width:height:)``
///
/// ### Geometric Properties
///
/// - ``origin``
/// - ``size``
///
/// ### Inspecting a Rectangle
///
/// - ``isNull``
public struct CoreGraphicsRectangle: SwiftEquatable {
  /// The rectangle's origin point.
  public var origin: CoreGraphicsPoint

  /// The size of the rectangle.
  public var size: CoreGraphicsSize

  /// A Boolean value indicating whether the rectangle is equal to the null rectangle.
  ///
  /// A null rectangle is the equivalent of an empty set. For example, the result of intersecting two disjoint rectangles is a null rectangle. A null rectangle cannot be drawn and interacts with other
  /// rectangles in special ways.
  public var isNull: CBoolean {
    return self.origin.x.isNaN || self.origin.y.isNaN || self.size.width.isNaN || self.size.height.isNaN
  }

  /// Creats a rectangle with the specified origin and size.
  ///
  /// - Parameters:
  ///   - origin: The origin of the rectangle.
  ///   - size: The size of the rectangle.
  public init(origin: CoreGraphicsPoint, size: CoreGraphicsSize) {
    self.origin = origin
    self.size = size
  }

  /// Creates a rectangle with the specified coordinate and size values.
  ///
  /// - Parameters:
  ///   - x: The x-coordinate of the rectangle's origin point.
  ///   - y: The y-coordinate of the rectangle's origin point.
  ///   - width: The width of the rectangle.
  ///   - height: The height of the rectangle.
  public init(x: CFloatingPoint64, y: CFloatingPoint64, width: CFloatingPoint64, height: CFloatingPoint64) {
    self.init(origin: CoreGraphicsPoint(x: x, y: y), size: CoreGraphicsSize(width: width, height: height))
  }

  public static func == (lhs: Self, rhs: Self) -> CBoolean {
    return lhs.origin == rhs.origin && lhs.size == rhs.size
  }
}

#else

import CoreGraphics

/// A rectangle.
public typealias CoreGraphicsRectangle = CoreGraphics::CGRect

#endif
