# Changelog

## 1.0.1

- CI 发行链修复：workflow 显式工程路径（仓库无 sln）、密钥只经 step `env` 映射（`secrets` 不进 `if:`）、包内含根 `plugin.json` 并剔除宿主共享程序集；新增 NuGet pack（push 由 `NUGET_API_KEY` 门控）。
- 引用策略改为仓内 `lib/` 提交程序集（`ForgeSelf.Abstractions.dll` + `ForgeSelf.Core.dll`，`Private=false`），仓库自包含，GitHub runner 可直接编译。
- 版本统一三段 + tag：`plugin.json` `Version` = git tag = Release 包内清单版本；时间码不进源码清单与 NuGet（对齐 FR17）。

## 1.0.0.2611052343

- 补齐独立仓库结构：清单、README、LICENSE、CHANGELOG、`src/Plugin.HelloWorld`、tests、web、scripts、GitHub Actions。
- 发行串 `1.0.0.2611052343`。程序集 PackageVersion / FileVersion 保持 `1.0.0.0`。
