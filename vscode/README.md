# Vscode configuration

## Color Theme

- Monokai

## Extensions

- [**Auto Close Tag**](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
  automatically adds HTML/JSX close tag when you type in the closing bracket for
  the opening tag.
- [**Auto Rename Tag**](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
  enables you to automatically rename HTML/JSX tags.
- [**Bracket Pair Colorizer 2**](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)
  enables matching brackets to be identified with different colours.
- [**Debugger for Chrome**](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
  enables you to debug your JavaScript code in the Google Chrome browser.
- [**ES7 React/Redux/GraphQL/React-Native snippets**](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
  provides JavaScript and React/Redux snippets in ES7.
- [**ESLint**](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  integrates ESLint into VS Code. The extension uses the ESLint library
  installed in the opened workspace folder. If the folder doesn't provide one
  the extension looks for a global install version. If you haven't install
  ESLint either locally orglobally do so by running **npm install eslint** in
  the workspace folder for a local install or **npm install -g eslint** for a
  global install.
- [**GitLens**](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  helps you to visualize code authorship via Git blame annotations and code
  lens, seamlessly navigate and explore Git repositories, etc.
- [**Import Cost**](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
  displays inline in the editor the size of the imported package.
- [**Live Server**](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
  enables you to launch a local development server with live reload feature for
  static & dynamic pages.
- [**Live Sass Compiler**](https://marketplace.visualstudio.com/items?itemName=ritwickdey.live-sass)
  helps you compile your SASS/SCSS files to CSS files at realtime with live
  browser reload.
- [**Material Icon Theme**](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  provides lots of icons based on Material Design for Visual Studio Code.
- [**Prettier**](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  enforces a consistent style by parsing your code and re-printing it with its
  own rules that take the maximum line length into account, wrapping code when
  necessary. To enable Formatting code on Save edit the setting: **Format On
  Save** and set it to true.
- [**TODO Highlight**](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
  highlights TODO: FIXME: and other annotations within your code.
- [**YAML**](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
  provides comprehensive YAML language support to Visual Studio Code.
- [**Highlight Matching Tag**](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)
  provides tag matching with colored underline for HTML and JSX.
- [**HTML CSS Support**](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)
  provides css class name completion in HTML and JSX.
- [**AWS Toolkit for Visual Studio Code**](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)
  enables local debug, run and event configuration of lambda functions in your
  sam application. As of 07/12/2019 is still buggy, doesn't work with layers
  etc. You can also view your lambda functions/cloudformation stacks divided by
  regions for your account and invoke already deployed lambdas passing in an
  event.
- [**Indenticator**](https://marketplace.visualstudio.com/items?itemName=SirTori.indenticator)
  visually highlights the current indent depth.
- [**Sort lines**](https://marketplace.visualstudio.com/items?itemName=Tyriar.sort-lines)
  enables you to sort lines in text, for example in YAML templates.
- [**Indent Rainbow**](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
  makes indentation easier to read, I use it only in yaml files, but it works
  for all languages.
- [**vscode cfn lint**](https://marketplace.visualstudio.com/items?itemName=kddejong.vscode-cfn-lint)
  provides a linter for cloudformation and aws sam.
- [**Markdownlint**](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
  provides a linter for markdown (.md) files.
- [**Git History**](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  provides a visual interface for git logs, file history, branches and commits.
- [**CloudFormation**](https://marketplace.visualstudio.com/items?itemName=aws-scripting-guy.cform)
  provides autocompletion for AWS Cloudformation.
- [**Visual Studio Intellicode**](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
  shows recommended completion items for your code context at the top of the
  completions list.
- [**Github Pull Requests**](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
  allows you to review and manage GitHub pull requests.
- [**OpenAPI-Designer**](https://marketplace.visualstudio.com/items?itemName=philosowaffle.openapi-designer)
  allows you to preview openapi schema files within VSCODE or in the browser.
- [**VIM**](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
  provides vim emulation for VSCODE.
- [**Settings Sync**](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
  extension syncs settings file, keybindings file, launch file, snippets folder,
  vscode extensions & extension configuration, workspaces folder. This extension
  saves the the beforementioned config into a gist
  [**gist**](https://gist.github.com/), so any time you need to save your
  settings into a new revision of the gist you just use **CTRL + Shift + P** and
  type **Sync: Update/Upload Settings**. In order to download your last revision
  of the gist you again use **CTRL + Shift + P** and type **Sync: Download
  Settings**. If the extension gets bugged you can reset the extension settings,
  just press **CTRL + Shift + P** and type **Sync: Reset Extension Settings**.

## Keybindings, Settings, Extensions

- Available in a [**gist**](https://gist.github.com/), handled by
  [**Settings Sync extension**](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync).

## Snippets

### Declarations

#### `la⇥` let assignment

```js
let ${1:name} = ${2:value}
```

#### `ca⇥` const assignment

```js
const ${1:name} = ${2:value}
```

#### `carr⇥` const array

```js
const ${1:name} = [${2:value}]
```

#### `cobj⇥` const object

```js
const ${1:name} = {${2:key}: ${3:value}}
```

#### `cd⇥` const from destructuring

```js
const { ${1:name} } = ${2:value}
```

### Conditionals

#### `ifx⇥` if statement

```js
if (${1:condition}) {
  ${0}
}
```

#### `te⇥` ternary statement

```js
${1:cond} ? ${2:true} : ${3:false}
```

#### `ta⇥` ternary assignment

```js
const ${0} = ${1:cond} ? ${2:true} : ${3: false}
```

#### `el⇥` else statement

```js
else {
 ${0}
}
```

#### `ife⇥` if and else statements

```js
if (${1:condition}) {
  ${2}
} else {
  ${0}
}
```

#### `ei⇥` else if

```js
else if (${1:condition}) {
  ${0}
}
```

#### `swi⇥` switch statement

```js
switch (${1:expression}) {
  case ${2:value1}:
    $0
    return;

  default:
    throw new Error(`Unhandled expression in switch: ${3}`)
}

```

#### `tc⇥` try/catch block

```js
try {
  ${1}
} catch (${2:err}) {
  ${3}
}
```

#### `tof⇥` typeof comparison

```js
typeof ${1:source} === '${2:undefined}'
```

#### `ia⇥` isArray

```js
Array.isArray(${1:source})
```

### Loops

#### `fl⇥` for loop (ES6)

```js
for (let ${1:i} = 0; i < ${2:iterable}.length; ${1:i}++) {
  ${0}
}
```

#### `fi⇥` for in loop (ES6)

```js
for (const ${1:key} of ${2:source}) {
  ${0}
}
```

#### `fo⇥` for of loop (ES6)

```js
for (const ${1:key} of ${2:source}) {
  ${0}
}
```

#### `wl⇥` while loop

```js
while (${1:condition}) {
  ${0}
}
```

#### `fe⇥` forEach loop

```js
${1:iterable}.forEach((${2:item}) => {
  ${0}
})
```

#### `map⇥` map function

```js
${1:iterable}.map((${2:item}) => {
  ${0}
})
```

#### `reduce⇥` reduce function

```js
${1:iterable}.reduce((${2:accumulator}, ${3:current}) => {
  ${0}
}${4:, initial})
```

#### `filter⇥` filter function

```js
${1:iterable}.filter((${2:item}) => {
  ${0}
})
```

#### `find⇥` find function

```js
${1:iterable}.find((${2:item}) => {
  ${0}
})
```

#### `every⇥` every function

```js
${1:iterable}.every((${2:item}) => {
  ${0}
})
```

#### `some⇥` some function

```js
${1:iterable}.some((${2:item}) => {
  ${0}
})
```

### Functions

#### `cf⇥` const arrow function assignment

```js
const ${1:name} = (${2:arguments}) => {
  return ${0}
}
```

#### `aaf⇥` anonymous arrow function

```js
(${1:arguments}) => {
  ${0}
}
```

#### `fan⇥` anonymous function

```js
function (${1:arguments}) {
  ${0}
}
```

#### `fn⇥` named function

```js
function ${1:name}(${2:arguments}) {
  ${0}
}
```

#### `afn⇥` async function

```js
async function ${1:name}(${2:arguments}) {
  ${0}
}
```

#### `acf⇥` async const function

```js
const ${1:name} = async (${2:arguments}) => {
  ${0}
}
```

#### `iife⇥` immediately-invoked function expression

```js
;(function (${1:arguments}) {
  ${0}
})(${2})
```

#### `fa⇥` function apply

```js
${1:fn}.apply(${2:this}, ${3:argArray})
```

#### `fc⇥` function call

```js
${1:fn}.call(${2:this}, ${3:arguments})
```

#### `fb⇥` function bind

```js
${1:fn}.bind(${2:this}, ${3:arguments})
```

### Promises

#### `rp⇥` return Promise (ES6)

```js
return new Promise((resolve, reject) => {
  ${0}
})
```

#### `pa⇥` Promise.all

```js
Promise.all(${1:value})
```

#### `apa⇥` await Promise.all

```js
await Promise.all([${1:p1}])
```

#### `p⇥` new Promise (ES6)

```js
new Promise((resolve, reject) => {
  ${0}
})
```

#### `pt⇥` Promise.then

```js
${1:promise}.then((${2:value}) => {
  ${0}
})
```

#### `pc⇥` Promise.catch

```js
.catch(err => {
  ${0}
})
```

### Classes

#### `cs⇥` class with a constructor (ES6)

```js
class ${1:Name} {
  constructor(${2:arguments}) {
    ${0}
  }
}
```

#### `cp⇥` constructor property

```js
this.${1:property} = ${1:value}
```

#### `csx⇥` extend a class (ES6)

```js
class ${1:Name} extends ${2:Base} {
  constructor(${2:arguments}) {
    super(${2:arguments})
    ${0}
  }
}
```

#### `m⇥` method

```js
${1:methodName} = (${2:params}) => {
  ${0}
}
```

#### `get⇥` getter (ES6 syntax)

```js
get ${1:property} () {
  ${0}
}
```

#### `set⇥` setter (ES6 syntax)

```js
set ${1:property} (${2:value}) {
  ${0}
}
```

#### `proto⇥` prototype method

```js
${1:Class}.prototype.${2:methodName} = function (${3:arguments}) {
  ${0}
}
```

### Object methods

#### `ok⇥` Object.keys

```js
Object.keys(${1:obj})
```

#### `ov⇥` Object.values

```js
Object.values(${1:obj})
```

#### `oe⇥` Object.entries

```js
Object.entries(${1:obj})
```

#### `oa⇥` Object.assign

```js
Object.assign(${1:dest}, ${2:source})
```

### Exports and Imports

#### `e⇥` module export

```js
export {${1:member}}
```

#### `ed⇥` module default export

```js
export default ${1:member}
```

#### `edc⇥` export default conts

```js
const ${1} = (${arguments}) => {
  return ${0}
}

export default ${1}
```

#### `edf⇥` export default function

```js
export default function ${1:name} (${2:arguments}) {
  ${0}
}
```

#### `ec⇥` module export const

```js
export const ${1:member} = ${2:value}
```

#### `ecf⇥` export const function

```js
export const ${1:name} = (${2:arguments}) => {
  ${0}
}
```

#### `im⇥` import module

```js
import ${1:module} from '${2:module}'
```

#### `id⇥` import destructured module

```js
import {$1} from '${2:module}';
```

### Testing

#### `desc⇥` describe

```js
describe('${1:description}', () => {
  ${0}
})
```

#### `it⇥` asynchronous it

```js
it('${1:description}', async () => {
  ${0}
})
```

#### `its⇥` it synchronous

```js
it('${1:description}', () => {
  ${0}
})
```

#### `bfe⇥` before each test

```js
beforeEach(() => {
  ${0}
})
```

#### `afe⇥` after each test

```js
afterEach(() => {
  ${0}
})
```

### Misc

#### `st⇥` setTimeout

```js
setTimeout(() => {
  ${0}
}, ${1:delay})
```

#### `si⇥` setInterval

```js
setInterval(() => {
  ${0}
}, ${1:delay})
```

#### `sim⇥` setImmediate

```js
setImmediate(() => {
  ${0}
})
```

#### `ae⇥` addEventListener

```js
${1:document}.addEventListener('${2:event}', ${3:functionName})
```

#### `rel⇥` removeEventListener

```js
${1:document}.removeEventListener('${2:event}', ${3:listener})
```

#### `js⇥` JSON.stringify

```js
JSON.stringify($0);
```

#### `jp⇥` JSON.parse

```js
JSON.parse($0);
```

#### `cl⇥` console.log

```js
console.log(${0})
```

#### `cv⇥` console.log verbose

```js
console.log('${0}:', ${0})
```

#### `cmmb⇥` comment block

```js
/**
 * $0
 */
```

### Node.js

#### `cb⇥` Node.js style callback

```js
(err, ${1:value}) => {
  if (err) throw err
  ${0}
}
```

#### `rq⇥` require a module

```js
require('${1:module}');
```

#### `cr⇥` const require and assign a module

```js
const ${1:module} = require('${1:module}')
```

#### `me⇥` module.exports

```js
module.exports = ${1:name}
```

### Reactjs

#### `imr⇥` import React from 'react'

```js
import React from 'react';
```

#### `ustate⇥` useState hook

```js
const [${1:state}, ${2:setState}] = useState(${3})${0}
```

#### `uref⇥` useRef hook

```js
const ${1:refContainer} = useRef(${2:initialValue})${0}
```

#### `ueffect⇥` useEffect hook

```js
useEffect(() => {
  ${1}

  return () => {
    ${2:cleanup}
  }
}, [${3:deps}])${0}
```

#### `ucontext⇥` useContext hook

```js
const ${1:value} = useContext(${2:ContextName})${0}
```

#### `ccontext⇥` React.createContext

```js
const ${1:ContextName} = React.createContext(${2:initialValue})${0}
```

#### `ureducer⇥` useReducer hook

```js
const [${1:state}, ${2:dispatch}] = useReducer(${3:reducer}, ${4:initialArg})${0}
```

#### `rreducer⇥` reducer function

```js
function reducer(state, action) {
  switch (action.type) {
    case '${1:type1}':
      return {${2:newState}}

    default:
      throw new Error(`Unhandled action type: ${action.type}`)
  }
}
```
