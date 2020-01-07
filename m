Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C618138D01
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4EA89F73;
	Mon, 13 Jan 2020 08:38:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma6.jpberlin.de (plasma6.jpberlin.de [80.241.56.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FCC6E111
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Jan 2020 16:50:41 +0000 (UTC)
Received: from spamfilter03.heinlein-hosting.de
 (spamfilter03.heinlein-hosting.de [80.241.56.117])
 by plasma.jpberlin.de (Postfix) with ESMTP id F1091BD80E;
 Tue,  7 Jan 2020 17:50:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id JKgZN9beENqR; Tue,  7 Jan 2020 17:50:32 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 1744DBBD52;
 Tue,  7 Jan 2020 17:50:32 +0100 (CET)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS01.open-synergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 7 Jan 2020
 17:50:31 +0100
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>, <uril@redhat.com>
Date: Tue, 7 Jan 2020 17:50:31 +0100
Message-ID: <5151534.8KK4xSi7B1@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90VcbmMOF=6W++V44eLHRrDLXPHSYgki8UuLuh_k0tQ5ZqQQ@mail.gmail.com>
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <2467657.7ilU13zpCy@os-lin-dmo>
 <CAD90VcbmMOF=6W++V44eLHRrDLXPHSYgki8UuLuh_k0tQ5ZqQQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Mailman-Approved-At: Mon, 13 Jan 2020 08:38:38 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] virtio-video: Add virtio video
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

thanks for the updates, please see my comments below.

On Dienstag, 7. Januar 2020 14:24:31 CET Keiichi Watanabe wrote:
> Hi Dmitry,
> 
> On Mon, Jan 6, 2020 at 11:59 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> 
wrote:
> > Hi,
> > 
> > a couple of new comments:
> > 
> > On Mittwoch, 18. Dezember 2019 14:02:14 CET Keiichi Watanabe wrote:
> > > From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
> > > 
> > > The virtio video encoder device and decoder device provide
> > > functionalities
> > > to encode and decode video stream respectively.
> > > Though video encoder and decoder are provided as different devices, they
> > > use a same protocol.
> > > 
> > > Signed-off-by: Dmitry Sepp <dmitry.sepp@opensynergy.com>
> > > Signed-off-by: Keiichi Watanabe <keiichiw@chromium.org>
> > > ---
> > > 
> > >  content.tex      |   1 +
> > >  virtio-video.tex | 579 +++++++++++++++++++++++++++++++++++++++++++++++
> > >  2 files changed, 580 insertions(+)
> > >  create mode 100644 virtio-video.tex
> > > 
> > > diff --git a/content.tex b/content.tex
> > > index 556b373..9e56839 100644
> > > --- a/content.tex
> > > +++ b/content.tex
> > > @@ -5743,6 +5743,7 @@ \subsubsection{Legacy Interface: Framing
> > > Requirements}\label{sec:Device \input{virtio-vsock.tex}
> > > 
> > >  \input{virtio-fs.tex}
> > >  \input{virtio-rpmb.tex}
> > > 
> > > +\input{virtio-video.tex}
> > > 
> > >  \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
> > > 
> > > diff --git a/virtio-video.tex b/virtio-video.tex
> > > new file mode 100644
> > > index 0000000..30e728d
> > > --- /dev/null
> > > +++ b/virtio-video.tex
> > > @@ -0,0 +1,579 @@
> > > +\section{Video Device}\label{sec:Device Types / Video Device}
> > > +
> > > +The virtio video encoder device and decoder device are virtual devices
> > > that +supports encoding and decoding respectively. Though the encoder
> > > and the decoder +are different devices, they use the same protocol.
> > > +
> > > +\subsection{Device ID}\label{sec:Device Types / Video Device / Device
> > > ID}
> > > +
> > > +\begin{description}
> > > +\item[30] encoder device
> > > +\item[31] decoder device
> > > +\end{description}
> > > +
> > > +\subsection{Virtqueues}\label{sec:Device Types / Video Device /
> > > Virtqueues} +
> > > +\begin{description}
> > > +\item[0] controlq - queue for sending control commands.
> > > +\item[1] eventq - queue for sending events happened in the device.
> > > +\end{description}
> > > +
> > > +\subsection{Feature bits}\label{sec:Device Types / Video Device /
> > > Feature
> > > bits} +
> > > +\begin{description}
> > > +\item[VIRTIO_VIDEO_F_RESOURCE_GUEST_PAGES (0)] Guest pages can be used
> > > for
> > > video +  buffers.
> > > +\end{description}
> > > +
> > > +\devicenormative{\subsubsection}{Feature bits}{Device Types / Video
> > > Device
> > > / Feature bits} +
> > > +The device MUST offer at least one of feature bits.
> > > +
> > > +\subsection{Device configuration layout}\label{sec:Device Types / Video
> > > Device / Device configuration layout} +
> > > +Video device configuration uses the following layout structure:
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_config {
> > > +        le32 max_cap_len;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{max_cap_len}] defines the maximum length of a descriptor
> > > +  required to call VIRTIO_VIDEO_GET_CAPABILITY in bytes. The device
> > > +  MUST set this value.
> > > +\end{description}
> > > +
> > > +\subsection{Device Initialization}\label{sec:Device Types / Video
> > > Device /
> > > Device Initialization} +
> > > +\devicenormative{\subsubsection}{Device Initialization}{Device Types /
> > > Video Device / Device Initialization} +
> > > +The driver SHOULD query device capability by using the
> > > +VIRTIO_VIDEO_T_GET_CAPABILITY and use that information for the initial
> > > +setup.
> > > +
> > > +\subsection{Device Operation}\label{sec:Device Types / Video Device /
> > > Device Operation} +
> > > +The driver allocates input and output buffers and queues the buffers
> > > +to the device. The device performs operations on the buffers according
> > > +to the function in question.
> > > +
> > > +\subsubsection{Device Operation: Create stream}
> > > +
> > > +To process buffers, the device needs to associate them with a certain
> > > +video stream (essentially, a context). Streams are created by
> > > +VIRTIO_VIDEO_T_STREAM_CREATE with a default set of parameters
> > > +determined by the device.
> > > +
> > > +\subsubsection{Device Operation: Create buffers}
> > > +
> > > +Buffers are used to store the actual data as well as the relevant
> > > +metadata. Scatter lists are supported, so the buffer doesn't need to
> > > +be contiguous in guest physical memory.
> > > +
> > > +\begin{itemize*}
> > > +\item Use VIRTIO_VIDEO_T_RESOURCE_CREATE to create a virtio video
> > > +  resource that is backed by a buffer allocated from the driver's
> > > +  memory.
> > > +\item Use VIRTIO_VIDEO_T_RESOURCE_DESTROY to destroy a resource that
> > > +  is no longer needed.
> > > +\end{itemize*}
> > > +
> > > +\subsubsection{Device Operation: Stream parameter control}
> > > +
> > > +\begin{itemize*}
> > > +\item Use VIRTIO_VIDEO_T_GET_PARAMS to get the current stream
> > > parameters
> > > for +  input and output streams from the device.
> > > +\item Use VIRTIO_VIDEO_T_SET_PARAMS to provide new stream parameters to
> > > the +  device.
> > > +\item After setting stream parameters, the driver may issue
> > > +  VIRTIO_VIDEO_T_GET_PARAMS as some parameters of both input and output
> > > can be +  changed implicitly by the device during the set operation.
> > > +\end{itemize*}
> > > +
> > > +\subsubsection{Device Operation: Process buffers}
> > > +
> > > +\begin{itemize*}
> > > +\item If the function and the buffer type require so, write data to
> > > +the buffer memory.
> > > +\item Use VIRTIO_VIDEO_T_RESOURCE_QUEUE to queue the buffer for
> > > +processing in the device.
> > > +\item The request completes asynchronously when the device has
> > > +finished with the buffer.
> > > +\end{itemize*}
> > > +
> > > +\subsubsection{Device Operation: Buffer processing control}
> > > +
> > > +\begin{itemize*}
> > > +\item Use VIRTIO_VIDEO_T_STREAM_DRAIN to ask the device to process and
> > > +  return all of the already queued buffers.
> > > +\item Use VIRTIO_VIDEO_T_QUEUE_CLEAR to ask the device to return back
> > > +  already queued buffers from the input or the output queue. This also
> > > +  includes input or output buffers that can be currently owned by the
> > > +  device's processing pipeline.
> > > +\end{itemize*}
> > > +
> > > +\subsubsection{Device Operation: Asynchronous events}
> > > +
> > > +While processing buffers, the device can send asynchronous event
> > > +notifications to the driver. The behaviour depends on the exact
> > > +stream. For example, the decoder device sends a resolution change
> > > +event when it encounters new resolution metadata in the stream.
> > > +
> > > +\subsubsection{Device Operation: Request header}
> > > +
> > > +All requests and responses on the control virt queue have a fixed
> > > +header using the following layout structure and definitions:
> > > +
> > > +\begin{lstlisting}
> > > +enum virtio_video_ctrl_type {
> > > +        VIRTIO_VIDEO_CTRL_UNDEFINED = 0,
> > > +
> > > +        /* request */
> > > +        VIRTIO_VIDEO_T_GET_CAPABILITY = 0x0100,
> > > +        VIRTIO_VIDEO_T_STREAM_CREATE,
> > > +        VIRTIO_VIDEO_T_STREAM_DESTROY,
> > > +        VIRTIO_VIDEO_T_STREAM_DRAIN,
> > > +        VIRTIO_VIDEO_T_RESOURCE_CREATE,
> > > +        VIRTIO_VIDEO_T_RESOURCE_DESTROY,
> > > +        VIRTIO_VIDEO_T_RESOURCE_QUEUE,
> > > +        VIRTIO_VIDEO_T_QUEUE_CLEAR,
> > > +        VIRTIO_VIDEO_T_SET_PARAMS,
> > > +        VIRTIO_VIDEO_T_GET_PARAMS,
> > > +
> > > +        /* response */
> > > +        VIRTIO_VIDEO_S_OK = 0x0200,
> > > +        VIRTIO_VIDEO_S_OK_RESOURCE_QUEUE,
> > > +        VIRTIO_VIDEO_S_OK_GET_PARAMS,
> > > +
> > > +        VIRTIO_VIDEO_S_ERR_UNSPEC = 0x0300,
> > > +        VIRTIO_VIDEO_S_ERR_OUT_OF_MEMORY,
> > > +        VIRTIO_VIDEO_S_ERR_INVALID_RESOURCE_ID,
> > > +        VIRTIO_VIDEO_S_ERR_INVALID_STREAM_ID,
> > > +        VIRTIO_VIDEO_S_ERR_INVALID_PARAMETER,
> > > +};
> > > +
> > > +struct virtio_video_ctrl_hdr {
> > > +        le32 type;
> > > +        le32 stream_id;
> > > +        le32 len; /* Length of the structure in bytes. */
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{type}] is the type of the driver request or the device
> > > +response.
> > > +\item[\field{stream_id}] specifies a target stream.
> > > +\item[\field{len}] is the length of data in bytes, which includes
> > > +length of the header.
> > > +\end{description}
> > > +
> > > +\subsubsection{Device Operation: controlq}
> > > +
> > > +\begin{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_GET_CAPABILITY] Retrieve information about
> > > +supported formats.
> > > +
> > > +The driver uses \field{struct virtio_video_get_capability} to send a
> > > +query request.
> > > +
> > > +\begin{lstlisting}
> > > +enum virtio_video_buf_type {
> > > +        VIRTIO_VIDEO_BUF_TYPE_INPUT,
> > > +        VIRTIO_VIDEO_BUF_TYPE_OUTPUT,
> > > +};
> > > +
> > > +struct virtio_video_get_capability {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        enum virtio_video_buf_type buf_type;
> > > +};
> > > +\end{lstlisting}
> > > +\begin{description}
> > > +\item[\field{buf_type}] is the buffer type that the driver asks
> > > +information about. The driver MUST set either
> > > +\field{VIRTIO_VIDEO_BUF_TYPE_INPUT} or
> > > \field{VIRTIO_VIDEO_BUF_TYPE_OUTPUT}. +\end{description}
> > > +
> > > +The device responds a capability by using \field{struct
> > > +virtio_video_get_capability_resp}.
> > > +\begin{lstlisting}
> > > +enum virtio_video_format {
> > > +        VIRTIO_VIDEO_FORMAT_UNDEFINED = 0,
> > > +        /* Raw formats */
> > > +        VIRTIO_VIDEO_FORMAT_NV12 = 1,
> > > +        VIRTIO_VIDEO_FORMAT_YUV420,
> > > +        VIRTIO_VIDEO_FORMAT_YVU420,
> > > +
> > > +        /* Compressed formats */
> > > +        VIRTIO_VIDEO_FORMAT_H264 = 0x1001,
> > > +        VIRTIO_VIDEO_FORMAT_VP8 =  0x1002,
> > > +        VIRTIO_VIDEO_FORMAT_VP9 =  0x1003,
> > > +};
> > > +
> > > +enum virtio_video_profile {
> > > +        VIRTIO_VIDEO_PROFILE_UNDEFINED = 0,
> > > +
> > > +        /* H.264 */
> > > +        VIRTIO_VIDEO_PROFILE_H264_MIN = 0x100,
> > > +        VIRTIO_VIDEO_PROFILE_H264_BASELINE =
> > > VIRTIO_VIDEO_PROFILE_H264_BASELINE, +
> > > VIRTIO_VIDEO_PROFILE_H264_MAIN,
> > > +        VIRTIO_VIDEO_PROFILE_H264_EXTENDED,
> > > +        VIRTIO_VIDEO_PROFILE_H264_HIGH,
> > > +        VIRTIO_VIDEO_PROFILE_H264_HIGH10PROFILE,
> > > +        VIRTIO_VIDEO_PROFILE_H264_HIGH422PROFILE,
> > > +        VIRTIO_VIDEO_PROFILE_H264_HIGH444PREDICTIVEPROFILE,
> > > +        VIRTIO_VIDEO_PROFILE_H264_SCALABLEBASELINE,
> > > +        VIRTIO_VIDEO_PROFILE_H264_SCALABLEHIGH,
> > > +        VIRTIO_VIDEO_PROFILE_H264_STEREOHIGH,
> > > +        VIRTIO_VIDEO_PROFILE_H264_MULTIVIEWHIGH,
> > > +        VIRTIO_VIDEO_PROFILE_H264_MAX =
> > > VIRTIO_VIDEO_PROFILE_H264_MULTIVIEWHIGH, +
> > > +        /* VP8 */
> > > +        VIRTIO_VIDEO_PROFILE_VP8_MIN = 0x200,
> > > +        VIRTIO_VIDEO_PROFILE_VP8_ANY = VIRTIO_VIDEO_PROFILE_VP8_MIN,
> > > +        VIRTIO_VIDEO_PROFILE_VP8_MAX = VIRTIO_VIDEO_PROFILE_VP8_ANY,
> > > +
> > > +        /* VP9 */
> > > +        VIRTIO_VIDEO_PROFILE_VP9_MIN = 0x300,
> > > +        VIRTIO_VIDEO_PROFILE_VP9_PROFILE0 =
> > > VIRTIO_VIDEO_PROFILE_VP9_MIN,
> > > +        VIRTIO_VIDEO_PROFILE_VP9_PROFILE1,
> > > +        VIRTIO_VIDEO_PROFILE_VP9_PROFILE2,
> > > +        VIRTIO_VIDEO_PROFILE_VP9_PROFILE3,
> > > +        VIRTIO_VIDEO_PROFILE_VP9_MAX =
> > > VIRTIO_VIDEO_PROFILE_VP9_PROFILE3,
> > > +};
> > > +
> > > +struct virtio_video_format_range {
> > > +        le32 min;
> > > +        le32 max;
> > > +        le32 step;
> > > +        u8 paddings[4];
> > > +};
> > > +
> > > +struct virtio_video_format_desc {
> > > +        le32 format;  /* One of VIRTIO_VIDEO_FORMAT_* types */
> > > +        le32 profile; /* One of VIRTIO_VIDEO_PROFILE_* types */
> > > +        le64 mask;
> > > +        struct virtio_video_format_range width;
> > > +        struct virtio_video_format_range height;
> > > +        le32 num_rates;
> > > +        u8 padding[4];
> > > +        /* Followed by struct virtio_video_frame_rate frame_rates[] */
> > > +};
> > > +
> > > +struct virtio_video_get_capability_resp {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 num_descs;
> > > +        /* Followed by struct virtio_video_format_desc desc[] */
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +The format description \field{struct virtio_video_format_desc}
> > > +includes the following fields:
> > > +\begin{description}
> > > +\item[\field{format}] specifies an image format. The device MUST set
> > > one
> > > +  of \field{enum virtio_video_format}.
> > > +\item[\field{profile}] specifies a profile of the compressed image
> > > format
> > > +  specified in \field{format}. The driver SHOULD ignore this value if
> > > +  \field{format} is a raw format.
> > 
> > So how should this be used? The spec does not define any way to set
> > profile for the device. It is very important for encoder.
> 
> Thank you for pointing this.
> These points are overlooked, as I didn't care about encoder usage enough.
> 
> After thinking it again, I think it's not a very good idea to include
> supported profiles and levels in a struct for capability.
> This is because these values are available only for limited number of
> formats. Also, it's true that we need to have a way to set these values as
> Dmitry pointed.
> 

Yes, you are right. In fact, the approach of the v1 spec to keep controls 
separately was not correct.

> Instead, it would make more sense to have additional three types of
> controls for profiles, levels, and bitrates:
> (1) QUERY_CONTROL: Query values supported by the device
> (2) GET_CONTROL: Read a value that is set in the device
> (3) SET_CONTROL: Set a value in the device
> 
> These operations are similar to V4L2 controls.
> (1), (2) and (3) would correspond VIDIOC_QUERY{CTRL,MENU}, S_CTRL, and
> G_CTRL in V4L2, respectively.
> Also, (3) would be similar to enum virtio_video_control_type in the
> virtio-video v1 driver implementation in
> https://markmail.org/message/dwghwdqsbl3gsjxu .
> 
> For QUERY_CONTROL, my idea is like this:
> 
> enum virtio_video_control_type {
>   VIRTIO_VIDEO_CONTROL_UNDEFINED = 0,
> 
>   VIRTIO_VIDEO_CONTROL_BITRATE = 0x100,
>   VIRTIO_VIDEO_CONTROL_PROFILE,
>   VIRTIO_VIDEO_CONTROL_LEVEL,
> };
> 
> struct virtio_video_query_control {
>   struct virtio_video_ctrl_hdr hdr;
>   le32 control; /* One of VIRTIO_VIDEO_CONTROL_* types */
>   le32 length;
>   /* Followed by additional data.
>    * If |control| is VIRTIO_VIDEO_CONTROL_PROFILE,
>    * the device must pass a codec format like H264 or VP9.
>    * The requred data must be defined in the specification.
>    */
> };
> 
> struct virtio_video_query_control_resp {
>   struct virtio_video_ctrl_hdr hdr;
>   le32 length;
>   u8 padding[4];
>   /* Followed by data corresponds to the specified control.
>    * The type of data must be defined in the spec.
>    * For example, if the driver queries profiles, this part should be
>    * an array of supported profiles of a given format.
>    */
> };
> 
> WDYT?
> 

I think virtio_video_control_type should make sense. But I would disagree with 
the need to have new QUERY_CONTROL and GET_CONTROL.

I assume the set of supported controls is fixed for some particular format on a 
given IP. So we'd propose to include controls into format descriptors, so we 
don't need to QUERY_CONTROL. This way (with 'virtio_video_format_list') we can 
define not-contiguos ranges, e.g. for profiles.

struct virtio_video_format_frame {
        /* As proposed in Keiichi's prev email */
};

virtio_video_format_list {
        le32 num_entries;
        u8 padding[4];
        /* Followed by le64 entries[] */
};

struct virtio_video_format_control {
        le32 type;
        u8 padding[4];
        struct virtio_video_format_list values;
};

struct virtio_video_format_desc {
        le64 mask;
        le32 format; /* One of VIRTIO_VIDEO_FORMAT_* types */
        le32 planes_layout; /* See the thread [v2 0/1] */
        le32 num_frames;
        le32 num_controls;
        /* Followed by struct virtio_video_format_frame frames[] */
        /* Followed by struct virtio_video_format_control controls[] */
};

SET_CONTROL seems to be mandatory. If it succeeds, we can store the current 
value locally, so there is no need to have GET_CONTROL.

The only exception is the initial (default) control value in the device. But 
with the removal of 'function' and with addition of 'caps' instead, the way to 
provide defaults is gone. So I suppose for formats we'll be just using GET on 
driver start to get the 'defaults'. But the thing is that for formats there 
are other uses for GET, but for controls GET apparently does not make to much 
sense at runtime.

> > Also, shouldn't the profile come together with level? Would make sense for
> > encoders.
> 
> Yeah. So, in the above idea of QUERY_CONTROL, profile should be
> required when querying supported levels.
> 

So probably should be enumerated together, not queried, as per the comment 
above.

> > > +\item[\field{mask}] is a bitset that represents the supported
> > > +  combination of input and output format. If \textit{i}-th bit is set
> > > +  in \field{mask} of \textit{j}-th \field{struct
> > > +  virtio_video_format_desc} for input, the device supports encoding or
> > > +  decoding from the \textit{j}-th input format to \textit{i}-th output
> > > +  format.
> > > +\item[\field{width, height}] represents a range of resolutions
> > > +  supported by the device. If its \field{step} is not applicable, its
> > > +  \field{min} is equal to its \field{max}.
> > > +\item[\field{num_rates}] is the length of an array \field{frame_rates}.
> > > In
> > > case of decoder, the driver SHOULD ignore this value.
> > > +\item[\field{frame_rates}] is an array of supported frame rates.
> > > +\end{description}
> > > +
> > 
> > I'd guess frame rates depend on the resolution as well. This dependency
> > was
> > clear in the v1 spec, but in the v2 there is no dependency anymore. I
> > think we need to update this.
> 
> That's a good point. I missed that dependency when updating the structures.
> So, let me update the structs like the following:
> 
> struct virtio_video_format_frame {
>         struct virtio_video_format_range width;
>         struct virtio_video_format_range height;
>         le32 num_rates;
>         u8 padding[4];
>         /* Followed by struct virtio_video_format_range frame_rates[] */
> };
> 
> struct virtio_video_format_desc {
>         le64 mask;
>         le32 format; /* One of VIRTIO_VIDEO_FORMAT_* types */
>         le32 planes_layout; /* See the thread [v2 0/1] */
>         le32 num_frames;
>         u8 padding[4];
>         /* Followed by struct virtio_video_format_frame frames[] */
> };
>

Yes, I do agree with this approach.

Best regards,
Dmitry.
 
> Best regards,
> Keiichi.
> 
> > Best regards,
> > Dmitry.
> > 
> > > +\item[VIRTIO_VIDEO_T_STREAM_CREATE] create a video stream (context)
> > > +  within the device.
> > > +
> > > +\begin{lstlisting}
> > > +enum virtio_video_mem_type {
> > > +        VIRTIO_VIDEO_MEM_TYPE_GUEST_PAGES,
> > > +};
> > > +
> > > +struct virtio_video_stream_create {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 in_mem_type;  /* One of VIRTIO_VIDEO_MEM_TYPE_* types */
> > > +        le32 out_mem_type; /* One of VIRTIO_VIDEO_MEM_TYPE_* types */
> > > +        char debug_name[64];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{in_mem_type}] is a type of buffer management for input
> > > +buffers. The driver MUST set a value in \field{enum
> > > +virtio_video_mem_type}.
> > > +\item[\field{out_mem_type}] is a type of buffer management for output
> > > +buffers. The driver MUST set a value in \field{enum
> > > +virtio_video_mem_type}.
> > > +\item[\field{debug_name}] is a text string for a debug purpose.
> > > +\end{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_STREAM_DESTROY] destroy a video stream (context)
> > > +  within the device.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_stream_destroy {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\item[VIRTIO_VIDEO_T_STREAM_DRAIN] ask the device to push all the
> > > +  queued buffers through the pipeline.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_stream_drain {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\item[VIRTIO_VIDEO_T_RESOURCE_CREATE] create a resource descriptor
> > > +  within the device.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_mem_entry {
> > > +        le64 addr;
> > > +        le32 length;
> > > +        u8 padding[4];
> > > +};
> > > +
> > > +struct virtio_video_resource_create {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 resource_id;
> > > +        le32 nr_entries;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{resource_id}] internal id of the resource.
> > > +\item[\field{nr_entries}] number of \field{struct
> > > +  virtio_video_mem_entry} memory entries.
> > > +\end{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_RESOURCE_DESTROY] destroy a resource descriptor
> > > +  within the device.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_resource_destroy {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 resource_id;
> > > +        u8 padding[4];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{resource_id}] internal id of the resource.
> > > +\end{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_RESOURCE_QUEUE] Add a buffer to the device's
> > > +queue.
> > > +
> > > +\begin{lstlisting}
> > > +#define VIRTIO_VIDEO_MAX_PLANES 8
> > > +
> > > +struct virtio_video_resource_queue {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 buf_type;
> > > +        le32 resource_id;
> > > +        le64 timestamp;
> > > +        le32 nr_data_size;
> > > +        le32 data_size[VIRTIO_VIDEO_MAX_PLANES];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{buf_type}] buf_type of the .
> > > +\item[\field{resource_id}] internal id of the resource.
> > > +\item[\field{timestamp}] an abstract sequence counter that can be used
> > > +  for synchronisation.
> > > +\item[\field{nr_data_size}] number of \field{data_size} entries.
> > > +\item[\field{data_size}] number of data bytes within a plane.
> > > +\end{description}
> > > +
> > > +\begin{lstlisting}
> > > +enum virtio_video_buffer_flag {
> > > +        VIRTIO_VIDEO_BUFFER_F_ERR        = 0x0001,
> > > +        VIRTIO_VIDEO_BUFFER_F_EOS        = 0x0002,
> > > +        /* Encoder only */
> > > +        VIRTIO_VIDEO_BUFFER_IFRAME        = 0x0004,
> > > +        VIRTIO_VIDEO_BUFFER_PFRAME        = 0x0008,
> > > +        VIRTIO_VIDEO_BUFFER_BFRAME        = 0x0010,
> > > +};
> > > +
> > > +struct virtio_video_resource_queue_resp {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le64 timestamp;
> > > +        le32 flags; /* One of VIRTIO_VIDEO_BUFFER_* flags */
> > > +        le32 size;  /* Encoded size */
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{timestamp}] an abstract sequence counter that can be used
> > > +  for synchronisation.
> > > +\item[\field{flags}] mark specific buffers in the sequence.
> > > +\item[\field{size}] data size in the buffer (encoder only).
> > > +\end{description}
> > > +
> > > +The device sends a response to the queue request asynchronously when
> > > +it has finished processing the buffer.
> > > +
> > > +The device SHOULD mark a buffer that triggered a processing error with
> > > +the VIRTIO_VIDEO_BUFFER_F_ERR flag.
> > > +
> > > +The device MUST mark the last buffer with the
> > > +VIRTIO_VIDEO_BUFFER_F_EOS flag to denote completion of the drain
> > > +sequence.
> > > +
> > > +In case of encoder, to denote a particular frame type the devie MUST
> > > +mark the respective buffer with VIRTIO_VIDEO_BUFFER_IFRAME,
> > > +VIRTIO_VIDEO_BUFFER_PFRAME, VIRTIO_VIDEO_BUFFER_BFRAME.
> > > +
> > > +\item[VIRTIO_VIDEO_T_RESOURCE_QUEUE_CLEAR] Return already queued
> > > +  buffers back from the input or the output queue of the device. The
> > > +  device SHOULD return all of the buffers from the respective queue as
> > > +  soon as possible without pushing the buffers through the processing
> > > +  pipeline.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_queue_clear {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 buf_type;
> > > +        u8 padding[4];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{buf_type}] buffer type.
> > > +\end{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_GET_PARAMS] Get parameters of the input or the
> > > +  output of a stream.
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_plane_format {
> > > +        le32 plane_size;
> > > +        le32 stride;
> > > +        u8 padding[4];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{plane_size}] size of the plane in bytes.
> > > +\item[\field{stride}] stride used for the plane in bytes.
> > > +\end{description}
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_params {
> > > +        le32 buf_type; /* One of VIRTIO_VIDEO_BUF_TYPE_* types */
> > > +        le32 fourcc;   /* One of VIRTIO_VIDEO_FOURCC_* types */
> > > +        le32 frame_width;
> > > +        le32 frame_height;
> > > +        le32 min_buffers;
> > > +        le32 max_buffers;
> > > +        le32 frame_rate;
> > > +        struct virtio_video_crop {
> > > +                le32 left;
> > > +                le32 top;
> > > +                le32 width;
> > > +                le32 height;
> > > +        } crop;
> > > +        le32 num_planes;
> > > +        struct virtio_video_plane_format
> > > plane_formats[VIRTIO_VIDEO_MAX_PLANES]; +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{frame_width}] the value to get/set.
> > > +\item[\field{frame_height}] the value to get/set.
> > > +\item[\field{pixel_format}] the value to get/set.
> > > +\item[\field{min_buffers}] minimum buffers required to handle the
> > > +  format (r/o).
> > > +\item[\field{max_buffers}] maximum buffers required to handle the
> > > +  format (r/o).
> > > +\item[\field{frame_rate}] the value to get/set.
> > > +\item[\field{crop}] cropping (composing) rectangle.
> > > +\item[\field{num_planes}] number of planes used to store pixel data
> > > +(r/o).
> > > +\item[\field{plane_formats}] description of each plane.
> > > +\end{description}
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_get_params {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        le32 buf_type; /* One of VIRTIO_VIDEO_BUF_TYPE_* types */
> > > +};
> > > +
> > > +struct virtio_video_get_params_resp {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        struct virtio_video_params params;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{buf_type}] buffer type.
> > > +\item[\field{params}] parameter values.
> > > +\end{description}
> > > +
> > > +\item[VIRTIO_VIDEO_T_SET_PARAMS] Change parameters of a stream.
> > > +
> > > +
> > > +\begin{lstlisting}
> > > +struct virtio_video_set_params {
> > > +        struct virtio_video_ctrl_hdr hdr;
> > > +        struct virtio_video_params params;
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{params}] parameters to set.
> > > +\end{description}
> > > +
> > > +Setting stream parameters might have side effects within the device.
> > > +For example, the device MAY perform alignment of width and height,
> > > +change the number of planes it uses for the format, or do whatever
> > > +changes that are required to continue normal operation using the
> > > +updated parameters. It is up to the driver to check the parameter set
> > > +after the VIRTIO_VIDEO_T_SET_PARAMS request has been issued.
> > > +
> > > +\end{description}
> > > +
> > > +\subsubsection{Device Operation: eventq}
> > > +
> > > +The device can report events on the event queue. The driver initially
> > > +populates the queue with device-writeable buffers. When the device
> > > +needs to report an event, it fills a buffer and notifies the driver.
> > > +The driver consumes the report and adds a new buffer to the virtqueue.
> > > +
> > > +\begin{lstlisting}
> > > +enum virtio_video_event_type {
> > > +        VIRTIO_VIDEO_EVENT_T_UNDEFINED = 0,
> > > +        /* For all functions */
> > > +        VIRTIO_VIDEO_EVENT_T_ERROR_UNSPEC = 0x0100,
> > > +        /* For decoder only */
> > > +        VIRTIO_VIDEO_EVENT_T_DECODER_RESOLUTION_CHANGED = 0x0200,
> > > +};
> > > +
> > > +struct virtio_video_event {
> > > +        le32 event_type; /* One of VIRTIO_VIDEO_EVENT_T_* types */
> > > +        le32 stream_id;
> > > +        u8 padding[4];
> > > +};
> > > +\end{lstlisting}
> > > +
> > > +\begin{description}
> > > +\item[\field{event_type}] type of the triggered event .
> > > +\item[\field{stream_id}] id of the source stream.
> > > +\end{description}
> > > +
> > > +The device MUST send VIRTIO_VIDEO_EVENT_T_DECODER_RESOLUTION_CHANGED
> > > +whenever it encounters new resolution data in the stream. This
> > > +includes the case of the initial device configuration after metadata
> > > +has been parsed and the case of dynamic resolution change.


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
