<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
    <TriggerPackage/>
    <TimerPackage/>
    <AliasPackage>
        <Alias isActive="yes" isFolder="no">
            <name>Update</name>
            <script>uninstallPackage(&quot;Overgrowth&quot;)
os.remove(getMudletHomeDir()..&quot;\Overgrowth&quot;)

local saveto = getMudletHomeDir()..&quot;/Overgrowth&quot;

local url = &quot;https://raw.githubusercontent.com/kenicam/Overgrowth-for-mudlet/master/Overgrowth.trigger.xml&quot;
downloadFile(saveto, url)
cecho(&quot;&lt;white&gt;Downloading &lt;green&gt;&quot;..url..&quot;&lt;white&gt; to &lt;green&gt;&quot;..saveto..&quot;\n&quot;)</script>
            <command></command>
            <packageName></packageName>
            <regex>^og update$</regex>
        </Alias>
    </AliasPackage>
    <ActionPackage/>
    <ScriptPackage>
        <Script isActive="yes" isFolder="no">
            <name>Download</name>
            <packageName></packageName>
            <script>function download_file(_, filename)
if not filename:find(&quot;Overgrowth&quot;, 1, true) then return end
installPackage(filename)
cecho(&quot;&lt;green&gt;Installed: &quot;..filename)
end

registerAnonymousEventHandler(&quot;sysDownloadDone&quot;, &quot;download_file&quot;)

</script>
            <eventHandlerList>
                <string>sysDownloadDone</string>
            </eventHandlerList>
        </Script>
    </ScriptPackage>
    <KeyPackage/>
</MudletPackage>
