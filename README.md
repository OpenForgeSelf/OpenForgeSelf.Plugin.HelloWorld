# HelloWorld

OpenForgeSelf 独立插件示例（一个插件一个仓库，源码不进宿主仓库）。

- 源码在 `src/Plugin.HelloWorld/`；运行版本由宿主安装到数据根 `plugins/hello-world/versions/`，卸载保留 `src/` 与 `.forge/`。
- 版本统一：git tag（如 `v1.0.1`）= `plugin.json` 的 `Version` = GitHub Release 包内清单版本。
- NuGet 包名 = 仓库名 `OpenForgeSelf.Plugin.HelloWorld`；NuGet `PackageVersion` 用三段（10 位时间码不进 NuGet）。
- 发行：push tag `v*` → `.github/workflows/release.yml` 产 `HelloWorld-<ver>.zip` + `SHA256SUMS.txt` 并发 GitHub Release；NuGet 上传需仓库配置 `NUGET_API_KEY` secret，未配置时只产 nupkg 不上传（CI 保持绿）。
- 安装：宿主插件市场填 GitHub 仓库地址（`https://github.com/OpenForgeSelf/OpenForgeSelf.Plugin.HelloWorld`）即可拉取最新 Release。
- 本地引用：`lib/` 携带 `ForgeSelf.Abstractions.dll` / `ForgeSelf.Core.dll`（`Private=false`，编译期 SDK，运行期由宿主共享），仓库自包含，GitHub Actions 可直接编译。
