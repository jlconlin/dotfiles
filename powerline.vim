set rtp+=$POWERLINE_ROOT/powerline/bindings/vim
let g:pymcd_powerline="py3"

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
