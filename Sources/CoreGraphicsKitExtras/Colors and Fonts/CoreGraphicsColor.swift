//===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===//
//
//  CoreGraphicsColor.swift
//  core-graphics-kit
//
//  Created by Fang Ling on 2026/10/5.
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

import SwiftFramework

/// A set of components that define a color, with a color space specifying how to interpret them.
///
/// ``CoreGraphicsColor`` is the fundamental data type used internally by CoreGraphicsKit to represent colors. ``CoreGraphicsColor`` objects, and the functions that operate on them, provide a fast and
/// convenient way of managing and setting colors directly, especially colors that are reused (such as black for text).
///
/// A color object contains a set of components (such as red, green, and blue) that uniquely define a color, and a color space that specifies how those components should be interpreted.
///
/// Color objects provide a fast and convenient way to manage and set colors, especially colors that are used repeatedly. Drawing operations use color objects for setting fill and stroke colors,
/// managing alpha, and setting color with a pattern.
public class CoreGraphicsColor {
  public var _name: SwiftString?

  public static func _initialize() -> CoreGraphicsColor {
    return CoreGraphicsColor()
  }
}

#endif
