alias proxy_on='export http_proxy=http://10.1.8.5:32680/ ; export https_proxy=http://10.1.8.5:32680/ ; export HTTP_PROXY=http://10.1.8.5:32680/ ; export HTTPS_PROXY=http://10.1.8.5:32680/'
alias proxy_off='unset http_proxy; unset https_proxy; unset HTTP_PROXY; unset HTTPS_PROXY'
alias fastwget='wget -e http_proxy=10.1.8.5:32680 -e https_proxy=10.1.8.5:32680 --no-check-certificate'

export PS1='[\u@\h \W]\$ '
export PYTHONUSERBASE=/mnt/cache/$USER/.local
export PYBIN=/mnt/cache/$USER/.local/bin/
export PATH=$PYBIN:$PATH
export HOME=/mnt/cache/$USER

export LD_LIBRARY_PATH=/mnt/cache/share/cuda-11.1/lib64:$LD_LIBRARY_PATH
export PATH=/mnt/cache/share/cuda-11.1/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/cache/luzeyu/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/cache/luzeyu/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/mnt/cache/luzeyu/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/cache/luzeyu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

