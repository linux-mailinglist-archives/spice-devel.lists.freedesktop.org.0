Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB591E60F0
	for <lists+spice-devel@lfdr.de>; Thu, 28 May 2020 14:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CEC6E057;
	Thu, 28 May 2020 12:33:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3CF6E057
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 12:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590669215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kPW6xlyxUivVZpzc+q6Ks5dy/dHmp/1x0RJqo7ATrxk=;
 b=DI6XenUFNLzb03olTT0pKTSQZ/+Y5QAxYgpJgrwR3Sw4LpJZZX8OS5ir8rEALnD4CM57nG
 0sfsS+jlykC5OHApabqu9oehJjgbal/Oipps7qjH3KMrtgPrcLfuKN0aEhi8AybyrmlO1Y
 vkOVybBRBoWMWX6ph9c9WdNr5aSEs4M=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-y8tQrX3hMOCtQOrBrNFM2A-1; Thu, 28 May 2020 08:33:28 -0400
X-MC-Unique: y8tQrX3hMOCtQOrBrNFM2A-1
Received: by mail-qt1-f199.google.com with SMTP id e8so8061966qtq.22
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 05:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kPW6xlyxUivVZpzc+q6Ks5dy/dHmp/1x0RJqo7ATrxk=;
 b=GKQoqf+82+MRMQHqa9eWdrE6FIrGeLQLhQIephNDH9qPk+f5McXkXtIBeNeneYzc1h
 m1TQAJSOI1flXtuCeHlir6GCWdzB5+XvI2qsLo7K5JoQUvCRacnXrhZgL0TSVJjn4zRY
 ZnXHtOCx+OwaovQYExiy4xr8nA/nPs7FDwoecVvhh739kN+V8RKET7CrVCriYMu1FjMO
 PKHE4Mq4u1i4fZXAlO6e9Iosx6A1wP0zmHFT/4K9xWEkokUpX/ft1g41SyaNyqwcO1IY
 DvhVteARDcerudtl4SA102yPd6JHZdvPo0I9hY1jvNSRnlXBHrwmLxAFlqiOI7fY1rbi
 ArWg==
X-Gm-Message-State: AOAM533lpXMOyt5TsBXZXFLmgKgBuQgtYrs5ww5u7TGjwP//+sKY7ohP
 cI7crrzY0E0rnFzx9DDaYRz/uSOefsdzBwo94EmSdY+KVgobYXbqG3EIcs6sSQbopj1Ds/ba+wT
 YS5dBixV9AJKLA22T5bEqy7cnvdNCDCHb1RoQFKxmUmjco3E=
X-Received: by 2002:a0c:a5c5:: with SMTP id z63mr2837767qvz.50.1590669207846; 
 Thu, 28 May 2020 05:33:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6r6FoVvmk5gZ7LnOBYw10XjK/FuxPQZ4PuvzRlAWkkpZ45t77GSyR4LaY/BJoXzQOHvMEU3iaRhklYvysmSc=
X-Received: by 2002:a0c:a5c5:: with SMTP id z63mr2837753qvz.50.1590669207621; 
 Thu, 28 May 2020 05:33:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123106.846919-1-ogutsua@gmail.com>
In-Reply-To: <20200528123106.846919-1-ogutsua@gmail.com>
From: Oliver Gutierrez <ogutierrez@redhat.com>
Date: Thu, 28 May 2020 13:33:16 +0100
Message-ID: <CAJjKVYMQTBmMAWLv9JMRV2pdq96mi7GHd+AJjwv=T0T=hEJn9g@mail.gmail.com>
To: Oliver Gutierrez <ogutsua@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH] Added needed import of function
 arraybuffer_to_str
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0045822231=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0045822231==
Content-Type: multipart/alternative; boundary="0000000000001374c905a6b48917"

--0000000000001374c905a6b48917
Content-Type: text/plain; charset="UTF-8"

This is a patch to fix the SPICE port feature not being working since the
change made to use module imports instead of inline loading of scripts.

Right now works with only this change.

On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez <ogutsua@gmail.com> wrote:

> ---
>  src/port.js | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/src/port.js b/src/port.js
> index 74523ae..b254131 100644
> --- a/src/port.js
> +++ b/src/port.js
> @@ -20,7 +20,7 @@
>  */
>
>  import { Constants } from './enums.js';
> -import { DEBUG } from './utils.js';
> +import { DEBUG, arraybuffer_to_str } from './utils.js';
>  import { SpiceConn } from './spiceconn.js';
>  import { SpiceMsgPortInit } from './spicemsg.js';
>
> --
> 2.25.1
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>
>

-- 
Oliver Gutierrez
Software Engineer - Desktop Management tools
Red Hat

--0000000000001374c905a6b48917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is a patch to fix the SPICE port feature not bei=
ng working since the change made to use module imports instead of inline lo=
ading of scripts.</div><div><br></div><div>Right now works with only this c=
hange.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez &lt;<a hre=
f=3D"mailto:ogutsua@gmail.com">ogutsua@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">---<br>
=C2=A0src/port.js | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/src/port.js b/src/port.js<br>
index 74523ae..b254131 100644<br>
--- a/src/port.js<br>
+++ b/src/port.js<br>
@@ -20,7 +20,7 @@<br>
=C2=A0*/<br>
<br>
=C2=A0import { Constants } from &#39;./enums.js&#39;;<br>
-import { DEBUG } from &#39;./utils.js&#39;;<br>
+import { DEBUG, arraybuffer_to_str } from &#39;./utils.js&#39;;<br>
=C2=A0import { SpiceConn } from &#39;./spiceconn.js&#39;;<br>
=C2=A0import { SpiceMsgPortInit } from &#39;./spicemsg.js&#39;;<br>
<br>
-- <br>
2.25.1<br>
<br>
_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span>Oliver Gutierr=
ez<br>Software Engineer - Desktop Management tools<br>Red Hat</span></div><=
/div></div></div>

--0000000000001374c905a6b48917--


--===============0045822231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0045822231==--

