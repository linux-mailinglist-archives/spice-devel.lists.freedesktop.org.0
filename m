Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF641A3649
	for <lists+spice-devel@lfdr.de>; Thu,  9 Apr 2020 16:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C926EBC9;
	Thu,  9 Apr 2020 14:52:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2936E0DE
 for <spice-devel@lists.freedesktop.org>; Thu,  9 Apr 2020 10:46:41 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id 142so6397774ljj.7
 for <spice-devel@lists.freedesktop.org>; Thu, 09 Apr 2020 03:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6evCgK7FPGEtCcVXIfNwNTTknCpgMa3khocrjlOEOfw=;
 b=aSuguFPi5cqvbOq6RddVC5txrL5jHHV06CFi6HAmunGumEBwWenurjS/XDrJ01TFD/
 0gEC3peROttLvw9ZxuK59ehJkC5tU4FDS5gNWLHrtFX5B7cVpNRuHCNedJrWz/vmp5BW
 QN04XpXJjlc+MaY1myn4UKHiFGxQleKlcw2mY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6evCgK7FPGEtCcVXIfNwNTTknCpgMa3khocrjlOEOfw=;
 b=A337qROGZvy28FMaPX9h6oQqVteUQdONbgaOQKGtCklnVUoDMplIQ4b9TVGh0qe6j5
 uzYGpMxdtOEmmLpfNcZ3cD31GArlLAoGNWhq01nxoHTm9vXaSlNScIYR1kE6BkRusp9K
 Y0PW7GzPsE6sY2Xl0co7XjWe3a60b4mPaq/VyJywUJsIrMXF1ly3/Y1uVcPD9FVFc38X
 x3ZelluQpZTqKAJb5CNSDTx/7oUQGIqak41fUyL0nkCe2V/pRXxICfQHFXpzninHnf4k
 Sj9S/v7XxX1RQ6OU4zjgSrLBKT3qycbxd5nad5rfhXnMsd4+hXW4I34v0QA4Tm8DnGAW
 +SSg==
X-Gm-Message-State: AGi0PuY0vQH943legLxoM43cGKlMrYuzdpIJa0l3X1kI+EUhbI0LiY40
 QQ5anOs6eY+62gdw9pYG4Adwplx5KizKBP4b6wZsJw==
X-Google-Smtp-Source: APiQypJ+GwBvQsDs1YYOJlJgdHni3QYoByGuAfFo13DhLQtdjoVytVpz1coeE2LwMLABTcXiKv96RSOwS0IJKY3vPOs=
X-Received: by 2002:a2e:998d:: with SMTP id w13mr2212319lji.63.1586429200024; 
 Thu, 09 Apr 2020 03:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <CAPBb6MVhVL-2EAJZ3UiN8BwjTyUXVirjF0gnfBBZjuvx07ijKA@mail.gmail.com>
 <CAD90VcYDU+8L4u-CuRY8ZaRyzYD_w0qwV1AN=8TbFYCbfUGz3w@mail.gmail.com>
 <5576106.alqRGMn8q6@os-lin-dmo>
In-Reply-To: <5576106.alqRGMn8q6@os-lin-dmo>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 9 Apr 2020 19:46:27 +0900
Message-ID: <CAD90Vcb7UwWAqHOKb7rUV6q3TCSCCEpbbkv6oK0PnEL246TgJQ@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Thu, 09 Apr 2020 14:52:56 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
 device specification
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Dmitry,

On Tue, Apr 7, 2020 at 6:21 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
>
> Hi Alexandre, Keiichi,
>
> Thanks for the updates,
>
> On Montag, 6. April 2020 13:46:33 CEST Keiichi Watanabe wrote:
> >
> > It seems that you're suggesting a big struct where bitstream params,
> > image params and all controls are merged into, right?
> > After rethinking, it makes sense to me.
> > Originally, we had two motivations to have input params and output
> > params separately:
> > (1) We could reuse virtio_video_params for both queues.
> > (2) We have considered extending virtio-video for video capture like V4L2.
> > However, (1) doesn't seem to be a good idea as per the recent discussion.
> > Regarding (2), the virtio-video design shouldn't be affected by other
> > possible use cases. They should be discussed after we finalize
> > virtio-video design.
> > Hence, I guess we have no reason to stick to separate params into two.
> > I'm supportive of this idea now.
> > Also, having only one struct would simplify updating parameters.
> >
> > > struct codec_params {
> > >
> > >     u32 frame_width;
> > >     u32 frame_height;
> > >     /* H264, VP8, VP9, etc */
> > >     enum virtio_codec format;
> > >     union {
> > >
> > >         struct {
> > >
> > >             enum h264_profile profile;
> > >             enum h264_level level;
> > >
> > >         } h264;
> > >         struct {
> > >
> > >             enum vp8_profile profile;
> > >
> > >         } vp8;
> > >         ....
> > >
> > >     };
> > >     u32 bitrate;
> > >     ....
> > >
> > > };
> >
> > More specifically, this struct would be:
> >
> > // the word "codec" might not be needed in the struct name.
> > struct virtio_video_codec_params {
> >     // Image format
> >     enum virtio_video_frame_format frame_format;
> >     le32 frame_width;
> >     le32 frame_height;
> >     le32 min_frame_buffers;
> >     le32 max_frame_buffers;
> >     le32 cur_frame_buffers; // It's needed for REQBUFS's "count"
> >     struct virtio_video_crop crop;
> >     le32 frame_rate;
> >     le32 num_planes;
> >     struct virtio_video_plane_format \
> >         plane_formats[VIRTIO_VIDEO_MAX_PLANES];
> >
> >     // Bitstream format
> >     enum virtio_video_coded_format coded_format;
> >     le32 min_coded_buffers;
> >     le32 max_coded_buffers;
> >     le32 cur_coded_buffers;
> >     le32 bitrate;
> >     union {
> >         struct {
> >           enum h264_profile profile;
> >           enum h264_level level;
> >         } h264;
> >         struct {
> >           enum vp8_profile profile;
> >         } vp8;
> >         ...
> >     } codec;
> > }
> >
>
> I would strongly disagree with this approach as it kills the flexibility and
> any possibility of having a uni-directional stream for seemingly no reason.
>

I believe it won't be less flexible. For uni-directional stream (if we
want to support it as a part of virtio-video), we can say that the
driver and the device should not use fields for bitstream formats in
the spec.
We already have some encoder-only fields. So, it should be acceptable.
But, I'm not sure if this is the best design.

Currently, we have three options of the design of per-stream properties:

1. Have two structs for image format and bitstream format.
Pros:
Well structured. Easy to support uni-directional stream.
Cons:
Not all properties may not be classified well. For example, bitrate in
encoder is about "how we encode it" rather than "what we encode it
into". So, it may be a bit strange to have it in the bitstream
information.

2. Have one struct that contains all properties.
Pros:
Well structured. Since updating one format affects the other format,
it may make more sense to have everything in one struct.
Also, we can have any per-stream properties there that may be tied to
neither image format nor bitstream format.
Cons:
If we want to support uni-directional streams in the virtio-video
protocol, we may be going to have many unused fields in that struct.

3. Have every property as a separate subcommand like v3's controls
Pros:
Easy to add more properties in the future.
Cons:
Less structured. So, we need to be careful not to overlook mandatory
properties when we implement the driver and device.


IMHO, I'm relatively supportive of 2, but we might need to rethink
whether we really want to support uni-directional streams in
virtio-video.
I guess it's worthwhile to create a separate protocol like
virtio-camera even if it somehow overlaps with virtio-video.
Only for a simple video capture scenario, extending the virtio-video
protocol can be one of simple solutions. However, if we want to extend
it for more features like MIPI cameras, it's not hard to imagine the
protocol becoming very complicated.
I wonder if we can keep virtio protocols simple and clean rather than
making an all-in-one protocol for media devices like V4L2.


> I could be useful if it was possible to store the structure in the config
> space, but that won't fly as we have multiple streams with different settings.
> Also one device can support multiple formats, so we won't be able to handle
> the unions.

Yeah, this structure should be per-stream properties but virtio's
config is for per-device properties.
So, it doesn't work as you said.

>
> > > The idea being that depending on the value of "format", only the
> > > relevant member of the union becomes meaningful. This ensures that the
> > > device/driver does not need to check for every control whether it is
> > > valid in the current context ; it just needs to check what "format" is
> > > and take the values from the relevant members.
> >
> > I like this idea to use union to make it more structured.
> >
>
> I don't really have any strong objections agains unions per se, but I deem we
> need to keep the structure flexible. At the very beginning of the development
> there was a discussion about stream priority. If I add a 'prio' field to this
> structure it will break the binary compatibility with older versions.

Hmm, I don't think unions can incur any extra binary compatibility
issues compared with designs using only structs.
Since alignment rules are well-defined for unions as well as structs,
it'd be okay.
We might want to have an explicit field to show the size of a union like:

union {
  struct {
    ...
  } h264;
  struct {
    ...
  } vp8;
  ...
  u8 _align[MAX_SIZE_OF_FIELDS_IN_THIS_UNION];
}

>
> > > I don't think we even need to have a different queue for both structs
> > > (which is what V4L2 does, but again for its own reasons). Just a
> > > single one per coding or decoding context could be enough AFAICT.
> > >
> > > Depending on whether we are decoding or encoding, access to some
> > > members would be restricted to read/only for the device or driver. For
> > > instance, when encoding the driver can set "bitrate" to the desired
> > > encoding rate. When decoding, the decoder can report the video's
> > > bitrate there.
> > >
> > > Now I'm not sure what would be the best way to share this structure.
> > > Either a memory area shared between the driver and device, with
> > > commands/messages sent to notify that something has changed, or
> > > sending the whole structure with each command/message.
> >
> > I don't think the first idea is feasible in the virtio mechanism. So,
> > we can utilize the same way as the previous proposal; SET_PARAMS and
> > GET_PARAMS.
> >
>
> For similar thing the virtio config space exists, but as I mentioned above, it
> won't fit the current virtio-video design (or we probably can pre-define the max
> number of streams on the device side and have params for each stream in the
> config space, but this looks clumsy).
>
> > We also need to think of how to advertise supported profiles and
> > levels. Probably, we might want to extend struct
> > virtio_video_format_desc to include supported profiles/levels in a
> > response of QUERY_CAPABLITY.
> >
>
> It would mean back to spec v1 AFAIR. We probably need to recall why we got rid
> of that.

Probably, this reply:
https://markmail.org/thread/zr3ycvxixnwi5agt
At that time, I assumed that we'll have profiles/levels/bitrates as
controls, aparting from other per-stream properties. In that
situation, it made sense to have a separate mechanism to get/set/query
these properties.
However, we are likely not to end up distinguishing these properties
from other properties. If so, we don't need any other querying
mechanism other than QUERY_CAPABILITY.

To support profiles, we can extend virtio_video_format_desc to
(a) add fields like "profiles" and "levels" that shows supported
values as bit mask, or
(b) add fields like "num_profiles" and "num_levels" that describes the
lengths of arrays that follows.

My personal preference is (a).

Best regards,
Keiichi

>
> > > Now the parameters I have listed above are not subject to changing a
> > > lot, but there are also parameters that we may want to specify/be
> > > notified on with each frame. For instance, whether we want a frame to
> > > be forcibly encoded as a keyframe. V4L2 uses a control for this, but
> > > we could probably do better if we can pass this information with each
> > > frame to be encoded. Maybe we can implement that by using different
> > > QUEUE commands for encoder and decoder, or again by using a union.
> >
> > Ah, I haven't come up with such a kind of parameter. Perhaps, we can
> > extend struct virtio_video_resource_queue to have this flag.
> >
>
> This looks sane for me.
>
> Best regards,
> Dmitry.
>
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
