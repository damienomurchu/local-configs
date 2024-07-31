function log --description "inserts a timestamped entry into the start of a personal log file"
    set logfile $HOME/personal.log  
    if not test -e $logfile
        touch $logfile
    end

    set timestamp (date +'%Y-%m-%d %H:%M')
    set entry (echo "$timestamp $argv")
    
    echo -e "$entry\n$(cat $logfile)" > $logfile
end

