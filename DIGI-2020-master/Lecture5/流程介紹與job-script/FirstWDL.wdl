workflow FirstWDL{
  call getInfo
}

task getInfo{
    String username

    command {
      echo ${username} ", Welcome to WDL World ~~~"
      echo "$(date +'%Y-%m-%d_%H:%M:%S')"
    }
    output {
      String out = read_string(stdout())
    }
}
