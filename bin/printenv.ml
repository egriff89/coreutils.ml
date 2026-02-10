(** printenv - print all or part of environment *)

open Coreutils

let () =
  Clap.description "Print the values of the specified environment variable(s)";
  let null =
    Clap.flag ~set_long:"null" ~description:"End each output with NUL, not newline" false
  in
  let vars =
    Clap.list_string
      ~description:"Environment variable(s) to print out"
      ~placeholder:"VARIABLE"
      ()
  in
  Clap.close ();
  if List.length vars > 0
  then
    List.iter
      (fun x ->
         match Sys.getenv_opt x with
         | Some v -> if null then Printenv.print_null v else Printf.printf "%s\n" v
         | None -> ())
      vars
  else Printenv.print_env null
;;
