Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6891E5D30
	for <lists+spice-devel@lfdr.de>; Thu, 28 May 2020 12:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3646E17F;
	Thu, 28 May 2020 10:31:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F076E17F
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 10:31:30 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id l11so27362461wru.0
 for <spice-devel@lists.freedesktop.org>; Thu, 28 May 2020 03:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=TCC3/DRQ33yhIJlF2OTjirfC+U9q05oL5PMbRLMZV5E=;
 b=gUc+0vssAn1FRCXy9WHrAnj6yp6nksFkWW742ZK7i3gwFSaby6vTlVF6X2Uddm7mzN
 Yueckb3Se9kRGRMUA1tGeeYeV6DAXJSFIdEC5erojRxsWdIAoq9iq65Hl2pI/3Z6/k5o
 4PukiK7YRwgsDPc8k2UgRJAbljD5YlYUluOuvdyYVBqphFVgUNHu+oLVh1ntDdRMcOYb
 uaLjW2MYfxwWs3fNAquFEE2nwE0hl4ergvzwkBKoskEW4zsw3dxYHshT1cgnqmloYW0d
 L/lPktMLn88DoKihj6Pd4uMkvdA6ebcDODEAXGL+Dmm7FRAAzlCchoUuI9idBiZf+OFp
 0YIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=TCC3/DRQ33yhIJlF2OTjirfC+U9q05oL5PMbRLMZV5E=;
 b=exFFKAATnJsG6sCg8JqIyxj09H2fcRXwBLMgHtNo6hplAw3kd9dQo6+1062RfAhAUk
 lsPyW1S/1nD09WirMEPK7pLnNajr133bS+p6QEas95Bteu65+Nj/D+Wfh/6nQjeutTnX
 U5L/l7qw3zqATtfH8oW1OYOdJq2JaklH6oXAuXMDLhLd6h1IPtbS7Irzt83zSwWjBJfc
 N6LODpi1prbA1eYtIotmws4hDRoG9tIVx87+FABRDLt5bvrmo1LAeiDqgH3ZkdGHLKe9
 N9wsmLEyTs/pfWL3ywOplT6WioRWJn09OlPdezxJg/bBg+0k+wwLuOm/KKiYPCFR+gby
 WG2A==
X-Gm-Message-State: AOAM533/JdlHZTmsP4RTs+jSc4H7z2tYfD8uJ+fMxPHcpY4dx0g1n/M0
 48Eq0+7Ph1ZCnr/ZYMYih86vHWpPGfH10tQ2zkG72N9u
X-Google-Smtp-Source: ABdhPJyUzZtiiIjzNCVGyW2lpaOyK4E/jc3vNAbQyQkWOQZQbGw4JYk5UwWoB6ue5HTZSX1sha31PLwtPfoLNh+LoqE=
X-Received: by 2002:adf:9544:: with SMTP id 62mr2792436wrs.32.1590661887741;
 Thu, 28 May 2020 03:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
 <CAJ+F1CKCb=Kj7MqE0Jz3uNmBVvguB5_jbm7DWsNeMdKEsv5FdQ@mail.gmail.com>
In-Reply-To: <CAJ+F1CKCb=Kj7MqE0Jz3uNmBVvguB5_jbm7DWsNeMdKEsv5FdQ@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 28 May 2020 12:31:15 +0200
Message-ID: <CAJ+F1CJz_AE+aC3-BdJjtGS7qVoM+GQP5Tv=dMT_uinjR9=_zw@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>,
 Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] About decisions and reviews
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
Content-Type: multipart/mixed; boundary="===============0507106465=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0507106465==
Content-Type: multipart/alternative; boundary="000000000000c6d40b05a6b2d439"

--000000000000c6d40b05a6b2d439
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Thu, May 14, 2020 at 2:32 PM Marc-Andr=C3=A9 Lureau <
marcandre.lureau@gmail.com> wrote:

> Hi
>
> On Mon, May 11, 2020 at 12:16 PM Marc-Andr=C3=A9 Lureau <
> marcandre.lureau@redhat.com> wrote:
>
>> Hi,
>>
>> About "Move code to C++":
>> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62
>>
>> I would like to know how the decision happened. As long as I have been
>> involved in the Spice project, we had open discussions and did
>> mandatory review for anything non-trivial.
>>
>> This change is substantial, and impacts the work and contribution of
>> others. Where did the discussion happen? Who reviewed the code
>> changes?
>>
>>
> Since no real discussion nor public review took place, I propose to rever=
t
> the change and add a HACKING file to make the rules clear. See:
>
> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/91
>
>
Based on the discussion there, and the fact that a majority of developper
are willing to take the change, I closed the MR.

Fwiw, beside the fact that the change wasn't done with review nor
discussion (which on its own is detrimental), I think using C++ is wrong:
- C++ is much more complex than C, and fewer developper know it. A good C++
developper is an even better C developper.
- in our common ecosystem, QEMU, Linux, the GNOME desktop, are 90% C
projects, and perhaps? 1% C++? (I don't know a single C++ system/core
project tbh - only apps like KDE/LibreOffice/Firefox)
- C++ projects are switching away from it (ex Firefox), I don't know of a
core/system project talking about switching to C++ these days.
- switching to C++ is going to be costly, as it is endless, and it will
leave a bitter taste of previous/existing C. We could have used that time
for other things... I would be pleasantly surprised if such refactoring
would lead to regressions.
- C has better interoperability story than C++, especially because the code
was GObjectified. We could have added/exported more friendly API/bindings
for GNOME easily.

Overall, it's a waste of effort to me. What is the overall direction of the
project? Except a few language improvements for a lower number of
developpers, what does C++ bring us that we couldn't do with C for our
users?

Nevertheless, I will try to invest some time reviewing the changes.

I hope we can agree on better project rules and directions for the future.

--000000000000c6d40b05a6b2d439
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 2:32 PM Mar=
c-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com">marca=
ndre.lureau@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11=
, 2020 at 12:16 PM Marc-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.l=
ureau@redhat.com" target=3D"_blank">marcandre.lureau@redhat.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
About &quot;Move code to C++&quot;:<br>
<a href=3D"https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62" =
rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spice/s=
pice/-/merge_requests/62</a><br>
<br>
I would like to know how the decision happened. As long as I have been<br>
involved in the Spice project, we had open discussions and did<br>
mandatory review for anything non-trivial.<br>
<br>
This change is substantial, and impacts the work and contribution of<br>
others. Where did the discussion happen? Who reviewed the code<br>
changes?<br>
<br></blockquote><div><br></div><div>Since no real discussion nor public re=
view took place, I propose to revert the change and add a HACKING file to m=
ake the rules clear. See:<br></div><div><br></div><div><a href=3D"https://g=
itlab.freedesktop.org/spice/spice/-/merge_requests/91" target=3D"_blank">ht=
tps://gitlab.freedesktop.org/spice/spice/-/merge_requests/91</a></div><div>=
<br></div></div></div></blockquote><div><br></div><div>Based on the discuss=
ion there, and the fact that a majority of developper are willing to take t=
he change, I closed the MR.<br></div><div><br>Fwiw, beside the fact that th=
e change wasn&#39;t done with review nor discussion (which on its own is de=
trimental), I think using C++ is wrong:<br>- C++ is much more complex than =
C, and fewer developper know it. A good C++ developper is an even better C =
developper.<br>- in our common ecosystem, QEMU, Linux, the GNOME desktop, a=
re 90% C projects, and perhaps? 1% C++? (I don&#39;t know a single C++ syst=
em/core project tbh - only apps like KDE/LibreOffice/Firefox)<br>- C++ proj=
ects are switching away from it (ex Firefox), I don&#39;t know of a core/sy=
stem project talking about switching to C++ these days.<br>- switching to C=
++ is going to be costly, as it is endless, and it will leave a bitter tast=
e of previous/existing C. We could have used that time for other things... =
I would be pleasantly surprised if such refactoring would lead to regressio=
ns.<br>- C has better interoperability story than C++, especially because t=
he code was GObjectified. We could have added/exported more friendly API/bi=
ndings for GNOME easily.<br><br>Overall, it&#39;s a waste of effort to me. =
What is the overall direction of the project? Except a few language improve=
ments for a lower number of developpers, what does C++ bring us that we cou=
ldn&#39;t do with C for our users?</div><div>=C2=A0</div><div>Nevertheless,=
 I will try to invest some time reviewing the changes.</div><div><br></div>=
<div>I hope we can agree on better project rules and directions for the fut=
ure.<br></div></div></div>

--000000000000c6d40b05a6b2d439--

--===============0507106465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0507106465==--
