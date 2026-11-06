using ForgeSelf.Abstractions;
using Xunit;

namespace Plugin.HelloWorld.Tests;

public class HelloPluginTests
{
    [Fact]
    public void Entry_Implements_IPlugin()
    {
        IPlugin plugin = new HelloPlugin();
        Assert.Equal("Plugin.HelloWorld.HelloPlugin", plugin.GetType().FullName);
    }
}
