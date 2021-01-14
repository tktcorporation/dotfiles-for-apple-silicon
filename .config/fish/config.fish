set -x PATH /opt/homebrew/bin $PATH
set PATH $HOME/Library/flutter/bin:$PATH
set PATH $TO_FISH_PATH $PATH
set PATH $HOME/.pub-cache/bin:$PATH
set PATH $HOME/Library/Android/sdk/platform-tools:$PATH
set PATH $HOME/.cargo/bin:$PATH

# ----------
# bobthefish config
# ----------
set -g fish_prompt_pwd_dir_length 0  # ディレクトリ省略しない
set -g theme_newline_cursor yes  # プロンプトを改行した先に設ける
set -g theme_display_git_master_branch yes  # git の branch 名を表示
set -g theme_color_scheme dracula
set -g theme_display_date no  # 時刻を表示しないように設定
set -g theme_display_cmd_duration no  # コマンド実行時間の非表示

# direnv
direnv hook fish | source
set -x EDITOR code-insiders

# alias

alias aws "docker run --rm -it -v ~/.aws:/root/.aws -v (pwd):/aws -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION amazon/aws-cli"
