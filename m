Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AF292B291
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2024 10:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FBA10E4BD;
	Tue,  9 Jul 2024 08:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="qXLqNQJd";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from a1422.mx.srv.dfn.de (a1422.mx.srv.dfn.de [194.95.233.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163A310E4BD
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2024 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1720514971; x=1722329372; bh=mxsuh3iU3Biig4J3
 y6n9CE7pgsajaU3PksFW2mAVcvk=; b=qXLqNQJdB1kHl05hU8LcW18JMS5p8o6u
 D/Kw3PjyTh+rHpRGrNgC55rFqj6rpy9OsfWz2PUbD9/xJK28VQ0o9aO+jrkdn0fR
 0mQxob5mZxt5D6qouhu1KrsfIY+RCbXYun+BLE1eq8Jx7OoEAdECt8738CIJFE+b
 THyXETOYrv0=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by a1422.mx.srv.dfn.de (Postfix) with ESMTP id D1B541E0122
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2024 10:49:30 +0200 (CEST)
Received: from [2001:7c0:2517:11:6c73:b10f:53d8:455e] (account
 michael.scherle@rz.uni-freiburg.de HELO
 [IPV6:2001:7c0:2517:11:6c73:b10f:53d8:455e])
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 42475384; Tue, 09 Jul 2024 10:49:30 +0200
Message-ID: <9e89a36f-6ed7-40d5-8ea6-dd1542c2bba5@rz.uni-freiburg.de>
Date: Tue, 9 Jul 2024 10:49:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: RE: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
 <e09eaeb4-ad13-4efe-9076-eb3f1cc21936@rz.uni-freiburg.de>
 <IA0PR11MB71854213D5815F203A7D4700F8D82@IA0PR11MB7185.namprd11.prod.outlook.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <IA0PR11MB71854213D5815F203A7D4700F8D82@IA0PR11MB7185.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Vivek,

> Hi Michael,
> 
>>
>> Hi,
>>
>> Disclaimer I am not a Spice developer. But we are very interested in
>> this patch series for our project, so I have tested it extensively.
>> For Qemu I used your vfio_dmabuf_2 branch.
>>
>> First I tested it with intel gvt-g and it works perfectly.
>>
>>
>> In the next test, I used to passthrough a SR-IOV-partitioned Intel Flex
>> 140 vGPU to a windows guest with this
>> https://github.com/intel/Display-Virtualization-for-Windows-OS/tree/main
>> virtualization Dirver.
> I am surprised that the code from this repo is working in your case as we
> haven't yet upgraded (or validated) it to work with dGPUs. We are planning
> to do it soon.

Yes, I was also surprised but pleased that it worked. Also I recently 
got access to an new Intel Cpu with integrated gpu and sr-iov, so i will 
test it on that too.

>> I also applied a few patches from:
>> https://github.com/intel/iotg-yocto-ese-main/tree/master/recipes-
>> devtools/qemu/qemu
>> to fix some flickering issue.
>>
>>
>> This setup also works but only from the Windows login screen onwards.
>>
>> Before it produces a faulty image (see Attachment, its an windows boot
> The image does resemble the case where the texture's underlying memory
> layout is still tiled.
> 
>> screen) is also throwing this error repeatedly:
>>
>> 0:00:05.121613151 1502180 0x5555581ea920 ERROR              vadisplay
>> vasurfaceimage.c:171:va_create_surfaces: vaCreateSurfaces: resource
>> allocation failed
>>
>> and the encoding speed is very slow (before the login screen). I
>> attached the libvalog. This happend with vapostproc and msdkh264enc.
>> I also tested it with msdkvpp it throws the same error once and then
>> crashes.
>>
>> I debugged it a bit and found out that the code path that encodes
>> DisplaySurface produces the errors while the code path that directly
>> gets dmabuffer from the virto-gpu works without errors.
>>
>> Regarding the image errors, I dumped the texture of DisplaySurface
>> directly into a png as a test and it looks flawless. Whereas when I
>> dumped the dmabuf created from the DisplaySurface (after
>> egl_get_fd_for_texture) into a png, the same image errors as in spice
>> occurred. So I assume there is something wrong with the texture to
>> dmabuf conversion. When I force the whole exectuion of
>> spice_gl_replace_fd_texture  by removing the check for
>> DRM_FORMAT_MOD_LINEAR the image errors are gone  (which is wired) but
> Hmm, that means the memory layout is actually tiled but EGL is telling you
> that it is DRM_FORMAT_MOD_LINEAR. I think this was an issue with older
> Mesa versions, so can you please try again with upstream master?

The official upstream mesa does not seem to be compatible with the Flex 
GPU, but https://github.com/intel-gpu/Mesa/releases/tag/dg2-20240529 has 
worked and now correctly recognises that it is I915_4_TILED. So the 
tiling issue is fixed.

>> crash / vaCreateSurfaces error/ image error still happens.
> Based on what you described, IIUC, it looks like the msdk/va plugins are
> unable to properly handle dmabufs (textures) created from vram but seem
> to work OK with buffers that reside in system ram (buffers created by
> virtio-gpu).

Ok, now I'm a bit confused, but maybe I described it badly before. The 
dmabuf fds that come directly from the virto gpu (which I assumed were 
stored in the vram) work and the DisplaySurface  that are converted 
(with egl_get_fd_for_texture, which I assumed were stored in the ram) to 
a dmabuf fd for gstreamer are slow and spam the error.


> Our Media team is working on upgrading MSDK/Va plugins to work with
> OneVPL, so can you please try with upstream master versions of these plugins?
> Also try with "export INTEL_MEDIA_RUNTIME=ONEVPL" in your environment
> before launching Qemu to see if it helps.
> 

I pulled the latest gstreamer from the master and set 
INTEL_MEDIA_RUNTIME=ONEVPL, but unfortunately it didn't help.
However, I assume an error with the card or rather the media driver, 
because I had another error with the encoding of this card where it throws:
0:00:00.450089145 85446 0x55a544aeb950 ERROR vamemory 
gstvaallocator.c:616:_va_create_surface_and_export_to_dmabuf: Different 
objects have different modifier

I have already reported the error to the gstreamer plugin developers and 
they assume a media driver error. So I have also reported it there too.

	
Greetings
Michael

> 
>>
>> My launch parameters are:
>> "-m", "16384",
>> "-enable-kvm",
>> "-cpu", "host",
>> "-smp", "cores=16",
>> "-M", "q35",
>> "-snapshot",
>> "-drive",
>> "file=/home/ms2489/Images/win10_v1.qcow2,format=qcow2,cache=none",
>> "-device", "vfio-pci,host=0000:0a:00.1",
>> "-device", "virtio-vga,max_outputs=1,blob=true",
>> "-spice",
>> "gl=on,port=5901,disable-ticketing=on,preferred-
>> codec=gstreamer:h264,rendernode=/dev/dri/renderD131",
>> "-object", "memory-backend-memfd,id=mem1,size=16G",
>> "-machine", "memory-backend=mem1",
>>
>> The same also happens without the vGPU passthrough.
>>
>>
>> Greetings
>> Michael
>>
>>
>> On 10.06.24 20:34, Vivek Kasireddy wrote:
>>> For clients that cannot accept a dmabuf fd directly (such as those
>>> running on a remote system), this patch series provides a way for
>>> the Spice server to stream the gl/dmabuf data/buffer instead. This
>>> is mostly done by enabling the creation of Gst memory using a dmabuf
>>> fd as the source. This ability is useful given that dmabuf is the
>>> standard mechanism for sharing buffers between various drivers and
>>> userspace in many Graphics and Media usecases. Currently, this is
>>> tested with Qemu and remote-viewer using the x264enc/avdec_h264
>>> and msdkh264enc/dec plugins to stream the Guest/VM desktop but it
>>> can be easily extended to other plugins and applications.
>>>
>>> Here is roughly how things work:
>>> - The application (e.g, Qemu) chooses its preferred codec (a Gstreamer
>>>     one) and calls gl_scanout (to update the fd) followed by gl_draw.
>>> - In response, the Spice server checks to see if the client is capable
>>>     of accepting a dmabuf fd directly or not. If yes, the fd is forwarded
>>>     directly to the client; otherwise, a new stream is created.
>>> - The Spice server then sends the dmabuf fd to the Gstreamer encoder
>>>     which uses it as an input for creating an encoded buffer which is then
>>>     sent to the client.
>>> - Once the encoding process is done, an async completion cookie is sent
>>>     to the application.
>>>
>>> Here is a link to the previous version that used a drawable to share
>>> the dmabuf fd with the Gstreamer encoder:
>>> https://lists.freedesktop.org/archives/spice-devel/2023-
>> January/052948.html
>>>
>>> This version is tested together with following (required) patches in qemu:
>>> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v4
>>>
>>> Changelog:
>>>
>>> v8:
>>> - Added a new gstreamer-encoder patch to this series to convert drm
>> format
>>>     shared by the VMM to the appropriate Gstreamer format.
>>>
>>> v7:
>>> - Revert back to the previous design where we do not share fd with the
>> stream
>>>     and scanout is the sole owner of the fd. This is because sharing fd
>> ownership
>>>     opens up a lot of corner cases.
>>>
>>> v6: (Frediano)
>>> - Properly share ownership of the dmabuf fd between stream and scanout
>>> - Ensure that a newly created stream is associated with all connected clients
>>>
>>> v5:
>>> - Addressed review comments from Frediano mainly regarding adding
>> autoconf
>>>     support for gstreamer-allocators dependency and not needing to access
>>>     scanout as part of gl draw operation
>>>
>>> v4:
>>> - Test with Virgl enabled
>>> - Associate dmabuf's y0_top with stream's top_down variable
>>>
>>> v3:
>>> - Updated the second patch to have a new primary surface created
>>>     whenever a new stream gets created. This will avoid having to
>>>     trigger primary surface creation from Qemu. And, this change
>>>     also fixes the following error seen with v2:
>>>     ../server/display-channel.cpp:2074:display_channel_create_surface:
>>>     condition `!display->priv->surfaces[surface_id]' failed
>>> - Rebase all patches on master
>>>
>>> v2:
>>> - Update all patches to address review comments from Frediano
>>> - Tested this series with msdkh264enc/dec plugins that will be added
>>>     in another patch series
>>>
>>> Cc: Frediano Ziglio <freddy77@gmail.com>
>>> Cc: Gerd Hoffmann <kraxel@redhat.com>
>>> Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
>>> Cc: Dongwon Kim <dongwon.kim@intel.com>
>>>
>>> Vivek Kasireddy (6):
>>>     dcc: Check to see if the client supports multiple codecs (v2)
>>>     dcc: Create a stream associated with gl_draw for non-gl clients (v6)
>>>     dcc-send: Encode and send gl_draw stream data to the remote client
>>>       (v4)
>>>     gstreamer-encoder: Add an encoder function that takes dmabuf fd as
>>>       input (v3)
>>>     gstreamer-encoder: Map the drm format to appropriate Gstreamer
>> format
>>>     video-stream: Don't stop a stream associated with gl_draw (v2)
>>>
>>>    configure.ac                     |   2 +-
>>>    meson.build                      |   2 +-
>>>    server/dcc-send.cpp              | 159 ++++++++++++++++----
>>>    server/dcc.cpp                   |  31 ++--
>>>    server/dcc.h                     |   6 +
>>>    server/display-channel-private.h |   1 +
>>>    server/display-channel.cpp       |   1 +
>>>    server/gstreamer-encoder.c       | 246 ++++++++++++++++++++++++++-----
>>>    server/video-encoder.h           |  14 ++
>>>    server/video-stream.cpp          | 205 ++++++++++++++++++++++----
>>>    server/video-stream.h            |   4 +
>>>    11 files changed, 563 insertions(+), 108 deletions(-)
>>>
