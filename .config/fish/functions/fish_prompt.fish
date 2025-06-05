function fish_prompt
    set_color \#bda057
    echo $USER(set_color normal)"<>"(set_color \#c9c4b5)$hostname(set_color normal)"→>"(set_color \#bda057)(prompt_pwd)(set_color normal)" "
end
