(*** whoami - print effective user name *)

let () =
  Clap.description
    "Print the user name associated with the current effective user ID. Same as id -un.";
  Clap.close ();
  let username = Core_unix.username () in
  Printf.printf "%s\n" username
;;
