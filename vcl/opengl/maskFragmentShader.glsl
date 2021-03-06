/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

varying vec2 tex_coord;
uniform sampler2D sampler;
uniform vec4 color;

void main() {
    vec4 texel0;
    texel0 = texture2D(sampler, tex_coord);
    gl_FragColor = color;
    gl_FragColor.a = 1.0 - texel0.r;
}

/* vim:set shiftwidth=4 softtabstop=4 expandtab: */
