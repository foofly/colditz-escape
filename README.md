Colditz Escape
==============

[![Linux Build Status](https://img.shields.io/github/actions/workflow/status/foofly/colditz-escape/Linux.yml?branch=master&style=flat-square&label=Linux%20Build)](https://github.com/foofly/colditz-escape/actions/workflows/Linux.yml)
[![Flatpak Build](https://img.shields.io/github/actions/workflow/status/foofly/colditz-escape/flatpak.yml?branch=master&style=flat-square&label=Flatpak%20Build)](https://github.com/foofly/colditz-escape/actions/workflows/flatpak.yml)
[![Licence](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

![Colditz Escape Logo](docs/pics/icon-256.png)

_Colditz Escape_ is a rewritten game engine for the classic "Escape From Colditz" Amiga game.
In this game, you control a set of four prisoners of war trying to escape from the infamous Colditz Castle WWII prison.

The original game, created by [_Mike Halsall_](https://www.mobygames.com/person/100907/mike-halsall/) and
[_John Law_](https://www.mobygames.com/person/49707/jon-law/credits/) (with intro music by [Bjørn Lynne](https://lynnemusic.com/)),
was published in 1991 by Digital Magic Software.
This new version, which allows you to play the game on Windows, Linux and MacOS platforms, has been reverse engineered from the
original Amiga game engine and is released under a GPL v3 license.

For more information, see [the documentation](docs/index.md).

Default Controls
----------------

| Key | Action |
|-----|--------|
| <kbd>W</kbd> / <kbd>A</kbd> / <kbd>S</kbd> / <kbd>D</kbd> | Move prisoner |
| <kbd>E</kbd> | Use selected item / enter-exit tunnel |
| <kbd>↑</kbd> / <kbd>↓</kbd> | Pick up / drop item |
| <kbd>←</kbd> / <kbd>→</kbd> | Cycle inventory |
| <kbd>Space</kbd> | Toggle walk/run |
| <kbd>Esc</kbd> | Game menu |
| <kbd>1</kbd>–<kbd>4</kbd> | Select British/French/American/Polish prisoner |
| <kbd>Tab</kbd> | Cycle prisoners left |
| <kbd>P</kbd> | Pause / view all prisoners |
| <kbd>Z</kbd> | Sleep |
| <kbd>X</kbd> | Set stooge |

Gamepad (Xbox 360 / SDL2-compatible): left stick = move, A = action, B = cancel, X = sleep, D-pad = inventory, LB/RB = cycle prisoners, LT = stooge, RT = walk/run, Back = pause, Start = menu. See [`docs/FAQ.md`](docs/FAQ.md) for full details.

Latest Builds
-------------

Below are self contained game archives, based on the latest version of the code. Just extract these files, and you're good to go!

* [__Linux__](https://github.com/aperture-software/colditz-escape/releases/download/v1.3/Colditz_Escape_Linux.7z)
* [__Flatpak (Linux only)__](https://github.com/foofly/colditz-escape/releases/latest) — install with `flatpak install --user ColditzEscape.flatpak`

Features that might be of interest to you within this source
------------------------------------------------------------

* Code for a cross-platform abstracted sound player that supports Windows (XAudio2), Linux (ALSA/PulseAudio), OSX (Core Audio) and PSP.
* [IFF](https://en.wikipedia.org/wiki/Interchange_File_Format) image loader ([`graphics.c`](graphics.c) &rarr; `load_iff()`)
* RAW texture loader, with or without Alpha ([`graphics.c`](graphics.c) &rarr; `load_raw_rgb()`)
* OpenGL 2D rescale ([`graphics.c`](graphics.c) &rarr; `rescale_buffer()`)
* line/bitplane interleaved interleaved to RGBA texture conversion ([`graphics.c`](graphics.c) &rarr; `line_interleaved_to_wGRAB()` and `bitplane_to_wGRAB()`)
* Bytekiller 1.3 decompression algorithm ([`low-level.c`](low-level.c) &rarr; `uncompress()`)
* PowerPacker decompression ([`low-level.c`](low-level.c)  &rarr; `ppDecrunch()`, courtesy of 'amigadepacker' by _Heikki Orsila_)
* Generic GLSL OpenGL zoom shaders ([HQ2X](Colditz%20Escape/SHADERS/HQ2X.GLSL), [HQ4X](Colditz%20Escape/SHADERS/HQ4X.GLSL),
  [5XBR](Colditz%20Escape/SHADERS/5XBR.GLSL), [SABR](Colditz%20Escape/SHADERS/SABR.GLSL) in [`graphics.c`](graphics.c) &rarr; `compile_shaders()`)
