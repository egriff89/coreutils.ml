(** arch - print machine hardware name (same as uname -m) *)

let () =
  Clap.description "Print machine architecture";
  Clap.close ();
  let machine = Core_unix.uname () |> Core_unix.Utsname.machine in
  Printf.printf "%s\n" machine
;;
