Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2D12128E0
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 18:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247966E239;
	Thu,  2 Jul 2020 16:02:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com
 [IPv6:2607:f8b0:4864:20::e2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E24A6E239
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 16:02:56 +0000 (UTC)
Received: by mail-vs1-xe2e.google.com with SMTP id x13so10817349vsx.13
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 09:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4tba/dvQkj1/85AKexHeju/usdkOs1iBK+rNoPDqi5o=;
 b=r6IqpLi+au2JHdUuZ1G94Asp+aDkMtOciUIUKaiYSz7mwfwH3KRHfjAgna1Yp4pQLr
 JD2V7r818lHUH57r5AmaZ8mqIyO91nE+CjVGRFWJZf1WrSdV9QCYu+aujunyOS6hKK74
 ulkJBKVaoupRny2AkO1qRqSKeoVCDpMiiKvpYsupvpzf2If8xrT+3vJo4jfhQ/4kiZIk
 yPuBXQzDLmNsJxy2cHoHp8Z/jxjUwpLbgwcJs1I9CgGu8J5Q+U6y64TWDz+CJ6bkHIq5
 tkJAcXhMmHMrgbbeUwSF1uwHt7sVkYdiVE0yBe67OJLV5KIfbTrdPq2DY82EW9WCKf19
 2Bcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4tba/dvQkj1/85AKexHeju/usdkOs1iBK+rNoPDqi5o=;
 b=AjhDcbUMfxNkXbgrU1AH2zfWuptn18NNPUjdFb+ZJSksWJa3A6a2mfC5X64hBigDy5
 mgFT16SgUtpH7B48dUPCGVAHJumn3XpkSbiwlA1s9nrww0tl5PxfpRdU8Tsbt9iWqLqA
 AgQrlAfMrW34f6HDbq3ujDSmF7BltuOvEBRNX1atzszvXSSRDxw1cNr8ge9w/q7z/l9f
 /9WBXG3CT1e8JqGTOAKwGbHG62yue1oHfPNKfOFgK4tnumy2wnwrsvgrecSJVrRv8Azk
 CuAXa0aqZCANF+FRqHuwWOgqlxFOtsVIWyRfQVYWFhmVSdzfdYr6diyZ8qrKdIcJHW5g
 K3QA==
X-Gm-Message-State: AOAM533GqwM0pitYspZLNLcvj8+QYzWkYwi+HPKhGDHprEmFdgO+Hi9H
 dCsr/VPrvh3beK7R6Yn5oKL0aCLlCZ+b0Yr5ft3L1uh7
X-Google-Smtp-Source: ABdhPJyhsASwUwtsHU5lyhNAWTV2GE+PDp4s0VWbkJhiDsGZu0dpISEO+zSDi2MCmBG3WyfK9ZpdhfL1g7z0Ebt/1+g=
X-Received: by 2002:a67:d009:: with SMTP id r9mr11994965vsi.96.1593705775436; 
 Thu, 02 Jul 2020 09:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123106.846919-1-ogutsua@gmail.com>
 <CAJjKVYMQTBmMAWLv9JMRV2pdq96mi7GHd+AJjwv=T0T=hEJn9g@mail.gmail.com>
 <CA+J7JHtzSwg7tj2OR5uaDtzFJivnc=v+NH=2nN+D6=w_3im6gg@mail.gmail.com>
 <1020988664.32942646.1593705181545.JavaMail.zimbra@redhat.com>
In-Reply-To: <1020988664.32942646.1593705181545.JavaMail.zimbra@redhat.com>
From: =?UTF-8?Q?Oliver_Guti=C3=A9rrez?= <ogutsua@gmail.com>
Date: Thu, 2 Jul 2020 17:02:42 +0100
Message-ID: <CA+J7JHtHh+pm3jhowcSjPcvOpsyfqTr_a__Hv4qMFmQvxSB2JQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============1184333845=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1184333845==
Content-Type: multipart/alternative; boundary="0000000000009f179f05a9778ad7"

--0000000000009f179f05a9778ad7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great, thanks!

El jue., 2 jul. 2020 16:53, Frediano Ziglio <fziglio@redhat.com> escribi=C3=
=B3:

> Yes, tested and merged, sorry it got lost
>
> Thanks
>   Frediano
>
>
> Hi there.
>
> Is there any option to get this fix into spice-html5 code?
>
> Thanks in advance.
>
>
>
> El jue., 28 may. 2020 a las 13:33, Oliver Gutierrez (<
> ogutierrez@redhat.com>) escribi=C3=B3:
>
>> This is a patch to fix the SPICE port feature not being working since th=
e
>> change made to use module imports instead of inline loading of scripts.
>>
>> Right now works with only this change.
>>
>> On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez <ogutsua@gmail.com>
>> wrote:
>>
>>> ---
>>>  src/port.js | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/src/port.js b/src/port.js
>>> index 74523ae..b254131 100644
>>> --- a/src/port.js
>>> +++ b/src/port.js
>>> @@ -20,7 +20,7 @@
>>>  */
>>>
>>>  import { Constants } from './enums.js';
>>> -import { DEBUG } from './utils.js';
>>> +import { DEBUG, arraybuffer_to_str } from './utils.js';
>>>  import { SpiceConn } from './spiceconn.js';
>>>  import { SpiceMsgPortInit } from './spicemsg.js';
>>>
>>> --
>>> 2.25.1
>>>
>>> _______________________________________________
>>> Spice-devel mailing list
>>> Spice-devel@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>>>
>>>
>>
>> --
>> Oliver Gutierrez
>> Software Engineer - Desktop Management tools
>> Red Hat
>>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>
>
>

--0000000000009f179f05a9778ad7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Great, thanks!=C2=A0</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">El jue., 2 jul. 2020 16:53, Frediano =
Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt;=
 escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div style=3D"=
font-family:courier new,courier,monaco,monospace,sans-serif;font-size:12pt;=
color:#000000"><div>Yes, tested and merged, sorry it got lost<br></div><div=
><br></div><div>Thanks<br></div><div>=C2=A0 Frediano<br></div><div><br></di=
v><blockquote style=3D"border-left:2px solid #1010ff;margin-left:5px;paddin=
g-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:=
none;font-family:Helvetica,Arial,sans-serif;font-size:12pt"><div><br></div>=
<div dir=3D"ltr"><div>Hi there.</div><div><br></div><div>Is there any optio=
n to get this fix into spice-html5 code?</div><div><br></div><div>Thanks in=
 advance.<br></div><div><br></div><div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 28 may. 2020 a la=
s 13:33, Oliver Gutierrez (&lt;<a href=3D"mailto:ogutierrez@redhat.com" tar=
get=3D"_blank" rel=3D"noreferrer">ogutierrez@redhat.com</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>This is a patch to fix the SPICE port feature not being working =
since the change made to use module imports instead of inline loading of sc=
ripts.</div><div><br></div><div>Right now works with only this change.<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, May 28, 2020 at 1:31 PM Oliver Gutierrez &lt;<a href=3D"mailto=
:ogutsua@gmail.com" target=3D"_blank" rel=3D"noreferrer">ogutsua@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">-=
--<br>
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
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank" rel=
=3D"noreferrer">Spice-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.freedesktop.org/=
mailman/listinfo/spice-devel</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span>Oliver Gutierrez<br>Software Engineer =
- Desktop Management tools<br>Red Hat</span></div></div></div></div>
</blockquote></div>
<br>_______________________________________________<br>Spice-devel mailing =
list<br><a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_bla=
nk" rel=3D"noreferrer">Spice-devel@lists.freedesktop.org</a><br><a href=3D"=
https://lists.freedesktop.org/mailman/listinfo/spice-devel" target=3D"_blan=
k" rel=3D"noreferrer">https://lists.freedesktop.org/mailman/listinfo/spice-=
devel</a><br></blockquote><div><br></div></div></div></blockquote></div>

--0000000000009f179f05a9778ad7--

--===============1184333845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1184333845==--
