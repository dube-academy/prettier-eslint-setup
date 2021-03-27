DEPENDENCIES="babel-eslint prettier eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-prettier eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-standard eslint-plugin-styled-components eslint-plugin-styled-components-config"

if [[ -f "yarn.lock" ]]; then
  eval "yarn add --dev $DEPENDENCIES"
else
  eval "npm install -D $DEPENDENCIES"
fi

cat $(dirname "$0")/.eslintrc > .eslintrc
cat $(dirname "$0")/.prettierrc > .prettierrc
