(** uname - print system information *)

open Coreutils

let () =
  Clap.description "Print certain system information.  With no OPTION, same as -s.";
  let all =
    Clap.flag ~set_short:'a' ~set_long:"all" ~description:"Print all information" false
  in
  let kernel =
    Clap.flag
      ~set_short:'s'
      ~set_long:"kernel-name"
      ~description:"print the kernel name"
      false
  in
  let nodename =
    Clap.flag
      ~set_short:'n'
      ~set_long:"nodename"
      ~description:"print the network node hostname"
      false
  in
  let release =
    Clap.flag
      ~set_short:'r'
      ~set_long:"kernel-release"
      ~description:"print the kernel release"
      false
  in
  let version =
    Clap.flag
      ~set_short:'v'
      ~set_long:"kernel-version"
      ~description:"print the kernel version"
      false
  in
  let machine =
    Clap.flag
      ~set_short:'m'
      ~set_long:"machine"
      ~description:"print the machine hardware name"
      false
  in
  let os =
    Clap.flag
      ~set_short:'o'
      ~set_long:"operating-system"
      ~description:"print the name of the operating system"
      false
  in
  Clap.close ();
  if all
  then Printf.printf "%s\n" Uname.get_all
  else (
    let options =
      [ kernel, Uname.get_kernel_name
      ; nodename, Uname.get_nodename
      ; release, Uname.get_kernel_release
      ; version, Uname.get_kernel_version
      ; machine, Uname.get_machine
      ; os, Uname.get_os
      ]
    in
    Uname.print_result options |> Printf.printf "%s\n")
;;
