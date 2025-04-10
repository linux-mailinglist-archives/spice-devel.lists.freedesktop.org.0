Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5904DA84F1A
	for <lists+spice-devel@lfdr.de>; Thu, 10 Apr 2025 23:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575E710EA3A;
	Thu, 10 Apr 2025 21:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TZuylZl1";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8038B10EA3A
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Apr 2025 21:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1744319807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=i0DBQ/lRjPXkvWejShYbfkRZSxJOk6ovdvmKtDG3yaQ=;
 b=TZuylZl1TPbG3TyxKuj/k2xWSnTEOg9sdaOUZkOHpwCMYGcOVIQg8yZNiGKzRqvDWkJgni
 Hz4Eclh2WQqZiPn7O/OTKgru+uzvYQ91JW15aFckbGFR37B1bjnOSggvz87m8e6xDyHM6N
 C8v6eulI00+jnBDDPQ5w1Rk42LOTuFY=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689--cY7Dt4mNEGo0ACEHcpFHw-1; Thu, 10 Apr 2025 17:16:44 -0400
X-MC-Unique: -cY7Dt4mNEGo0ACEHcpFHw-1
X-Mimecast-MFC-AGG-ID: -cY7Dt4mNEGo0ACEHcpFHw_1744319804
Received: by mail-oo1-f72.google.com with SMTP id
 006d021491bc7-603fbdaaf28so889214eaf.2
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Apr 2025 14:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744319803; x=1744924603;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=i0DBQ/lRjPXkvWejShYbfkRZSxJOk6ovdvmKtDG3yaQ=;
 b=AvFB4sfiy+xAUKixWOV26Q3qc10cL8/uMCC8V5E2M6KkJ6SGn7VsilQePjXdB0qLmP
 zJX67Q6r4JI0lhaVMVFAUdMQjrLsvGdSFhLp3cjFaVBdSsrpRGxp7JyRCx70o1P7+lK1
 PQqkjUTaVDMLvXBvnSUTnV4CZkxhHSCIVyUuJzNMwdbZpItohaZ3Rnb2IIwu+DBb5yEl
 +rrH1mEd1Z4YvXJPaFZvavbY/1UovXRShlgXe1X79Sod98YNRnGh9iw12cLMu5KhSZSX
 wk3pO12YPCKTk8Is+1ItSQahfwf0r+2rugn2qTT1euZWB0MnBMM4JKt1BzTBspqDkDdw
 pWKA==
X-Gm-Message-State: AOJu0YyaMmsbp33P3cf0Kmmwp0+jPIwgVrkxICOLhlvCkoBl5RpKMw+A
 S2GUf+ZPyD70yeC0AUPrmRLj5Yea+KvaFmYuW90/BelSt9DMyCY+ekPZQRQ8IENm3QlfmWnuj14
 ch8qFkn9VkHR5dmqu0WdCRB/3DX/+rmuYOLIvERgebOLzS8EuPuG1tRiWTQB1u6n4yIYjfokPj2
 V1NfbmCxQxta93cDaapqXCo6ebLY0KRJtYRpSSDXSRF/xB7F6rKJLfwJmQ
X-Gm-Gg: ASbGnctR5zoDUm3qeM5tOTQr+oUN+z17I16P0pYaUsuJ+UOUJ4gOqWCP0YVT9EotHDp
 CUrmjel8ADfh47Au3qTmcrDT385fiMHjsXgdvvxq/gXw6jvkbvM9jUCg0plqSLqsXnXhl8M8m/L
 S3TLuSEv2VC8CK5mwD+vpdgrr+6tY=
X-Received: by 2002:a05:6820:2d04:b0:603:f820:7be7 with SMTP id
 006d021491bc7-6046f5f4b15mr149361eaf.8.1744319803387; 
 Thu, 10 Apr 2025 14:16:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhQGUxbbnr4N6Vu4qxVRRRGiPEdZmzEdAkaKVLjI4Qk5sm/tyfPCxlBWHuYwQrfw7CtIhx6aTsbdonp7xYLhM=
X-Received: by 2002:a05:6820:2d04:b0:603:f820:7be7 with SMTP id
 006d021491bc7-6046f5f4b15mr149353eaf.8.1744319802966; Thu, 10 Apr 2025
 14:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250408130506.522746-1-frolov@swemel.ru>
In-Reply-To: <20250408130506.522746-1-frolov@swemel.ru>
From: Uri Lublin <uril@redhat.com>
Date: Fri, 11 Apr 2025 00:16:31 +0300
X-Gm-Features: ATxdqUGFELPa-bC9aK02Qu3zf7k3-f_vbbTJ1ahbjl4Ut9QIjaHtP2oAFfoNDBg
Message-ID: <CAAg9qJ2dHP=70A7WX5vYwOrPYpY_5=YpYaqfduJmsjjRSMUiXg@mail.gmail.com>
Subject: Re: [PATCH] usbredirhost: fix null dereference
To: Dmitry Frolov <frolov@swemel.ru>
Cc: spice-devel@lists.freedesktop.org, sdl.qemu@linuxtesting.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VpphEoGYmuHSZWO2bQSgxbX5V4GzzWrnzP6VmJxrUJ8_1744319804
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000003b19490632731a86"
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

--0000000000003b19490632731a86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

Thanks for testing and sending this patch.
One comment below.

On Wed, Apr 9, 2025 at 12:07=E2=80=AFAM Dmitry Frolov <frolov@swemel.ru> wr=
ote:

> In function usbredirhost_open_full(), when host->parser=3D=3DNULL,
> the call sequence:
> "usbredirhost_close() --->
>     usbredirhost_clear_device() --->
>         usbredirhost_handle_disconnect()"
> is called, where host->parser is being derefferenced without a check.
>

Can this really happen ?
In usbredirhost_open_full() if host->parser is NULL then host->dev
is NULL -- being set only later in the function, with a call to
usbredirhost_set_device().

In usbredirhost_clear_device() if host->dev is NULL the function returns
immediately and does not call usbredirhost_handle_disconnect().

Thanks,
    Uri.


> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>
> Signed-off-by: Dmitry Frolov <frolov@swemel.ru>
> ---
>  usbredirhost/usbredirhost.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c
> index 03c56e9..ad4c09b 100644
> --- a/usbredirhost/usbredirhost.c
> +++ b/usbredirhost/usbredirhost.c
> @@ -269,6 +269,7 @@ static int usbredirhost_write(void *priv, uint8_t
> *data, int count)
>     packet completion callbacks */
>  static void usbredirhost_handle_disconnect(struct usbredirhost *host)
>  {
> +    if(!host->parser) return;
>      /* Disconnect uses its own lock to avoid needing nesting capable
> locks */
>      if (host->disconnect_lock) {
>          host->parser->lock_func(host->disconnect_lock);
> --
> 2.34.1
>
>

--0000000000003b19490632731a86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dmitry,</div><div><br></div><div>Thanks for testin=
g and sending this patch.</div><div>One comment below.</div><div><br></div>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Apr 9, 2025 at 12:07=E2=80=AFAM Dmitry Frolov &lt;<a hr=
ef=3D"mailto:frolov@swemel.ru">frolov@swemel.ru</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">In function usbredirhost_ope=
n_full(), when host-&gt;parser=3D=3DNULL,<br>
the call sequence:<br>
&quot;usbredirhost_close() ---&gt;<br>
=C2=A0 =C2=A0 usbredirhost_clear_device() ---&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usbredirhost_handle_disconnect()&quot;<br>
is called, where host-&gt;parser is being derefferenced without a check.<br=
></blockquote><div><br></div><div>Can this really happen ?<br>In usbredirho=
st_open_full() if host-&gt;parser is NULL then host-&gt;dev <br>is NULL -- =
being set only later in the function, with a call to <br>usbredirhost_set_d=
evice().<br><br>In usbredirhost_clear_device() if host-&gt;dev is NULL the =
function returns <br>immediately and does not call usbredirhost_handle_disc=
onnect().<br><br>Thanks,<br>=C2=A0 =C2=A0 Uri.</div><div><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<br>
Found by Linux Verification Center (<a href=3D"http://linuxtesting.org" rel=
=3D"noreferrer" target=3D"_blank">linuxtesting.org</a>) with SVACE.<br>
<br>
Signed-off-by: Dmitry Frolov &lt;<a href=3D"mailto:frolov@swemel.ru" target=
=3D"_blank">frolov@swemel.ru</a>&gt;<br>
---<br>
=C2=A0usbredirhost/usbredirhost.c | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c<br>
index 03c56e9..ad4c09b 100644<br>
--- a/usbredirhost/usbredirhost.c<br>
+++ b/usbredirhost/usbredirhost.c<br>
@@ -269,6 +269,7 @@ static int usbredirhost_write(void *priv, uint8_t *data=
, int count)<br>
=C2=A0 =C2=A0 packet completion callbacks */<br>
=C2=A0static void usbredirhost_handle_disconnect(struct usbredirhost *host)=
<br>
=C2=A0{<br>
+=C2=A0 =C2=A0 if(!host-&gt;parser) return;<br>
=C2=A0 =C2=A0 =C2=A0/* Disconnect uses its own lock to avoid needing nestin=
g capable locks */<br>
=C2=A0 =C2=A0 =C2=A0if (host-&gt;disconnect_lock) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0host-&gt;parser-&gt;lock_func(host-&gt;di=
sconnect_lock);<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div></div>

--0000000000003b19490632731a86--

