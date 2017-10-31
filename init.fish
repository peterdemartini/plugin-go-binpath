function init -a path --on-event init_go-binpath
  set -l go_bin_path $GOPATH/bin 
  contains -- $go_bin_path $PATH
    or set -gx PATH $go_bin_path $PATH
end
