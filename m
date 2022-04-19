Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5CF507228
	for <lists+spice-devel@lfdr.de>; Tue, 19 Apr 2022 17:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1964410EEBC;
	Tue, 19 Apr 2022 15:53:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E3110EEBC
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 15:53:04 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id bn33so21058610ljb.6
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 08:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MttdahTq2hrKqvduqFFQRsiSmCScyd3DAy3QKt/dhKU=;
 b=QMO/29xC0EqsNwpn1p/6sEzsJRa7XNoRNigNuOYhYKPR06O/UsW9Hi1r5g4hNnTE5J
 +96F7ptx02XM2pbXsLjma+UurZ77TwcAUVLANBsHDNhI454AUXrdh4vzX26StlSmtU4g
 1zlt/q5elqAZJ19vmsg1R1oLY9l1vKtZIDRy9EvUrutEjLMpRhW7trO9AKlNp7u/vXUb
 jDisdSQJ4NabZFRgnCmikiKv3B8Z13fxxl19COtjqz5k9I4US3KUtuY3+haWCf7MOJt8
 XRZEOBWkpgx08G3aGiRKz3dOMjMp1WKYJ+wI7pOvcLYZiaxMzs8vQze7N9kAwCIYdwFc
 Mt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MttdahTq2hrKqvduqFFQRsiSmCScyd3DAy3QKt/dhKU=;
 b=MAjTs0tRFh1nNCjM+hbgoY603Or4zOoeFfSKgmj7KifcGmmvacoME3NzDDxMk4Ernj
 BK8kUQambU4/Emv7eP0MNpdK97x261RYUhpn4hD0J66JbciO4agWm9CoPCOf3Mq0zGDk
 T3ctTsbZxlEVjlNQ4iLp7cWG6zIOSEv22iOKXQgmHzSbB7aDEkr6jRy4G2kxCutAPt+4
 XFpBaX1iztUt4Ieyb5z3+50PQS/xoo4EMLEWOPbSfH3JMzEqchpmJaHOvm3IkIQGYiFz
 35DpwHVaD8Bh3Nibo5FQBzIFq4lNwFE2IUeDZBCJVJdzBwg4JOoK3B06e8/4hoHyaU/y
 CU/w==
X-Gm-Message-State: AOAM531K5FvszdT8mygvx5xa3WXMizZEy5/k+bgh8pz74QaAYUtZvcdF
 Ns0EkV/NN0DG4PWJig84c0RvCJKjMnFhtZF+SpA=
X-Google-Smtp-Source: ABdhPJxkecQliEWsxV71y/lbNUJ9zcheK7mHTICUPJwhMH21aWW2MH/hYVOTDZ7zB2rO0oC8U9QzuYl+bonbNoWNDws=
X-Received: by 2002:a2e:8184:0:b0:24d:b11f:484f with SMTP id
 e4-20020a2e8184000000b0024db11f484fmr9585181ljg.240.1650383583043; Tue, 19
 Apr 2022 08:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1z9a38rO71avvKvdbtpNBxxOBZQsVz4jiNFUMKrCFPELQ@mail.gmail.com>
 <20220419104221.yysms2qpvwzsslgr@tapioca>
In-Reply-To: <20220419104221.yysms2qpvwzsslgr@tapioca>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 19 Apr 2022 16:52:51 +0100
Message-ID: <CAHt6W4cM3wX_tWu79eWCA8CN-MGwBagnkNaX01RJaFJeEDrhSA@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="00000000000035e50105dd03df97"
Subject: Re: [Spice-devel] Code confusion: the difference between
 video_stream_trace_update() and video_stream_maintenance()
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
Cc: Walter Mitty <waltermitty121906@gmail.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000035e50105dd03df97
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 19 apr 2022 alle ore 11:42 Victor Toso <victortoso@redhat.com>
ha scritto:

> Hi,
>
> On Wed, Apr 13, 2022 at 03:06:24PM +0800, Walter Mitty wrote:
> > Hello,
> > I am learning spice-server source code. And i'm confusing the 2
> > functions in `video-stream.cpp`: video_stream_trace_update /
> > video_stream_maintenance.
> >
> > There is a todo about it.
> > Any suggestions please?
>
> I think the TODO is also to clarify if and when functions were
> needed and how to properly use them. I'd need to dive into it to
> check. If you understand them, I'd appreciate if you submit a
> documentation patch about it, I'd be happy to review your
> findings.
>
> Cheers,
> Victor
>

Hi,
   I wish I had a better reply but not much.
From a quick glance one is more "focused", the other less.
video_stream_trace_update is scanning all possible streams and traces
looking for matches while video_stream_maintenance is looking for a single
stream. Looking at callers one of the callers of video_stream_maintenance
is current_add_equal which is called if another Drawable matches exactly
(same position and size).

Frediano

--00000000000035e50105dd03df97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno mar 19 apr 2022 alle ore 11:42 Victor Toso &lt;<a href=3D"=
mailto:victortoso@redhat.com">victortoso@redhat.com</a>&gt; ha scritto:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Wed, Apr 13, 2022 at 03:06:24PM +0800, Walter Mitty wrote:<br>
&gt; Hello,<br>
&gt; I am learning spice-server source code. And i&#39;m confusing the 2<br=
>
&gt; functions in `video-stream.cpp`: video_stream_trace_update /<br>
&gt; video_stream_maintenance.<br>
&gt; <br>
&gt; There is a todo about it.<br>
&gt; Any suggestions please?<br>
<br>
I think the TODO is also to clarify if and when functions were<br>
needed and how to properly use them. I&#39;d need to dive into it to<br>
check. If you understand them, I&#39;d appreciate if you submit a<br>
documentation patch about it, I&#39;d be happy to review your<br>
findings.<br>
<br>
Cheers,<br>
Victor<br></blockquote><div><br></div><div>Hi,</div><div>=C2=A0=C2=A0 I wis=
h I had a better reply but not much.</div><div>From a quick glance one is m=
ore &quot;focused&quot;, the other less. video_stream_trace_update is scann=
ing all possible streams and traces looking for matches while video_stream_=
maintenance is looking for a single stream. Looking at callers one of the c=
allers of video_stream_maintenance is current_add_equal which is called if =
another Drawable matches exactly (same position and size).<br></div><div><b=
r></div><div>Frediano<br></div></div></div>

--00000000000035e50105dd03df97--
