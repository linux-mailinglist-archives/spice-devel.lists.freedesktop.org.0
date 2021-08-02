Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C313DD0A0
	for <lists+spice-devel@lfdr.de>; Mon,  2 Aug 2021 08:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D9666E40F;
	Mon,  2 Aug 2021 06:34:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571A26E40F
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Aug 2021 06:34:04 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id mt6so23891750pjb.1
 for <spice-devel@lists.freedesktop.org>; Sun, 01 Aug 2021 23:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=h86nOvUmp3zth8pOOznwUO7UbF+d5iTJVUqb12kZ0Do=;
 b=lZ5U5A/FDF0ZqYFqH4+ynh56Y9O9YouHL8kCpzN/XGYZl14U8HTfGoXU2w6YQs/HsT
 7k9kak7gyC/vuCaHjfgaURQS2TzeRDPwdta+omHGP8fl9iuiVe+LQhYeLcYzmsEP5O0e
 ugAQOytwoTuUYmiJ41XlLFJr/bDbOCfKJL7UerI7yDJP//XRWHeUJlk2jDSPXnmP2psg
 8kwleJtzQJwNH+YPcT6vuaFGD7NcHB/Gmw7TfjnP6H43m6vd2CqZ+WGEQ+8FkHkZtVmQ
 /5wJvXG1rtB8VfCIuqRahW5D9PhPYnu+xc4tdHnKyAjw2I2TKpTQ+PjqJkeZ4ixSFnJB
 wH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=h86nOvUmp3zth8pOOznwUO7UbF+d5iTJVUqb12kZ0Do=;
 b=ZEZ/BdaAvjycMswX2V0QtIKSaNDv0QuqL5Q9IMmrNpK6eBh+K1OPlsJJ4zT8wFuX+b
 uqoaQEl+ZtpfGrCxFKNfz4CNF7GBSgUZz1dHb4ZEv5st8NEqjWlw8lM1RQyDXyfgHlmm
 Lrg6i/BgxHSM9VG4B68gNZKIItlcYt7zEAnQSSuehElIUgY2tP5Ss/Q86qAGkac3HX1G
 qxTEljJBh44f6yrvyo2Stln9X3R15L50PCEYxq//3MGkdcxqaV977J++7Cjh+/smJN8W
 kkZxyDOzo+/ej0iGO+hznBJqSKsjFIEhl3YmSGHFdrzwCA2KZt1klSj78gdOPkWGInzm
 t9SQ==
X-Gm-Message-State: AOAM5304wmcRpA2snuUTnuRU3xSFdxkS6Af5gXIcrR7rVCpEmnTXwWO6
 Z4Ws8P7gkKSPRorhMZfJwshVKj5a36dnF3yfv1bW+sVZr08IxGHH
X-Google-Smtp-Source: ABdhPJxYfB9THBfRGQShH1PRTB4RM2GTjPsoYvT4gVurQmMR1F0/63Wi/nQq0ob2Cv3WxEeyng5NKpuqCIGkvbP1c0M=
X-Received: by 2002:a17:902:ab53:b029:12c:57a6:13ae with SMTP id
 ij19-20020a170902ab53b029012c57a613aemr13100844plb.53.1627886043630; Sun, 01
 Aug 2021 23:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANVktGPb3s2rEiOu+SmRtegN65tu4w+wDmxPgLNv5_Kgm3+hyQ@mail.gmail.com>
 <20210730150055.wkicjag6ubrhge6j@tapioca>
In-Reply-To: <20210730150055.wkicjag6ubrhge6j@tapioca>
From: "Noah O'Donoghue" <noah.odonoghue@gmail.com>
Date: Mon, 2 Aug 2021 13:33:52 +0700
Message-ID: <CANVktGNHniedDJu9neRc1tttEAR5XAuz8pzF+5TFUd1bLDGuWQ@mail.gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000005d8e9e05c88dc190"
Subject: Re: [Spice-devel] Spice with H264/5
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

--0000000000005d8e9e05c88dc190
Content-Type: text/plain; charset="UTF-8"

Thanks for the response Victor,

I guess from my limited (user) perspective I don't have much to contribute,
but it's good to know I wasn't doing anything wrong and support could come
in a later release.

Cheers!

On Fri, 30 Jul 2021 at 22:02, Victor Toso <victortoso@redhat.com> wrote:

> Hi,
>
> On Mon, Jun 21, 2021 at 05:04:59PM +0700, Noah O'Donoghue wrote:
> > Hi all,
> >
> > I'm trying to use gstreamer with spice to encode/decode video,
> > as I think it will be much faster and smoother than MJPEG,
> >
> > I've installed these packages on both client and server (Ubuntu 20.04)
> > gstreamer1.0-plugins-base
> > gstreamer1.0-plugins-good,
> >
> > And with remote-viewer --spice-debug I can see that my
> > client/server are advertising a range of protocols (including
> > H264)..
> >
> > But for some reason it only uses MJPEG..?
> >
> > Any ideas?
>
> You need configure the server to do the encoding, that is not
> enable by default. You can see in the code [0] that spice:mjpeg
> is preferred and gstreamer is only enabled if spice compiled with
> gstreamer.
>
> The second thing to keep in mind is how to set the preference of
> video encoding with mjpeg. The application using spice should
> use spice_server_set_video_codecs() introduced at [1] API but
> QEMU never got to implement that so you are a bit limited to how
> to configure that on the host side.
>
> As you have mentioned, there is some support in the protocol to
> configure the server based on client's requests. It was
> implemented first as a testing tool, to exchange video-codec on
> the fly and later it could be used to rank video-codec based on
> client's capabilities for hw decoding. You can test that in spicy
> testing tool, there is a radio button list that you can reach
> from the Menu. Sadly, this feature did not reach the stage we
> wanted in order to implement for other clients like virt-viewer.
>
> [0]
> https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp#L3425
> [1] https://gitlab.freedesktop.org/spice/spice/-/commit/497fcbb0a
>
> Sorry delay.
>
> Cheers,
> Victor
>

--0000000000005d8e9e05c88dc190
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the response Victor, <br></div><div><br></=
div><div>I guess from my limited (user) perspective I don&#39;t have much t=
o contribute, but it&#39;s good to know I wasn&#39;t doing anything wrong a=
nd support could come in a later release. <br></div><div><br></div><div>Che=
ers!<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 30 Jul 2021 at 22:02, Victor Toso &lt;<a href=3D"ma=
ilto:victortoso@redhat.com">victortoso@redhat.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Mon, Jun 21, 2021 at 05:04:59PM +0700, Noah O&#39;Donoghue wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I&#39;m trying to use gstreamer with spice to encode/decode video,<br>
&gt; as I think it will be much faster and smoother than MJPEG,<br>
&gt; <br>
&gt; I&#39;ve installed these packages on both client and server (Ubuntu 20=
.04)<br>
&gt; gstreamer1.0-plugins-base<br>
&gt; gstreamer1.0-plugins-good,<br>
&gt; <br>
&gt; And with remote-viewer --spice-debug I can see that my<br>
&gt; client/server are advertising a range of protocols (including<br>
&gt; H264)..<br>
&gt; <br>
&gt; But for some reason it only uses MJPEG..?<br>
&gt; <br>
&gt; Any ideas?<br>
<br>
You need configure the server to do the encoding, that is not<br>
enable by default. You can see in the code [0] that spice:mjpeg<br>
is preferred and gstreamer is only enabled if spice compiled with<br>
gstreamer.<br>
<br>
The second thing to keep in mind is how to set the preference of<br>
video encoding with mjpeg. The application using spice should<br>
use spice_server_set_video_codecs() introduced at [1] API but<br>
QEMU never got to implement that so you are a bit limited to how<br>
to configure that on the host side.<br>
<br>
As you have mentioned, there is some support in the protocol to<br>
configure the server based on client&#39;s requests. It was<br>
implemented first as a testing tool, to exchange video-codec on<br>
the fly and later it could be used to rank video-codec based on<br>
client&#39;s capabilities for hw decoding. You can test that in spicy<br>
testing tool, there is a radio button list that you can reach<br>
from the Menu. Sadly, this feature did not reach the stage we<br>
wanted in order to implement for other clients like virt-viewer.<br>
<br>
[0] <a href=3D"https://gitlab.freedesktop.org/spice/spice/-/blob/master/ser=
ver/reds.cpp#L3425" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/spice/spice/-/blob/master/server/reds.cpp#L3425</a><br>
[1] <a href=3D"https://gitlab.freedesktop.org/spice/spice/-/commit/497fcbb0=
a" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spic=
e/spice/-/commit/497fcbb0a</a><br>
<br>
Sorry delay.<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div>

--0000000000005d8e9e05c88dc190--
