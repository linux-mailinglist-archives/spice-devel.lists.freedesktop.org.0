Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF1894E0A1
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2024 11:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A9B10E17C;
	Sun, 11 Aug 2024 09:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RGTriCre";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C7F89B78
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2024 09:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1723368026;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DBYpqxCefSyOH9NGYejffYbnxRKxrbm6bukoy9+ML48=;
 b=RGTriCrejvqlLe+U9pufxRFb5WKrmH5JrPYmguYYdL07Yp3ExTPGAFJC2G/YvDnQFAweEf
 2MeTZ/zxYLvxepj3vbp7jJWHxJx6lOVk2p+jGKxMybDv+s7cclN0jZc+cD/TmKAVEIRJjj
 4WufZiyI7kKv+ZrxhWf2ymJedOmlObg=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-231-qlJ7WZovNluNRqKJIxdZbg-1; Sun, 11 Aug 2024 05:20:25 -0400
X-MC-Unique: qlJ7WZovNluNRqKJIxdZbg-1
Received: by mail-oo1-f72.google.com with SMTP id
 006d021491bc7-5d62453aeddso3800380eaf.2
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2024 02:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723368024; x=1723972824;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DBYpqxCefSyOH9NGYejffYbnxRKxrbm6bukoy9+ML48=;
 b=mIaZeBia8WBrRhDilXs3IWqdA2XFGkn6bJhlg9i8Y5URELsPy63OPKcU5Fvh7hVnBR
 rigcH9h5zdTeyV/2cyuBfo3BaSw7QEpu8cUPO5bow3BwOFpkPYbbk/iNpkniNMj9KSNf
 2d1ve0bHSVENFBqZlWtYKWFFWyEkVHqkSBA2LLjTjBhlPiyXO3rxze09hkFdgu4inCvu
 fOVs6XNRJeTY1tuNZPUrVTIdyryni6HsQpeZdDg3X51Z3v3G177ZZZWro7NpbvJTcb5Z
 g9idhigUI+MRStnWRXgnJGt0CLwSXzgxxRTkdlkygBFG2lPxPz6zkpprrB3TTBQjoFDg
 dBtg==
X-Gm-Message-State: AOJu0Yyh1cz2j7pkfW4cALo6oROLb2odn0XgrzA1qZCpEqxg7B1npdu/
 VhxTNhcAX1vSqmOy3tXh9TnGVZltvy0iRU+YFyhbnQMldY8Rw4B5pH4ABue3lGtwPJcAr55RQT8
 yzdKMlGXQZfMDIPzkIDHFURfaX2ZupwKRuvEsDnchjyMXP2ODX1VYgR2KioGNfkB6XqMntwb9mh
 xhJ8fLux5lzS/Cbms6sW1XQw2q7L6ajeu3rAne4RnWVgn15avq59IRtA==
X-Received: by 2002:a05:6820:622:b0:5c2:2a3d:a671 with SMTP id
 006d021491bc7-5d867d15b6bmr6338614eaf.8.1723368024116; 
 Sun, 11 Aug 2024 02:20:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5Vjcvv+xdS8IlB5YNM/3xUpb4LmhCyE3PAo08SQikqg6pb1SGkSUl5PwgdgbAc99hcCy4f5Z0vC/vKMmLcvg=
X-Received: by 2002:a05:6820:622:b0:5c2:2a3d:a671 with SMTP id
 006d021491bc7-5d867d15b6bmr6338608eaf.8.1723368023789; Sun, 11 Aug 2024
 02:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <88627e60-b00d-4002-bc9a-7f9be7e96640@mnl.de>
In-Reply-To: <88627e60-b00d-4002-bc9a-7f9be7e96640@mnl.de>
From: Uri Lublin <ulublin@redhat.com>
Date: Sun, 11 Aug 2024 12:20:12 +0300
Message-ID: <CAAg9qJ1UHMEgchE1GhyqVgVr8mp_BAJxn-LTiFfLYQHsodXK0w@mail.gmail.com>
Subject: Re: virtio-vga two monitors and spice
To: Michael Lipp <mnl@mnl.de>
Cc: spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000e02bdf061f64e2f2"
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

--000000000000e02bdf061f64e2f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Fri, Aug 2, 2024 at 3:53=E2=80=AFPM Michael Lipp <mnl@mnl.de> wrote:

> Hi,
>
> when I start qemu with "-device virtio-vga,max_outputs=3D2" and connect
> using spice, I get two windows representing two monitors as expected.
>
> However, only one of these works. The other shows "Display output is not
> active.". xrandr says "Virtual-2 disconnected" (consistent but not
> helpful).
>
> Is this supposed to work? If so, what am I missing? Or do I have to use
> QXL in order to use two monitors?
>

It should work.
Works for me with Fedora 40 host and Fedora 38 guest.
Make sure the guest has enough memory.
Better have spice-vdagent installed.
Make sure both monitors are enabled either from inside the guest
(settings->displays)
or from the remote-viewer's monitor-icon at the top of the window.
Try to disable and enable the second monitor.

Uri.

--000000000000e02bdf061f64e2f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Michael,<br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 2, 2024 at 3:53=E2=80=AFPM=
 Michael Lipp &lt;<a href=3D"mailto:mnl@mnl.de">mnl@mnl.de</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
when I start qemu with &quot;-device virtio-vga,max_outputs=3D2&quot; and c=
onnect <br>
using spice, I get two windows representing two monitors as expected.<br>
<br>
However, only one of these works. The other shows &quot;Display output is n=
ot <br>
active.&quot;. xrandr says &quot;Virtual-2 disconnected&quot; (consistent b=
ut not helpful).<br>
<br>
Is this supposed to work? If so, what am I missing? Or do I have to use <br=
>
QXL in order to use two monitors?<br></blockquote><div><br></div><div>It sh=
ould work.</div><div>Works for me with Fedora 40 host and Fedora 38 guest.<=
/div><div>Make sure the guest has enough memory.<br></div><div><div>Better =
have spice-vdagent installed.</div></div><div>Make sure both monitors are e=
nabled either from inside the guest (settings-&gt;displays)<div>or from the=
 remote-viewer&#39;s monitor-icon at the top of the window.</div></div></di=
v><div class=3D"gmail_quote">Try to disable and enable the second monitor.<=
/div><div class=3D"gmail_quote"><br><div>Uri.</div><div><br></div></div></d=
iv>

--000000000000e02bdf061f64e2f2--

