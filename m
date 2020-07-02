Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 249182126FF
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 16:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967B66E9AB;
	Thu,  2 Jul 2020 14:53:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com
 [IPv6:2607:f8b0:4864:20::a2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C307C6E9AB
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 14:53:23 +0000 (UTC)
Received: by mail-vk1-xa2f.google.com with SMTP id g22so2190851vke.9
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yxZDcg7BxGZoR2qrJGDSquHSIWRYgOS0upudjqhqFO8=;
 b=Ffi7eGWifeActhjgl1cgx6Km2Ml1326x45Gl6Ol+JTXuhNeVc6tGvAEFxqEHo8lERy
 /xlocAxlTigZuNT25RInkfckD6VQk0QyC63KRiU5IfY53IU2sQGZTU7MQeUZ3smd0ns+
 Ki527wzFahOmTn9bJMoybh0Pj+97P/mUeZaY9XNLKgS/d0v8a+B+wy2jSq4QKgvUMKtB
 m3povU6T6yOdTCxFftfWwiPowElkmTV9NPLYiDDcOJ2hJQb12PxYjRsgWWCmXZNsbGJk
 cP8rXcRsNx722r0RP+BNdPBMyDHIxXxOUAro/eKHrvQ4eaTj5BT5GUBMynaPncTtvkU/
 kg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yxZDcg7BxGZoR2qrJGDSquHSIWRYgOS0upudjqhqFO8=;
 b=YmF1yHYczcBoDrFbgO+CO/PL5PmjHGg9sNDFBVzqRO4J0N3ZIh5J8CUMdW9Riam9pf
 RZc5ARHsQqLGcJn34RKxpqPJA61ZKocug/aP7f/OGGJQ+om5JuNrnEiSRLe+goqBN+rW
 UTKD1KmMfrsupVl14NM9myjKXMK1VLydK9sj/Oy58QIJe2eeoidpupnptUa7R19j9jl4
 Fq5X+qCAfne1KTVoVYZWda20rlD2zPxbeR5bbaez1v8aei4VB8HpWd4vpDGus/pNibRA
 F9/OoxrFwVoTIpgQKy4jXPujCFDBPJyStRSv+uVq3/HM+cZDjTNuQ5FXLr8crsqhI6+o
 dC9w==
X-Gm-Message-State: AOAM533f9cLy+Uk4UVSZMbMlL3vcgyxi6NdGBiYCpMzFEQBAMWPy3UG+
 2INkPmkEOJ1+QQL0y+7kKLr8DcXaBQVa2PLICvA=
X-Google-Smtp-Source: ABdhPJwjsM/ALeW23YNxYO3NCuITF2b+jqf2bR+jbt6MylgxnITJ8II2KXNXq6mGiFCWVkwozkS1t3cNUq3jkMAOT3I=
X-Received: by 2002:a1f:ae53:: with SMTP id x80mr21899075vke.41.1593701602867; 
 Thu, 02 Jul 2020 07:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123106.846919-1-ogutsua@gmail.com>
 <CAJjKVYMQTBmMAWLv9JMRV2pdq96mi7GHd+AJjwv=T0T=hEJn9g@mail.gmail.com>
In-Reply-To: <CAJjKVYMQTBmMAWLv9JMRV2pdq96mi7GHd+AJjwv=T0T=hEJn9g@mail.gmail.com>
From: =?UTF-8?Q?Oliver_Guti=C3=A9rrez?= <ogutsua@gmail.com>
Date: Thu, 2 Jul 2020 15:53:11 +0100
Message-ID: <CA+J7JHtzSwg7tj2OR5uaDtzFJivnc=v+NH=2nN+D6=w_3im6gg@mail.gmail.com>
To: Oliver Gutierrez <ogutierrez@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============1816660642=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1816660642==
Content-Type: multipart/alternative; boundary="000000000000eac10705a976912e"

--000000000000eac10705a976912e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there.

Is there any option to get this fix into spice-html5 code?

Thanks in advance.



El jue., 28 may. 2020 a las 13:33, Oliver Gutierrez (<ogutierrez@redhat.com=
>)
escribi=C3=B3:

> This is a patch to fix the SPICE port feature not being working since the
> change made to use module imports instead of inline loading of scripts.
>
> Right now works with only this change.
>
> On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez <ogutsua@gmail.com>
> wrote:
>
>> ---
>>  src/port.js | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/src/port.js b/src/port.js
>> index 74523ae..b254131 100644
>> --- a/src/port.js
>> +++ b/src/port.js
>> @@ -20,7 +20,7 @@
>>  */
>>
>>  import { Constants } from './enums.js';
>> -import { DEBUG } from './utils.js';
>> +import { DEBUG, arraybuffer_to_str } from './utils.js';
>>  import { SpiceConn } from './spiceconn.js';
>>  import { SpiceMsgPortInit } from './spicemsg.js';
>>
>> --
>> 2.25.1
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>>
>>
>
> --
> Oliver Gutierrez
> Software Engineer - Desktop Management tools
> Red Hat
>

--000000000000eac10705a976912e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi there.</div><div><br></div><div>Is there any optio=
n to get this fix into spice-html5 code?</div><div><br></div><div>Thanks in=
 advance.<br></div><div><br></div><div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 28 may. 2020 a la=
s 13:33, Oliver Gutierrez (&lt;<a href=3D"mailto:ogutierrez@redhat.com">ogu=
tierrez@redhat.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>This is a patch to fix the=
 SPICE port feature not being working since the change made to use module i=
mports instead of inline loading of scripts.</div><div><br></div><div>Right=
 now works with only this change.<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 28, 2020 at 1:31 PM =
Oliver Gutierrez &lt;<a href=3D"mailto:ogutsua@gmail.com" target=3D"_blank"=
>ogutsua@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">---<br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span>Oliver Gutierrez<br>Software Engineer =
- Desktop Management tools<br>Red Hat</span></div></div></div></div>
</blockquote></div>

--000000000000eac10705a976912e--

--===============1816660642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1816660642==--
