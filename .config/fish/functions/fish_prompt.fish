function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	       set -g __fish_prompt_char '#'
      case '*'
	       set -g __fish_prompt_char 'λ'
    end
  end

  # Setup colors
  set -l normal (set_color normal)
  set -l white (set_color FFFFFF)
  set -l turquoise (set_color 5fdfff)
  set -l orange (set_color df5f00)
  set -l hotpink (set_color df005f)
  set -l blue (set_color blue)
  set -l limegreen (set_color 87ff00)
  set -l purple (set_color af5fff)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color 5fdfff
  set -g __fish_git_prompt_color_bare afafc8
  set -g __fish_git_prompt_color_flags df5f00
  set -g __fish_git_prompt_color_invalidstate d2190b
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_color_merging ff9100
  set -g __fish_git_prompt_describe_style describe
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showcolorhints true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showupstream none
  set -g __fish_git_prompt_showstashstate true
  #set -g __fish_git_prompt_shorten_branch_len 20


  # find out if read only directory
  set -l fish_prompt_wdir ''
  if [ ! -w . ]; set -l fish_prompt_wdir '🔒'; end

  # find out running jobs
  set -l fish_prompt_njobs ''
  set -l njobs (count (jobs -p))
  if test $njobs -gt 0
      set -l fish_prompt_njobs $njobs'⚙️ '
  end

  # current user into variable
  set -l current_user (whoami)

  # Line 1
  echo -n $white'╭─'$hotpink$current_user$white' at '$orange$__fish_prompt_hostname$white' in '$blue(pwd)$hotpink$fish_prompt_wdir$fish_prompt_njobs$turquoise
  __fish_git_prompt "[%s]"
  echo

  # Line 2
  echo -n $hotpink'╰'
  # support for virtual env name
  if set -q VIRTUAL_ENV
      echo -n "($turquoise"(basename "$VIRTUAL_ENV")"$hotpink)"
  end
  echo -n $hotpink'─'$__fish_prompt_char $normal
end
