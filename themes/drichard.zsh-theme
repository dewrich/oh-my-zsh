KUBE_PS1_BINARY="${KUBE_PS1_BINARY:-kubectl}"
KUBE_PS1_SYMBOL_ENABLE="${KUBE_PS1_SYMBOL_ENABLE:-true}"
_KUBE_PS1_SYMBOL_DEFAULT=${_KUBE_PS1_SYMBOL_DEFAULT:-$'\u2388'}
KUBE_PS1_SYMBOL_PADDING="${KUBE_PS1_SYMBOL_PADDING:-false}"
KUBE_PS1_SYMBOL_USE_IMG="${KUBE_PS1_SYMBOL_USE_IMG:-false}"
KUBE_PS1_SYMBOL_OC_IMG="${KUBE_PS1_SYMBOL_OC_IMG:-false}"
_KUBE_PS1_SYMBOL_OC=${KUBE_PS1_SYMBOL_OC:-$'\ue7b7'}
KUBE_PS1_NS_ENABLE="${KUBE_PS1_NS_ENABLE:-true}"
KUBE_PS1_CONTEXT_ENABLE="${KUBE_PS1_CONTEXT_ENABLE:-true}"
KUBE_PS1_PREFIX="${KUBE_PS1_PREFIX-(}"
KUBE_PS1_SEPARATOR="${KUBE_PS1_SEPARATOR-|}"
KUBE_PS1_DIVIDER="${KUBE_PS1_DIVIDER-:}"
KUBE_PS1_SUFFIX="${KUBE_PS1_SUFFIX-)}"
KUBE_PS1_SYMBOL_COLOR="${KUBE_PS1_SYMBOL_COLOR-blue}"
KUBE_PS1_CTX_COLOR="${KUBE_PS1_CTX_COLOR-red}"
KUBE_PS1_NS_COLOR="${KUBE_PS1_NS_COLOR-cyan}"
KUBE_PS1_BG_COLOR="${KUBE_PS1_BG_COLOR}"
KUBE_PS1_CLUSTER_FUNCTION="${KUBE_PS1_CLUSTER_FUNCTION}"
KUBE_PS1_NAMESPACE_FUNCTION="${KUBE_PS1_NAMESPACE_FUNCTION}"
_KUBE_PS1_KUBECONFIG_CACHE="${KUBECONFIG}"
_KUBE_PS1_DISABLE_PATH="${HOME}/.kube/kube-ps1/disabled"
_KUBE_PS1_LAST_TIME=0

PROMPT='
%n@%m %{$fg[cyan]%}%~
$(git_prompt_info)%{$fg_bold[blue]%}% ᐅ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
