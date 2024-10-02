## 升级 react、react-dom 包

-   react：^16.13.1 => ^17.0.0
-   react-dom：^16.13.1 => ^17.0.0

## 升级 JSX Transform

参考：[Introducing the New JSX Transform](https://reactjs.org/blog/2020/09/22/introducing-the-new-jsx-transform.html)

-   升级@babel/core 和@babel/preset-react 到^7.9.0 版本；
-   修改.babelrc 的配置：

```json
{
    "presets": [
        [
            "@babel/preset-react",
            {
                "runtime": "automatic" // 设置runtime为automatic
            }
        ]
    ]
}
```

移除无用的 react import：

```bash
npx react-codemod update-react-imports
```

### ESlint

如果使用`eslint-plugin-react`：

```json
{
    // ...
    "rules": {
        // ...
        "react/jsx-uses-react": "off",
        "react/react-in-jsx-scope": "off"
    }
}
```

## 报错[DEP_WEBPACK_SINGLE_ENTRY_PLUGIN] DeprecationWarning: SingleEntryPlugin was renamed to EntryPlugin

这是 html-webpack-plugin 报的错，目前 5.0.0-alpha.9 还没解决该问题。

## 如果项目是 react + typescript，升级 JSX Transform 后，需要将 typescript 升级到^4.0.0

参考：[React 17 JSX, react-scripts with TypeScript](https://dev.to/ebonynon/react-17-jsx-react-scripts-with-typescript-30ap)

### TypeScript4 新特性

-   [[译] TypeScript4 有些啥?](https://cloud.tencent.com/developer/article/1653519)
-   [精读《Typescript 4》](https://juejin.im/post/6850037265541005325)

### 升级 typescript 相关包

-   typescript：^3.8.3 => ^4.1.0-beta
-   @typescript-eslint/eslint-plugin：^3.10.1 => ^4.6.0
-   @typescript-eslint/parser：^3.10.1 => ^4.6.0
