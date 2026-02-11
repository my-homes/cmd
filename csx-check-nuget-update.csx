#!/usr/bin/env -S dotnet-script --no-cache
#load "../_nuget.csx"
#load "../env.csx"
using System.IO;
using System.Linq;

var searchDir = new DirectoryInfo(Directory.GetCurrentDirectory());
foreach (var repoDir in searchDir.EnumerateDirectories(".git", SearchOption.AllDirectories))
{
    var workDir = repoDir.Parent;
    bool fileExists = Directory.EnumerateFiles(workDir.FullName, "*.sln", SearchOption.TopDirectoryOnly).Any();
    if (!fileExists) continue;
    string workDirPath = workDir.FullName.Replace(@"\", "/");
    @header($"Repo: {workDirPath}");
    @run($"cd {workDirPath}");
    @run($"dotnet list package --outdated", ignoreErrors: true);
}
