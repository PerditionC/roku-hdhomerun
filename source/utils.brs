'******************************************************
'Registry Helper Functions
'******************************************************
Function RegRead(key, section=invalid, default=invalid)
    ' Reading from the registry is somewhat expensive, especially for keys that
    ' may be read repeatedly in a loop. We don't have that many keys anyway, keep
    ' a cache of our keys in memory.

    if section = invalid then section = "Default"
    cacheKey = key + section
    if m.RegistryCache.DoesExist(cacheKey) then return m.RegistryCache[cacheKey]

    value = default
    sec = CreateObject("roRegistrySection", section)
    if sec.Exists(key) then value = sec.Read(key)

    if value <> invalid then
        m.RegistryCache[cacheKey] = value
    end if

    return value
End Function

Function RegWrite(key, val, section=invalid)
    if section = invalid then section = "Default"
    sec = CreateObject("roRegistrySection", section)
    sec.Write(key, val)
    m.RegistryCache[key + section] = val
    sec.Flush() 'commit it
End Function

Function RegDelete(key, section=invalid)
    if section = invalid then section = "Default"
    sec = CreateObject("roRegistrySection", section)
    sec.Delete(key)
    m.RegistryCache.Delete(key + section)
    sec.Flush()
End Function

'******************************************************
'videoScreen HD/SD Selector
'******************************************************
'We want ply server to stream HDHomerun's best 4:3 transcode (internet480) to SD 
'displays and best 16:9 transcode (heavy) to HD displays
'Furthermore a Roku set to SD display will not display video set as HD, 
'see http://sdkdocs.roku.com/display/sdkdoc/roVideoScreen
'getHDorSD selects the optimal transcode through ply and matches the correct Roku 
'streamquality setting when called in wallopClient.brs and videoScreen.brs

Function getHDorSD() As string
    di = CreateObject("roDeviceInfo")
    if di.GetDisplayType() = "HDTV" then
      return "HD"
    else
      return "SD"
    end if 
End Function
