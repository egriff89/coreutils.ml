(** yes - output a string repeatedly until killed  *)

let () =
  Clap.description "output a string repeatedly until killed";
  let strs =
    Clap.default_string ~description:"String(s) to output." ~placeholder:"STRINGS" "y"
  in
  Clap.close ();
  while true do
    Printf.printf "%s\n" strs
  done
;;
