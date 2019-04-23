module Example.Hello where

import Example.Prelude

import Data.Const (Const)
import Effect.Aff (Aff)
import Halogen as H
import Halogen.HTML as HH

type Query = Const Void

type Action = Void

type State =
  { value :: String
  }

type HTML = H.ComponentHTML Action () Aff

initialState :: State
initialState =
  { value: ""
  }

render :: State -> HTML
render state =
  HH.div
  [ class_ "text-base font-bold"]
  [ HH.text "hello tailwind"
  ]

component :: H.Component HH.HTML Query Unit Void Aff
component = H.mkComponent
  { initialState: const initialState
  , render
  , eval: H.mkEval H.defaultEval
  }
