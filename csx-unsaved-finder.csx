#!/usr/bin/env -S dotnet-script --no-cache
#load "../_nuget.csx"
#load "../env.csx"

List<string> TextToLines(string text)
{
    List<string> lines = new List<string>();
    using (StringReader sr = new StringReader(text))
    {
        string line;
        while ((line = sr.ReadLine()) != null)
        {
            lines.Add(line);
        }
    }
    return lines;
}

string cwd = Directory.GetCurrentDirectory().Replace(@"\", "/");
string text = @fetch("bash -c 'find . -name .git'");
var lines = TextToLines(text);
foreach(var line in lines)
{
    Directory.SetCurrentDirectory(cwd);
    var info = new DirectoryInfo(line);
    string path = info.Parent.FullName.Replace(@"\", "/");
    if (path.Contains("/.emacs.d/")) continue;
    header(path);
    @run($"cd {path}");
    @run($"git status --short", ignoreErrors: true);
}
