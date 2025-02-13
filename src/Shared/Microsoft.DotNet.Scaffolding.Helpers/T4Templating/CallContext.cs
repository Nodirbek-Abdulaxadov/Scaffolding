// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
namespace Microsoft.DotNet.Scaffolding.Helpers.T4Templating;

/// <summary>
/// switch out the CallContext.LogicalGetData call in the generated .cs template with this
/// </summary>
public sealed class CallContext
{
    public static object? LogicalGetData(string name)
        => null;
}
