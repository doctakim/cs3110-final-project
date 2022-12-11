open Gui_util

let draw (st : State.t) ev =
  let on_home st = st |> State.change_screen Screen.HomeScreen in
  let on_resume st = st |> State.change_screen Screen.PlayScreen in
  let on_quit _ = exit 0 in
  draw_string_p
    (CenterPlace (1280 / 2, 500))
    ~size:GiantText "Ready to go back into war?";
  Events.add_clickable
    (draw_button (placed_box (CenterPlace (1280 / 2, 280)) 130 50) "Resume")
    on_resume ev;
  Events.add_clickable
    (draw_button (placed_box (CenterPlace (1280 / 2, 175)) 130 50) "Home")
    on_home ev;
  Events.add_clickable
    (draw_button (placed_box (CenterPlace (1280 / 2, 115)) 130 50) "Quit")
    on_quit ev

let tick st = st
