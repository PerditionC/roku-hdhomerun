Roku-HDHomerun
==============

Watch TV on your Roku using your HDHomerun PRIME/PLUS!

The HDHomerun PRIME (hdhr3-cc) and PLUS (hdtc-2us) support streaming over HTTP.  Unfortunately the Roku cannot consume this stream directl. [maddox](https://github.com/maddox) has created a transcoding application called [Wallop](https://github.com/maddox/wallop) to convert the MPEG2 stream to H.264 and serve it up live over HLS using ffmpeg.  Thanks to his work, I was able to easily create a Roku app to stream from [Wallop](https://github.com/maddox/wallop).

[themacks](https://github.com/themacks) created a similar application called [Ply](https://github.com/themacks/ply) that is compatible with the HDTC devices. Ply takes advantage of the fact that the tuner has built-in transcoding so you do not need to dedicate a lot of computing resources to it.

![Screenshot](http://i.imgur.com/GJUiye0.png)

##Authors##
 * Based on roku-hdhomerun from [computmaxer/roku-hdhomerun](https://github.com/computmaxer/roku-hdhomerun).
 * Forked from [pompous-stranger/roku-hdhomerun](https://github.com/pompous-stranger/roku-hdhomerun).

##What You Need##
 * HDHomerun PRIME (hdhr3-cc) or HDHomerun PLUS (hdtc-2us)
 * [Wallop](https://github.com/maddox/wallop) (for PRIME) or [Ply](https://github.com/themacks/ply) (for PLUS) installed and running on a some machine/server.
 * Roku


##I have that stuff, what's next?##
 * Add the channel. Here is the link to the [private channel](https://owner.roku.com/add/rokuhdhr).
 * Enter the Wallop/Ply server information on the Settings page. (NOT the HDHomerun address)
 * Sit back and enjoy live TV on your Roku.

##Channel Logos##
Wallop has the ability to serve up channel logos for each of your channels.  I have included some logos sized appropriately for this Roku app in the `channel_logos` directory.  Copy these logos to your Wallop install and add each channel to your Wallop config, as described [here](https://github.com/maddox/wallop#network-logos). Please contribute more logos if you create them for your setup!  The proper image size is 210x270.

##Future Plans##
A channel guide.

##FAQ##

###Does this work with the HDHomerun Dual TV tuner?###
No. Sorry. :(  The Dual (hdhr3-us) does not have the ability to stream over HTTP, and SiliconDust has said it will never be able to have this ability due to hardware limitations.  You will have to purchase a newer HDHomerun device.


###Can you make a Plex channel?###
No, see (https://forums.plex.tv/index.php/topic/101755-hdhomerun-viewer/).

###Does it have a channel guide/schedule?###
No. But this is what I hope to implement eventually, hence the fork.
