# fish
abbr -a .f source ~/.config/fish/config.fish
abbr -a a abbr -a

# system
abbr -a ps ps auxf
abbr -a ds sudo dnf search
abbr -a di sudo dnf install
abbr -a ssh-forwardx ssh -X -C -c aes128-ctr -m hmac-sha1
abbr -a ... ../../
abbr -a .... ../../../

# apps
abbr -a e emacs
abbr -a tf terraform
abbr -a kc kubectl
abbr -a vi vim
abbr -a v vim
abbr -a t tldr

# git
abbr -a g git
abbr -a gst git status -sb
abbr -a gl tig
abbr -a acm git add -A\n git commit -m  
abbr -a aca git add -A\n git commit --amend  
abbr -a gp git push
abbr -a gr git remote -v
abbr -a co git checkout
abbr -a cob git checkout -b
abbr -a gs git stash
abbr -a gsl git stash list
abbr -a ga git add 
abbr -a gaa git add -A 
abbr -a gc git commit -m
abbr -a gca git commit --amend

# cheat
abbr -a c cheat
abbr -a ce cheat -e
abbr -a cl cheat -l
abbr -a cs cheat -s
abbr -a ct cheat -l -t

abbr -a ml cheat -l -p meetings
abbr -a jl cheat -l -p journals


# kubernetes 
abbr -a k kubectl
abbr -a kn kubectl config set-context --current --namespace
abbr -a ka kubectl apply -f  
abbr -a ke kubectl explain 
abbr -a kk 'kubectl api-resources -o wide | grep'
abbr -a kd kubectl describe 
abbr -a kg kubectl get 
abbr -a ks kubectl get secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}{{$v|base64decode}}{{"\n\n"}}{{end}}' 
abbr -a kv 'kubectl get events --sort-by=.metadata.creationTimestamp | less'
abbr -a kl kubectl logs 
abbr -a kr kubectl run

# zellij
abbr -a z "zellij --session (date +'%Y-%m-%d_%H:%M')" 
abbr -a za "zellij attach"
abbr -a zl "zellij list-sessions"
