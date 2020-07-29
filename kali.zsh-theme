# # https://github.com/blinks zsh theme

function _prompt_char() {
  # if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
  #   echo "%{%F{blue}%}±%{%f%k%b%}"
  # else
  echo ' '
  # fi
}

# # This theme works with both the "dark" and "light" variants of the
# # Solarized color schema.  Set the SOLARIZED_THEME variable to one of
# # these two values to choose.  If you don't specify, we'll assume you're
# # using the "dark" variant.

# case ${SOLARIZED_THEME:-dark} in
#     light) bkg=white;;
#     *)     bkg=black;;
# esac

# ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%F{red}%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%F{red}%F{yellow}%}] "

# ZSH_THEME_GIT_PROMPT_PREFIX=" ["
# ZSH_THEME_GIT_PROMPT_SUFFIX="] "

# ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{${bkg}}%B%F{green}%}]"
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# PROMPT='%n@%m:~$ '

# PROMPT='%{%f%k%b%}
# %{%K{${bkg}}%B%F{red}%}%n%{%B%F{red}%}@%{%B%F{red}%}%m%{%B%F{red}%}%f:%{%b%F{blue}%K{${bkg}}%}%3~%{%B%F{green}%}$(git_prompt_info)%{%f%k%b%}%{%K{${bkg}}%}$(_prompt_char)%{%K{${bkg}}%} %#%{%f%k%b%} '

# PROMPT='%{%f%k%b%}
# %{%B%F{red}%}%n%{%B%F{red}%}@%{%B%F{red}%}%m%{%B%F{red}%}%f:%{%F{blue}%}%5~%{%B%F{green}%}%{%b%F{yellow%}$(git_prompt_info)%}%{%f%k%b%}%#%{%f%k%b%} '

# PROMPT='%{%f%k%b%}%{%B%F{red}%}%n%{%B%F{red}%}@%{%B%F{red}%}%m%{%B%F{red}%}%f:%{%F{blue}%}%5~%{%B%F{green}%}%{%b%F{yellow}$(git_prompt_info)%}%{%f%k%b%}%#%{%f%k%b%} '
PROMPT='%{%f%k%b%}%{%B%F{red}%}%n%{%B%F{red}%}@%{%B%F{red}%}%m%{%B%F{red}%}%f:%{%F{blue}%}%5~%{%B%F{green}%}%{%b%F{yellow} %}%{%f%k%b%}%#%{%f%k%b%} '

