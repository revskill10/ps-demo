module DOM.HTML.HTMLOutputElement where

import Prelude (Unit)

import Control.Monad.Eff (Eff)

import Data.Nullable (Nullable)

import DOM (DOM)
import DOM.Node.Types (NodeList)
import DOM.HTML.Types (HTMLOutputElement, HTMLFormElement, ValidityState)

--   [PutForwards=value] readonly attribute DOMSettableTokenList htmlFor;

foreign import form :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) (Nullable HTMLFormElement)

foreign import name :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) String
foreign import setName :: forall eff. String -> HTMLOutputElement -> Eff (dom :: DOM | eff) Unit

foreign import type_ :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) String

foreign import defaultValue :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) String
foreign import setDefaultValue :: forall eff. String -> HTMLOutputElement -> Eff (dom :: DOM | eff) Unit

foreign import value :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) String
foreign import setValue :: forall eff. String -> HTMLOutputElement -> Eff (dom :: DOM | eff) Unit

foreign import willValidate :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) Boolean

foreign import validity :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) ValidityState

foreign import validationMessage :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) String

foreign import checkValidity :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) Boolean

foreign import setCustomValidity :: forall eff. String -> HTMLOutputElement -> Eff (dom :: DOM | eff) Unit

foreign import labels :: forall eff. HTMLOutputElement -> Eff (dom :: DOM | eff) NodeList
