#!/usr/bin/env dotnet-script
#load "../_nuget.csx"
#load "../env.csx"
using System.IO;
using System.Linq;

var searchDir = new DirectoryInfo(Directory.GetCurrentDirectory());
foreach (var repoDir in searchDir.EnumerateDirectories("*", SearchOption.AllDirectories))
{
    var workDir = repoDir.Parent;
    var projects = Directory.EnumerateFiles(workDir.FullName, "*.csproj", SearchOption.TopDirectoryOnly);
    foreach(var project in projects)
    {
      @header($"Project: {project}");
      var projectDir = new DirectoryInfo(project).Parent;
      @run($"cd {projectDir.FullName}");
      if (File.Exists("DllExport.bat") || File.Exists("../DllExport.bat"))
      {
        @log("DllExport.bat exists!");
        continue;
      }
      string cmd = $"dotnet package update --project {project}";
      @echo(cmd, "cmd");
      @run(cmd, ignoreErrors: true);
    }
}
