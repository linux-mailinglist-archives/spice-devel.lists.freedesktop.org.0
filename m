Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35B696F026
	for <lists+spice-devel@lfdr.de>; Fri,  6 Sep 2024 11:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CC810E9E2;
	Fri,  6 Sep 2024 09:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="AwHdZHhl";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 362 seconds by postgrey-1.36 at gabe;
 Fri, 06 Sep 2024 09:50:04 UTC
Received: from b1422.mx.srv.dfn.de (b1422.mx.srv.dfn.de [194.95.235.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84F810E9E2
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Sep 2024 09:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1725615839; x=1727430240; bh=+bozFpMeKnWthC12
 Ll9qBOQ+WsxT5IpEu8l104AMyyQ=; b=AwHdZHhlriHPaGZK9BUybv2vQ/H0nuW/
 Cg4EQrLvWh6cz591U2fol0sP0ONQNgGpRTyYbvxlkJFA6fMPEeopItlVIjRsIFj1
 owjbdG77ClWl7efEeM+3CEbHE+EzMXGOqoxilFDteKzAolS7xyFKLxQHaFGt6LDj
 O74pb0rzZfc=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by b1422.mx.srv.dfn.de (Postfix) with ESMTP id 43536260322
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Sep 2024 11:43:58 +0200 (CEST)
Received: from [10.8.8.230] (account michael.scherle@rz.uni-freiburg.de
 [10.8.8.230] verified)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 43372454; Fri, 06 Sep 2024 11:43:58 +0200
Message-ID: <5e8e1d48-2750-4bef-85e8-a8cca25f4de6@rz.uni-freiburg.de>
Date: Fri, 6 Sep 2024 11:43:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
 <6d61e169-7452-44bd-9e69-66fb3bac1193@rz.uni-freiburg.de>
 <CAHt6W4f2WAdO5nALmfRk8uxc6na111iYf4sSb2O27fBzy-OD=g@mail.gmail.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <CAHt6W4f2WAdO5nALmfRk8uxc6na111iYf4sSb2O27fBzy-OD=g@mail.gmail.com>
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

Hi,

thank you very much for your reply. Of course I understand that 
non-compiling/crashing code should not be merged into main.
Unfortunately I have not been able to reproduce this so far. Here's a 
list of the systems I have tested on:

- Ubuntu server 20.04 LTS
   AMD EPYC 7742
   Intel Flex 140 with SR-IOV passthrough and without passthrough

- CentOS Stream 9
   AMD EPYC 7742
   Intel Flex 170 (SR-IOV)

- Ubuntu 22.04
   8th Gen Intel with GVT-g and without passthrough

- Fedora 39
   12th Gen Intel (SR-IOV)

Do you have an example system on which it does not compile/crash or what 
the error messages are? Then I could possibly reproduce it and 
contribute to a fix.

Greetings,
Michael

On 05.09.24 08:13, Frediano Ziglio wrote:
> Hi,
>     I surely should get back to this.
> 
> At the moment the series does not even compile on most of the supported systems.
> I understand that the feature works for some but merging in master not
> compiling code does not seem really nice to me.
> I think before merging code should compile and run, maybe with
> disabled features due to detected limitations but surely not crash if
> any unwritten and untested dependencies are not met.
> 
> Regards,
>    Frediano
> 
> Il giorno ven 30 ago 2024 alle ore 12:53 Michael Scherle
> <michael.scherle@rz.uni-freiburg.de> ha scritto:
>>
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
>>> https://lists.freedesktop.org/archives/spice-devel/2023-January/052948.html
>>>
>>> This version is tested together with following (required) patches in qemu:
>>> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v4
>>>
>>> Changelog:
>>>
>>> v8:
>>> - Added a new gstreamer-encoder patch to this series to convert drm format
>>>     shared by the VMM to the appropriate Gstreamer format.
>>>
>>> v7:
>>> - Revert back to the previous design where we do not share fd with the stream
>>>     and scanout is the sole owner of the fd. This is because sharing fd ownership
>>>     opens up a lot of corner cases.
>>>
>>> v6: (Frediano)
>>> - Properly share ownership of the dmabuf fd between stream and scanout
>>> - Ensure that a newly created stream is associated with all connected clients
>>>
>>> v5:
>>> - Addressed review comments from Frediano mainly regarding adding autoconf
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
>>>     gstreamer-encoder: Map the drm format to appropriate Gstreamer format
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
>>
>> I tested this patchset with several configurations:
>>
>> - With a passthrough intel gvt-g virtual gpu it works.
>>
>> - With virtio-vga it works.
>>
>> - With some extra patches to qemu and an virtualization driver it even
>> works with an virtual GPU from an SR-IOV-partitioned Intel Flex
>> 140 GPU. Note this extra patches are related to the gpu and not this
>> patchset.
>>
>> This patch is a significant improvement for handling graphically
>> demanding tasks or rapidly changing image content and is crucial for
>> SPICE to be a component of a competitive virtual desktop infrastructure.
>>
>> Tested-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
>>
>> Greetings,
>> Michael
>>
