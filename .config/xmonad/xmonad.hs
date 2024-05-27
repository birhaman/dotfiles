-- # OPTIONS_GHC -fno-warn-missing-signatures #
-- # LANGUAGE NoMonomorphismRestriction #

-- Module:
-- Updated:

import XMonad
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import qualified System.IO.UTF8
ppLog = defaultPP
  { ppOutput = \s -> do
      h <- openFile "/home/$USER/.xmonad/xmonad.log" WriteMode
      System.IO.UTF8.hPutStrLn h s
      hClose h
  }

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Layout.LayoutCombinators
import XMonad.Layout.Spacing
import XMonad.Layout.TwoPane
import XMonad.Layout.BinarySpacePartition
import XMonad.Layout.
import XMonad.Layout.NoBorders
import XMonad.Layout.ResizableTile

import XMonad.Actions.CopyWindow
import XMonad.Hooks.DynamicLog

import XMonad.Layout.Dwindle
main :: IO ()
main = xmonad def

-- Keybindings
myKeys = [ ("M-<Right>,    windows W.focusDown)
         , ("M-S-<Right>", windows W.swapDown)
         , ("M-<Left>,     windows W.focusUp)
         , ("M-S-<Left>,   windows W.swapUp)
         ]

-- Layouts
myLayouts = tiled ||| Mirror tiled ||| Full
  where
     tiled   = Tall nmaster delta ratio
     nmaster = 1
     ratio   = 1/2
     delta   = 3/100
