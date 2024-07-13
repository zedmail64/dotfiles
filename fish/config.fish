if status is-interactive
# Commands to run in interactive sessions can go here

set fish_greeting

#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup

# set theme_color_scheme nord

function c
    command clear
end

function up
    command sudo apt update && sudo apt upgrade $argv
end

function se
    command sudo apt search $argv
end

function in
    command sudo apt install $argv
end    

function pg
    command sudo apt purge $argv
end

function ar
    command sudo apt autoremove $argv
end

function yl
    command yt-dlp --list-formats $argv
end

function yd
    command yt-dlp -f 18 $argv
end

function pc2m
    command gio mount smb://192.168.2.220/share-pc2 $argv
end

function pc2u	
    command gio mount -u smb://192.168.2.220/share-pc2 $argv
end

function pc3s
    command ssh zed@192.168.2.222 $argv
end

function pc3m
    command sshfs zed@192.168.2.222:/mnt/share-PC3/Backup ~/PC3 $argv
end

function pc3u
    command umount ~/PC3 $argv
end
end
