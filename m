Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E510011E645
	for <lists+spice-devel@lfdr.de>; Fri, 13 Dec 2019 16:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0396E8CD;
	Fri, 13 Dec 2019 15:13:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 15:04:17 UTC
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893656E8E0
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 15:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576249456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6sgcTkCk7vDzn3JJ5s642ELaJ6Ml/08WJzwYK1KSnKM=;
 b=UU++m994zGqZdqQtFxq/MdQ7ubCUrEXijmyjVWNkU6SeMzwya5JzbeuF9jF37UNaUMINuc
 8A2+NmtsBEyv14Qz9pF4Q1/46xq6ArozQ5exaPepiWpXKqOFKjTQBOMSEHqvkA0I1C0Qzr
 Mh1i36k6TQNZp1hZb1f86/woz4oNyt0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-275-JI30byOKPBGYTyj6fAem6Q-1; Fri, 13 Dec 2019 09:58:08 -0500
Received: by mail-wm1-f72.google.com with SMTP id p5so1861012wmc.4
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 06:58:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=rAhx518hx0qFPTrhRz8sQzaZDfjAvPyOAV/OKMzmyYA=;
 b=Cp+7cS6OUbtBV7dSi9Oxf836e7pjmviJsOY+4tCfdUCKm4KW22sUJ6YvxB0b0obmcW
 26blNoxWROfUdb+3H+j6jlFrzrXI5sL2X0l0KgZrJwcgZShIkCSY75ZsB55o0Q+0zJgp
 ri/nnHhSfVDuPp462BvNHqzr7loVw0aDmZz/d0COfDY6ONhpVKY8BE8EDAYWV+lhabO5
 plO1pwXEUpRycR4s3Cp6xk6mlLI5YcnkQwu/Ilk/EsU41o6O0yEBAFxkFpHvRHq03YJn
 9P0GIegcdH2EatFri3C7kK8kDTNFbkWlRFUJtCAz96DAFxkx+iq3tCB+DaHoMcvt5xyR
 Xmew==
X-Gm-Message-State: APjAAAViX4bOS6A56s7kvbnY984oGz9JTmEav4CkGudyyKpXEJzuSHzp
 deZVYbPFb8JIaRVh4qVNe/0MylMqsbcAz1IoPGzgc1aMml1Ac1QZhNyXwnCBKKyMVVBXCUM6Xav
 ItJM73EwQrNkDrJG9jxzGDTPEXPmpEkE=
X-Received: by 2002:a1c:f705:: with SMTP id v5mr13803029wmh.82.1576249086477; 
 Fri, 13 Dec 2019 06:58:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbJIiRW+WLwJJ3eNz+dnhYoamPYXjavGvfNq1MCKnF5n54atsVCc9uHq8fwj9AEryHyvxoXg==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr13802993wmh.82.1576249086070; 
 Fri, 13 Dec 2019 06:58:06 -0800 (PST)
Received: from ?IPv6:2a01:e0a:466:71c0:75d5:7cf9:ece8:92be?
 ([2a01:e0a:466:71c0:75d5:7cf9:ece8:92be])
 by smtp.gmail.com with ESMTPSA id h2sm10538575wrt.45.2019.12.13.06.58.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 06:58:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Christophe de Dinechin <dinechin@redhat.com>
In-Reply-To: <9280087.Px4QY1m31c@os-lin-dmo>
Date: Fri, 13 Dec 2019 15:58:04 +0100
Message-Id: <E9EAC077-6966-4A1D-9731-AFC831C089A2@redhat.com>
References: <20191105191919.167345-1-dmitry.sepp@opensynergy.com>
 <CAD90VcbYAhk9CiagSEi=ouNMioR4v71uc40rRHGMe_+wvAm+0g@mail.gmail.com>
 <20191204091620.zpnd7jttkpkduort@sirius.home.kraxel.org>
 <9280087.Px4QY1m31c@os-lin-dmo>
To: spice-devel@lists.freedesktop.org, Frediano Ziglio <fziglio@redhat.com>,
 Uri Lublin <uril@redhat.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-MC-Unique: JI30byOKPBGYTyj6fAem6Q-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 13 Dec 2019 15:13:17 +0000
Subject: Re: [Spice-devel] [virtio-dev] [RFC RESEND] virtio-video: Add
 virtio video device specification
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
 Daniel Vetter <daniel@ffwll.ch>, Alexandre Courbot <acourbot@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, Keiichi Watanabe <keiichiw@chromium.org>,
 David Stevens <stevensd@chromium.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 =?utf-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

+spice-devel for awareness

Context: there is a lot of work there on video streaming for SPICE, mostly
done ATM through proprietary APIs.

> On 9 Dec 2019, at 15:19, Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
> 
> Hello,
> 
> I'd like to invite everyone to share ideas regarding required encoder features 
> in this separate sub-tree.
> 
> In general, encoder devices are more complex compared to decoders. So the 
> question I'd like to rise is in what way we define the minimal subset of 
> features to be implemented by the virtio-video.
> 
> We may look at the following to define the set of features:
> 1. USB video, 2.3.6 Encoding Unit [1].
> 2. Android 10 Compatibility Definition [2].
> 
> Would be nice to hear about any specific requirements from the Chromium team as 
> well.
> 
> [1] https://www.usb.org/sites/default/files/USB_Video_Class_1_5.zip
> [2] https://source.android.com/compatibility/android-cdd#5_2_video_encoding
> 
> Thank you.
> 
> Best regards,
> Dmitry.
> 
> On Mittwoch, 4. Dezember 2019 10:16:20 CET Gerd Hoffmann wrote:
>>  Hi,
>> 
>>> 1. Focus on only decoder/encoder functionalities first.
>>> 
>>> As Tomasz said earlier in this thread, it'd be too complicated to support
>>> camera usage at the same time. So, I'd suggest to make it just a generic
>>> mem-to-mem video processing device protocol for now.
>>> If we finally decide to support camera in this protocol, we can add it
>>> later.
>> Agree.
>> 
>>> 2. Only one feature bit can be specified for one device.
>>> 
>>> I'd like to have a decoder device and encoder device separately.
>>> It'd be natural to assume it because a decoder and an encoder are provided
>>> as different hardware.
>> 
>> Hmm, modern GPUs support both encoding and decoding ...
>> 
>> I don't think we should bake that restriction into the specification.
>> It probably makes sense to use one virtqueue per function though, that
>> will simplify dispatching in both host and guest.
>> 
>>> 3. Separate buffer allocation functionalities from virtio-video protocol.
>>> 
>>> To support various ways of guest/host buffer sharing, we might want to
>>> have a dedicated buffer sharing device as we're discussing in another
>>> thread. Until we reach consensus there, it'd be good not to have buffer
>>> allocation
>>> functionalities in virtio-video.
>> 
>> I think virtio-video should be able to work as stand-alone device,
>> so we need some way to allocate buffers ...
>> 
>> Buffer sharing with other devices can be added later.
>> 
>>>> +The virtio video device is a virtual video streaming device that
>>>> supports the +following functions: encoder, decoder, capture, output.
>>>> +
>>>> +\subsection{Device ID}\label{sec:Device Types / Video Device / Device
>>>> ID}
>>>> +
>>>> +TBD.
>>> 
>>> I'm wondering how and when we can determine and reserve this ID?
>> 
>> Grab the next free, update the spec accordingly, submit the one-line
>> patch.
>> 
>>>> +\begin{lstlisting}
>>>> +enum virtio_video_pixel_format {
>>>> +       VIRTIO_VIDEO_PIX_FMT_UNDEFINED = 0,
>>>> +
>>>> +       VIRTIO_VIDEO_PIX_FMT_H264 = 0x0100,
>>>> +       VIRTIO_VIDEO_PIX_FMT_NV12,
>>>> +       VIRTIO_VIDEO_PIX_FMT_NV21,
>>>> +       VIRTIO_VIDEO_PIX_FMT_I420,
>>>> +       VIRTIO_VIDEO_PIX_FMT_I422,
>>>> +       VIRTIO_VIDEO_PIX_FMT_XBGR,
>>>> +};
>>> 
>>> I'm wondering if we can use FOURCC instead. So, we can avoid reinventing a
>>> mapping from formats to integers.
>>> Also, I suppose the word "pixel formats" means only raw (decoded) formats.
>>> But, it can be encoded format like H.264. So, I guess "image format" or
>>> "fourcc" is a better word choice.
>> 
>> Use separate pixel_format (fourcc) and stream_format (H.264 etc.) enums?
>> 
>>>> +\begin{lstlisting}
>>>> +struct virtio_video_function {
>>>> +       struct virtio_video_desc desc;
>>>> +       __le32 function_type; /* One of VIRTIO_VIDEO_FUNC_* types */
>>>> +       __le32 function_id;
>>>> +       struct virtio_video_params in_params;
>>>> +       struct virtio_video_params out_params;
>>>> +       __le32 num_caps;
>>>> +       __u8 padding[4];
>>>> +       /* Followed by struct virtio_video_capability video_caps[]; */
>>>> +};
>>>> +\end{lstlisting}
>>> 
>>> If one device only has one functionality, virtio_video_function's fields
>>> will be no longer needed except in_params and out_params. So, we'd be
>>> able to remove virtio_video_function and have in_params and out_params in
>>> virtio_video_capability instead.
>> 
>> Same goes for per-function virtqueues (used virtqueue implies function).
>> 
>>>> +\begin{lstlisting}
>>>> +struct virtio_video_resource_detach_backing {
>>>> +       struct virtio_video_ctrl_hdr hdr;
>>>> +       __le32 resource_id;
>>>> +       __u8 padding[4];
>>>> +};
>>>> +\end{lstlisting}
>>>> +
>>>> +\begin{description}
>>>> +\item[\field{resource_id}] internal id of the resource.
>>>> +\end{description}
>>> 
>>> I suppose that it'd be better not to have the above series of T_RESOURCE
>>> controls at least until we reach a conclusion in the thread of
>>> buffer-sharing device. If we end up concluding this type of controls is
>>> the best way, we'll be able to revisit here.
>> 
>> Well.  For buffer management there are a bunch of options.
>> 
>> (1) Simply stick the buffers (well, pointers to the buffer pages) into
>>     the virtqueue.  This is the standard virtio way.
>> 
>> (2) Create resources, then put the resource ids into the virtqueue.
>>     virtio-gpu uses that model.  First, because virtio-gpu needs an id
>>     to reference resources in the rendering command stream
>>     (virtio-video doesn't need this).  Also because (some kinds of)
>>     resources are around for a long time and the guest-physical ->
>>     host-virtual mapping needs to be done only once that way (which
>>     I think would be the case for virtio-video too because v4l2
>>     re-uses buffers in robin-round fashion).  Drawback is this
>>     assumes shared memory between host and guest (which is the case
>>     in typical use cases but it is not mandated by the virtio spec).
>> 
>> (3) Import external resources (from virtio-gpu for example).
>>     Out of scope for now, will probably added as optional feature
>>     later.
>> 
>> I guess long-term we want support either (1)+(3) or (2)+(3).
>> 
>> cheers,
>>  Gerd
> 
> 
> 
> ---------------------------------------------------------------------
> To unsubscribe, e-mail: virtio-dev-unsubscribe@lists.oasis-open.org
> For additional commands, e-mail: virtio-dev-help@lists.oasis-open.org
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
