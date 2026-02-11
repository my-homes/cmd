#!/usr/bin/env -S dotnet-script --no-cache
#load "../_nuget.csx"
#load "../env.csx"

@echo(@string("HOME"));

Environment.SetEnvironmentVariable("MyVariable", "MyValue ハロー©", EnvironmentVariableTarget.User);
