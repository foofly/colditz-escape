Colditz Escape
==============

[![Linux Build Status](https://img.shields.io/github/actions/workflow/status/foofly/colditz-escape/Linux.yml?branch=master&style=flat-square&label=Linux%20Build)](https://github.com/foofly/colditz-escape/actions/workflows/Linux.yml)
[![Flatpak Build](https://img.shields.io/github/actions/workflow/status/foofly/colditz-escape/flatpak.yml?branch=master&style=flat-square&label=Flatpak%20Build)](https://github.com/foofly/colditz-escape/actions/workflows/flatpak.yml)
[![Licence](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

![Colditz Escape Logo](docs/pics/icon-256.png)

_Colditz Escape_ is a rewritten game engine for the classic "Escape From Colditz" Amiga game.
In this game, you control a set of four prisoners of war trying to escape from the infamous Colditz Castle WWII prison.

This is a fork of [aperture-software/colditz-escape](https://github.com/aperture-software/colditz-escape), focused on Linux and Flatpak support, with additional bug fixes and modernised controls.

Changes in this fork
--------------------

* **Flatpak packaging** — first-class Flatpak build with automated CI publishing via GitHub Actions
* **Modernised controls** — WASD/letter key bindings and full SDL2 gamepad support (replaces legacy joystick API)
* **Bug fixes** — heap buffer overflow in audio backend poll thread, buffer overflow in MOD player VolumeTable, joystick axis integer overflow
* **GCC 15 / C23 compatibility** — strict prototype fixes for freeglut build

Controls
--------

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

Download
--------

* [__Flatpak (Linux)__](https://github.com/foofly/colditz-escape/releases/latest) — install with `flatpak install --user ColditzEscape.flatpak`

Attributions
------------

The original _Escape From Colditz_ game was created by [_Mike Halsall_](https://www.mobygames.com/person/100907/mike-halsall/) and
[_John Law_](https://www.mobygames.com/person/49707/jon-law/credits/) (intro music by [Bjørn Lynne](https://lynnemusic.com/)),
and published in 1991 by Digital Magic Software.

The engine reverse-engineering and original cross-platform rewrite is the work of
[aperture-software](https://github.com/aperture-software/colditz-escape), released under GPL v3.
