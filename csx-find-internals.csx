#!/usr/bin/env -S dotnet-script --no-cache
#load "../_nuget.csx"
#load "../env.csx"
namespace Globalp;
using static EasyObject;

var searchDir = new DirectoryInfo(Directory.GetCurrentDirectory());
foreach (var repoDir in searchDir.EnumerateDirectories("Internals", SearchOption.AllDirectories))
{
    var workDir = repoDir;
    if (workDir.FullName.Contains(@"\.git\")) continue;
    @header($"Repo: {workDir.FullName.Replace(@"\", "/")}");
    @run($"cd {workDir}");
    var output = @fetch($"bash git-st --no-cache");
    @log(output, "output");
}
