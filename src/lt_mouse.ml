(*
 * lt_mouse.ml
 * -----------
 * Copyright : (c) 2011, Jeremie Dimino <jeremie@dimino.org>
 * Licence   : BSD3
 *
 * This file is a part of Lambda-Term.
 *)

type button =
  | Button1
  | Button2
  | Button3
  | Button4
  | Button5
  | Button6
  | Button7
  | Button8
  | Button9

type t = {
  control : bool;
  meta : bool;
  shift : bool;
  button : button;
  line : int;
  column : int;
}

let control m = m.control
let meta m = m.meta
let button m = m.button
let line m = m.line
let column m = m.column

let string_of_button = function
  | Button1 -> "Button1"
  | Button2 -> "Button2"
  | Button3 -> "Button3"
  | Button4 -> "Button4"
  | Button5 -> "Button5"
  | Button6 -> "Button6"
  | Button7 -> "Button7"
  | Button8 -> "Button8"
  | Button9 -> "Button9"

let to_string m =
  Printf.sprintf
    "{ control = %B; meta = %B; shift = %B; button = %s; line = %d; column = %d }"
    m.control m.meta m.shift (string_of_button m.button) m.line m.column
