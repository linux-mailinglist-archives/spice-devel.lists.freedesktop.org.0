Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A24572F7E55
	for <lists+spice-devel@lfdr.de>; Fri, 15 Jan 2021 15:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344D789E7B;
	Fri, 15 Jan 2021 14:34:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9956E428
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Jan 2021 14:25:51 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id n8so1775014ljg.3
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Jan 2021 06:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JxxiKy1MhUvQKSPU3qakD+6XjuIRc/vWuF+N66w1nKU=;
 b=i8tywqgODbSmzR6uD9chEBNJ9uiCkLVOPbvcbTYKL+NNSycZBFK5GhlBNMY9sCRw/m
 lD64pKW94b6StqayzJ6O+0ks749CNNxB/h6/sP8teyNr/EJtx7IXrJzjr1NeJTrlXA1l
 ynWBZevU0fjvif6+FNnHeGFfCdcduxfJJ/X+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JxxiKy1MhUvQKSPU3qakD+6XjuIRc/vWuF+N66w1nKU=;
 b=cv+5FcoBoIgIQ7qJYKYurtZBv0A2rp6l3oz1Rpxu0Vkepmyyak3Zd13EE7ifaAHtYC
 IJuqatHzMZGsHXd/pP4/42aJ6wLO3AOxlX+i5fqQUAeiJbh7S7Y23ECpvHkHGDbojwLd
 Nqn1WAHZv4ZLLMozfRi3irHIYRadT53GkDAYL2trBBW0STKSgrkN09eI2jwKQjvHDdUk
 Y7judEX728scNHs+mATGGFd4M6hH1VHl26dJiI+YfwQ7UWqwKjM8ttRApWAkucXSkDJQ
 Vll/eEpv/Yfc7V8fYNs5APet99EhghJttHVamNGXe1CUBkvxtaSsREfXFInKi9avDhLP
 o9rQ==
X-Gm-Message-State: AOAM5331JnKvlIXcCssbbLGmvblKE0AkNkR5BecBwHuHSKXQuLacCA2A
 eE3IHZGttftCUtBJD0ekURAHxB10Aa+ShBc2btt7MA==
X-Google-Smtp-Source: ABdhPJz9lI+aMe5TMdQat9NXbM0BZlipkVIqwcsQyQwrJdezn+ln4PpuMnKKKSyg9PVecLw/BJENJL0+mvgvLOevRTk=
X-Received: by 2002:a2e:9f14:: with SMTP id u20mr5433923ljk.244.1610720747986; 
 Fri, 15 Jan 2021 06:25:47 -0800 (PST)
MIME-Version: 1.0
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <87czy7l6uu.fsf@linaro.org>
In-Reply-To: <87czy7l6uu.fsf@linaro.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Fri, 15 Jan 2021 23:25:35 +0900
Message-ID: <CAD90Vca=VPVM7+Cj-2cK3SWaSR_Ciajt7oOr0OyB-34bL15ewg@mail.gmail.com>
To: =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>, 
 Matti.Moell@opensynergy.com
X-Mailman-Approved-At: Fri, 15 Jan 2021 14:34:55 +0000
Subject: Re: [Spice-devel] [virtio-dev] [PATCH RFC v4 0/1] Virtio Video
 Device Specification
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ruchika Gupta <ruchika.gupta@linaro.org>, Pawel Osciak <posciak@chromium.org>,
 virtio-dev@lists.oasis-open.org, David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Peter Griffin <peter.griffin@linaro.org>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>, dmitry.sepp@outlook.com,
 Tomasz Figa <tfiga@chromium.org>, Mike Holmes <mike.holmes@linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 Frediano Ziglio <fziglio@redhat.com>, Enrico Granata <egranata@google.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: multipart/mixed; boundary="===============0005247097=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0005247097==
Content-Type: multipart/alternative; boundary="0000000000000435cd05b8f12678"

--0000000000000435cd05b8f12678
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 15, 2021 at 3:18 AM Alex Benn=C3=A9e <alex.bennee@linaro.org> w=
rote:

>
> Keiichi Watanabe <keiichiw@chromium.org> writes:
>
> > This is the v4 RFC of virtio video device specification.
> > PDF versions are available at [1, 2].
> >
> > Note that this patch depends on a recent patchset "Cross-device resourc=
e
> > sharing" [3].
> >
> > Here is a list of major changes from v3:
> > * Redesingned struct definitions for each command and request based on
> >   discussions at [4].
> > * Renamed commands/structs/enums to more descriptive names.
> > * Had different structs and fields for image formats and bitstream
> formats.
> > * Added more detailed specification for supported video codecs.
> > * Made stream_id be allocated by the device.
> > * Had a single parameter struct per-stream instead of per-queue
> parameters and
> >   controls.
> > * Allowed the driver to specify the number of buffers to use via
> >   "cur_{image,bitstream}_buffers".
> > * Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow
> the
> >   driver to use this command when replacing backing memories as well.
> >
> > [5] is the diff of the header file from v3. Note that it only contains
> changes
> > in the header. We haven't updated the driver nor device implementation
> to focus
> > on protocol design discussion first.
> >
> > While it may appear that many parts have been changed since the previou=
s
> > revision, these changes are to address the issues raised in previous
> discussions
> > or/and to make the protocol simpler and easier to prevent misuse.
> > I'd appreciate any types of feedback.
> >
> > Best regards,
> > Keiichi
> >
> > [1] (full):
> https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?us=
p=3Dsharing
> > [2] (only video section):
> https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8rslj3/view?us=
p=3Dsharing
> > [3]
> https://lists.oasis-open.org/archives/virtio-comment/202003/msg00035.html
> > [4] https://markmail.org/thread/c6h3e3zn647qli3w
> > [5]
> >
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/=
+/2164411
>
> Hi Keiichi,
>
> I wanted to ask what the current status of this spec was. Are you
> planning to submit a new revision of the specification due or are things
> fairly stable now?
>
> We are starting to think about next steps for virtualised video as part
> of Linaro's Stratos work. Specifically we are thinking about
> implementing backends and getting a stack up and running which we can
> use to experiment with multiple hypervisors and VM deployment
> approaches.
>
> Longer term goals included looking at how to integrate virtio-video with
> a secure world on ARM (e.g. feed video data to a secure world device for
> playback via virtio). As part of that we will also be looking at how to
> minimise the memory profile of the backend to do this.
>
> Looking at the virtio-spec repo it looks like the cross-device resource
> sharing is now merged:
>
>   87fa6b5 * virtio-gpu: add support for mapping/unmapping blob resources
>   89e7eb5 * virtio-gpu: add resource create blob
>   162578b * virtio-gpu: add the ability to export resources
>   68f66ff * content: define what an exported object is
>
> are there any other prerequisites?
>
> From a backend implementation point of view it makes sense to wait until
> there is a working frontend driver up-streamed into the kernel. I guess
> that is blocked on the final call for vote on the virtio spec?
>
> I'm sure there is scope for parallelism here but I wanted to get a sense
> of the current direction before embarking on work that would require a
> big re-write down the line.
>

Hi Alex,

Thanks for reaching out to me. I'm really happy to hear your team is
looking at virtio-video.

For the specification, we've been preparing the v5 spec by addressing
previous review comments and simplifying rules. I think we'll be able to
share it for reviewing soon. It won't require any additional mechanism
other than the resource sharing feature.

For the implementation, unfortunately, we haven't started implementing a
driver using the v5 protocol yet.
While we have the driver and device using the v3 protocol in Chrome OS
repository, some efforts are required to update them to support the v5
protocol because there are some gaps between the v3 protocol and the v4/v5
protocol.
I think the driver implementation is necessary for the spec to be merged,
but it's not yet clear when we can spend time implementing drivers. It's
likely to be after April or so.

IIRC, OpenSynergy folks, who implemented the v3 driver, also had some plan
to implement the driver with the v5 spec.
Matti, do you have any update on it? I'd really appreciate it if we could
keep working for upstream together.

Regards,
Keiichi




>
> Regards,
>
> --
> Alex Benn=C3=A9e
>

--0000000000000435cd05b8f12678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 15, 2021 at 3:18 AM Alex =
Benn=C3=A9e &lt;<a href=3D"mailto:alex.bennee@linaro.org">alex.bennee@linar=
o.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><br>
Keiichi Watanabe &lt;<a href=3D"mailto:keiichiw@chromium.org" target=3D"_bl=
ank">keiichiw@chromium.org</a>&gt; writes:<br>
<br>
&gt; This is the v4 RFC of virtio video device specification.<br>
&gt; PDF versions are available at [1, 2].<br>
&gt;<br>
&gt; Note that this patch depends on a recent patchset &quot;Cross-device r=
esource<br>
&gt; sharing&quot; [3].<br>
&gt;<br>
&gt; Here is a list of major changes from v3:<br>
&gt; * Redesingned struct definitions for each command and request based on=
<br>
&gt;=C2=A0 =C2=A0discussions at [4].<br>
&gt; * Renamed commands/structs/enums to more descriptive names.<br>
&gt; * Had different structs and fields for image formats and bitstream for=
mats.<br>
&gt; * Added more detailed specification for supported video codecs.<br>
&gt; * Made stream_id be allocated by the device.<br>
&gt; * Had a single parameter struct per-stream instead of per-queue parame=
ters and<br>
&gt;=C2=A0 =C2=A0controls.<br>
&gt; * Allowed the driver to specify the number of buffers to use via<br>
&gt;=C2=A0 =C2=A0&quot;cur_{image,bitstream}_buffers&quot;.<br>
&gt; * Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow=
 the<br>
&gt;=C2=A0 =C2=A0driver to use this command when replacing backing memories=
 as well.<br>
&gt;<br>
&gt; [5] is the diff of the header file from v3. Note that it only contains=
 changes<br>
&gt; in the header. We haven&#39;t updated the driver nor device implementa=
tion to focus<br>
&gt; on protocol design discussion first.<br>
&gt;<br>
&gt; While it may appear that many parts have been changed since the previo=
us<br>
&gt; revision, these changes are to address the issues raised in previous d=
iscussions<br>
&gt; or/and to make the protocol simpler and easier to prevent misuse.<br>
&gt; I&#39;d appreciate any types of feedback.<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Keiichi<br>
&gt;<br>
&gt; [1] (full): <a href=3D"https://drive.google.com/file/d/1DiOJZfUJ5wvFtn=
NFQicxt0zkp4Ob1o9C/view?usp=3Dsharing" rel=3D"noreferrer" target=3D"_blank"=
>https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?usp=
=3Dsharing</a><br>
&gt; [2] (only video section): <a href=3D"https://drive.google.com/file/d/1=
88uAkIWE0BsXETECez98y5fJKw8rslj3/view?usp=3Dsharing" rel=3D"noreferrer" tar=
get=3D"_blank">https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8=
rslj3/view?usp=3Dsharing</a><br>
&gt; [3] <a href=3D"https://lists.oasis-open.org/archives/virtio-comment/20=
2003/msg00035.html" rel=3D"noreferrer" target=3D"_blank">https://lists.oasi=
s-open.org/archives/virtio-comment/202003/msg00035.html</a><br>
&gt; [4] <a href=3D"https://markmail.org/thread/c6h3e3zn647qli3w" rel=3D"no=
referrer" target=3D"_blank">https://markmail.org/thread/c6h3e3zn647qli3w</a=
><br>
&gt; [5]<br>
&gt; <a href=3D"https://chromium-review.googlesource.com/c/chromiumos/third=
_party/kernel/+/2164411" rel=3D"noreferrer" target=3D"_blank">https://chrom=
ium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2164411</a><b=
r>
<br>
Hi Keiichi,<br>
<br>
I wanted to ask what the current status of this spec was. Are you<br>
planning to submit a new revision of the specification due or are things<br=
>
fairly stable now?<br>
<br>
We are starting to think about next steps for virtualised video as part<br>
of Linaro&#39;s Stratos work. Specifically we are thinking about<br>
implementing backends and getting a stack up and running which we can<br>
use to experiment with multiple hypervisors and VM deployment<br>
approaches.<br>
<br>
Longer term goals included looking at how to integrate virtio-video with<br=
>
a secure world on ARM (e.g. feed video data to a secure world device for<br=
>
playback via virtio). As part of that we will also be looking at how to<br>
minimise the memory profile of the backend to do this.<br>
<br>
Looking at the virtio-spec repo it looks like the cross-device resource<br>
sharing is now merged:<br>
<br>
=C2=A0 87fa6b5 * virtio-gpu: add support for mapping/unmapping blob resourc=
es<br>
=C2=A0 89e7eb5 * virtio-gpu: add resource create blob<br>
=C2=A0 162578b * virtio-gpu: add the ability to export resources<br>
=C2=A0 68f66ff * content: define what an exported object is<br>
<br>
are there any other prerequisites?<br>
<br>
From a backend implementation point of view it makes sense to wait until<br=
>
there is a working frontend driver up-streamed into the kernel. I guess<br>
that is blocked on the final call for vote on the virtio spec?<br>
<br>
I&#39;m sure there is scope for parallelism here but I wanted to get a sens=
e<br>
of the current direction before embarking on work that would require a<br>
big re-write down the line.<br></blockquote><div><br></div><div>Hi Alex,</d=
iv><div><br></div><div>Thanks for reaching out to me. I&#39;m really happy =
to hear your team is looking at virtio-video.</div><div><br></div><div>For =
the specification, we&#39;ve been preparing the v5 spec by addressing previ=
ous review comments and simplifying rules. I think we&#39;ll be able to sha=
re it for reviewing soon. It won&#39;t require any additional mechanism oth=
er than the resource sharing feature.</div><div><br></div><div>For the impl=
ementation, unfortunately, we haven&#39;t started implementing a driver usi=
ng the v5 protocol yet.</div><div>While we have the driver and device using=
 the v3 protocol in Chrome OS repository, some efforts are required to upda=
te them to support the v5 protocol because there are some gaps between the =
v3 protocol and the v4/v5 protocol.</div><div>I think the driver implementa=
tion is necessary for the spec to be merged, but it&#39;s not yet clear whe=
n we can spend time implementing drivers. It&#39;s likely to be after April=
 or so.<br></div><div><br></div><div>IIRC, OpenSynergy folks, who implement=
ed the v3 driver, also had some plan to implement the driver with the v5 sp=
ec.</div><div>Matti, do you have any update on it? I&#39;d really appreciat=
e it if we could keep working for upstream together.</div><div><br></div><d=
iv>Regards,</div><div>Keiichi</div><div><br></div><div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
<br>
-- <br>
Alex Benn=C3=A9e<br>
</blockquote></div></div>

--0000000000000435cd05b8f12678--

--===============0005247097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0005247097==--
