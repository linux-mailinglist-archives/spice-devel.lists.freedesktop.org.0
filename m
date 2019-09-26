Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8669FBEF35
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 12:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DDD6E0A6;
	Thu, 26 Sep 2019 10:05:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031D16E0A6
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 10:05:32 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D0A481F11
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 10:05:31 +0000 (UTC)
Received: by mail-qk1-f197.google.com with SMTP id o133so1848924qke.4
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 03:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=DBWu4loJZejhIx0VrF6ooca5uoShuGLuoRqeQOca05o=;
 b=A0exaCy0PDpJ2IUIWNVTIjAKOfQQh02qKd8rJKzSjAMbEBidSTwTxE6OKtl1hX5UNm
 SHLKPrSehoHVo2FYXs5UNNCDwdGTZ4rbrdOXzUkqE7++johuVWY+dgxpY83YVnbBun0l
 Hby9gsieEjMMRoSjOG4f2MDwLV7oftudo5Mf4D1AzNm5OWZhwJvdcQpo0gVybio9/a+A
 d7KWTniZu2sYEKaeFBQOzU5PWs5Cz4RvOexeiakogth3DdOSZ+cn2rsVIseBK/NKFxsE
 5iUQRqKjmi9bsiARuyuE4yzjYNvqia7njYEHOJrZwHAx50XvesYRJDy9yDtT+zoW9p5h
 Jb0w==
X-Gm-Message-State: APjAAAX+9Uxabp37nSrmAGDCmS8UhjR/Sv8yqmSgKO0Ihcdzl3v15wrT
 i0XNrVzu6tPEqObXLKt9K52ft6j8NXAdvadHg+sd0XIMkKvgweAmVewTZ5K1xmdN4sKT/MVqEeD
 6X1ETgzVd8J70e/4vKEh6GZMMiiQDrc5lknUApLQYlIvQ1qA=
X-Received: by 2002:a37:a790:: with SMTP id q138mr2282686qke.383.1569492330250; 
 Thu, 26 Sep 2019 03:05:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvchjE5KEgtIVAG+1m5K7tpImNOWx3hwXB0H+4dnBds2PJzd37pGdb6fe+cZdBDG4Y7Az+GPTOdLoZEvLnQV8=
X-Received: by 2002:a37:a790:: with SMTP id q138mr2282661qke.383.1569492329898; 
 Thu, 26 Sep 2019 03:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAFhMjuvfHRjtaPTYn-b4_NGobnaZe6QZ4o9cLT42y1oCV0-m4w@mail.gmail.com>
 <221342a8af1d2bf8643c152dba681566@triadic.us>
 <CAFhMjusqNQPH2UEgJzDS7Oj5bamjhZLDjWXne0PH3NHTaYv4iA@mail.gmail.com>
 <53d133e940e8269cb6d876d082193f6f@triadic.us>
In-Reply-To: <53d133e940e8269cb6d876d082193f6f@triadic.us>
From: Sandro Bonazzola <sbonazzo@redhat.com>
Date: Thu, 26 Sep 2019 12:04:53 +0200
Message-ID: <CAPQRNTn+qh6dSXUAfyVavY3r=2W2ASGwqeLdRDoLebbK--KN8g@mail.gmail.com>
To: spice-devel@lists.freedesktop.org, Martin Tessun <mtessun@redhat.com>
Subject: [Spice-devel] Fwd: [ovirt-users] Re: VDI
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0941795422=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0941795422==
Content-Type: multipart/alternative; boundary="000000000000cd47a8059371e860"

--000000000000cd47a8059371e860
Content-Type: text/plain; charset="UTF-8"

FYI, this comes from oVirt users.
Can you please look into the h264 support part? looks like using it
improves spice experience.

---------- Forwarded message ---------
Da: Alex McWhirter <Alex@triadic.us>
Date: lun 23 set 2019 alle ore 21:53
Subject: [ovirt-users] Re: VDI
To: Fabio Marzocca <marzoccafabio@gmail.com>
Cc: <users@ovirt.org>


To achieve that all you need to do is create a template of the desktop base
vm, make sure the vm type is set to desktop. Afterwards just create new vms
from that template. As long as the VM type is set to desktop each new VM
will use a qcow overlay on top of the base image.

Taking this a step further you can then create VM pools from said template,
allowing users to dynamically be assigned a new VM on login. Granted pools
are usually stateless, so you need to have network file storage. We use
pools for windows 10 VDI instances, where we use sysprep to autojoin the
new pool vm to the domain where redirected folders are already setup.

For VDI only use spice protocol. By default we found spice to be semi
lackluster, so we do apply custom settings and we have recompiled spice on
both servers and clients with h264 support. This is not 100% necessary, but
makes things like youtube much more usable. We have also backported some
audio patches to KVM. CentOS 8 should resolve a lot of these customizations
that we've had to do.


As far as updating, pretty much. We create a VM from the template, update
it, then push it back as a new version of the template. The pools are set
to always use the latest template version. Users have to log out, then back
in to the VDI system in order to get the new image as logging out will
destroy the users current instance and create a new one on log in.


On 2019-09-23 15:16, Fabio Marzocca wrote:

Hi Alex, thanks for answering.

I am approaching and studying oVirt in order to propose the solution to a
customer as a replacement for a commercial solution they have now.
They only need Desktop virtualization.
Sorry for the silly question, but I can't find a way to deploy a VM
(template) to users as a "linked-clone", meaning that the users' image
still refers to the original image but modification are written (and
afterwards read) from a new location. This technique is called
Copy-on-write.
Can this be achieved with oVirt?


Then, what is the Best Practice to update WIndows OS for the all the users?
Currently they simply "check-out"  the Gold Image, update it and check-in,
while all users are running...

Fabio

On Mon, Sep 23, 2019 at 8:04 PM Alex McWhirter <Alex@triadic.us> wrote:

> yes, we do. All spice, with some customizations done at source level for
> spice / kvm packages.
>
>
> On 2019-09-23 13:44, Fabio Marzocca wrote:
>
> Is there anyone who uses oVirt as a full VDI environment? I would have a
> bunch of questions...
>
>
>
> _______________________________________________
> Users mailing list -- users@ovirt.org
> To unsubscribe send an email to users-leave@ovirt.org
> Privacy Statement: https://www.ovirt.org/site/privacy-policy/
> oVirt Code of Conduct:
> https://www.ovirt.org/community/about/community-guidelines/
> List Archives:
> https://lists.ovirt.org/archives/list/users@ovirt.org/message/D44YB5VOKNBNCJSOMLKRAZBURFJLAOLM/
>
>
>
_______________________________________________
Users mailing list -- users@ovirt.org
To unsubscribe send an email to users-leave@ovirt.org
Privacy Statement: https://www.ovirt.org/site/privacy-policy/
oVirt Code of Conduct:
https://www.ovirt.org/community/about/community-guidelines/
List Archives:
https://lists.ovirt.org/archives/list/users@ovirt.org/message/DWY46KJGSYJGRXMRY7WWCINAW2Y5ETDI/


-- 

Sandro Bonazzola

MANAGER, SOFTWARE ENGINEERING, EMEA R&D RHV

Red Hat EMEA <https://www.redhat.com/>

sbonazzo@redhat.com
<https://www.redhat.com/>*Red Hat respects your work life balance.
Therefore there is no need to answer this email out of your office hours.
<https://mojo.redhat.com/docs/DOC-1199578>*

--000000000000cd47a8059371e860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FYI, this comes from oVirt users.<div>Can you please look =
into the=C2=A0<span style=3D"font-family:Verdana,Geneva,sans-serif;font-siz=
e:13.3333px">h264 support part? looks like using it improves spice experien=
ce.</span><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">---------- Forwarded message ---------<br>Da: <strong class=3D"gmai=
l_sendername" dir=3D"auto">Alex McWhirter</strong> <span dir=3D"auto">&lt;<=
a href=3D"mailto:Alex@triadic.us">Alex@triadic.us</a>&gt;</span><br>Date: l=
un 23 set 2019 alle ore 21:53<br>Subject: [ovirt-users] Re: VDI<br>To: Fabi=
o Marzocca &lt;<a href=3D"mailto:marzoccafabio@gmail.com">marzoccafabio@gma=
il.com</a>&gt;<br>Cc:  &lt;<a href=3D"mailto:users@ovirt.org">users@ovirt.o=
rg</a>&gt;<br></div><br><br><div style=3D"font-size:10pt;font-family:Verdan=
a,Geneva,sans-serif">
<p>To achieve that all you need to do is create a template of the desktop b=
ase vm, make sure the vm type is set to desktop. Afterwards just create new=
 vms from that template. As long as the VM type is set to desktop each new =
VM will use a qcow overlay on top of the base image.</p>
<p>Taking this a step further you can then create VM pools from said templa=
te, allowing users to dynamically be assigned a new VM on login. Granted po=
ols are usually stateless, so you need to have network file storage. We use=
 pools for windows 10 VDI instances, where we use sysprep to autojoin the n=
ew pool vm to the domain where redirected folders are already setup.</p>
<p>For VDI only use spice protocol. By default we found spice to be semi la=
ckluster, so we do apply custom settings and we have recompiled spice on bo=
th servers and clients with h264 support. This is not 100% necessary, but m=
akes things like youtube much more usable. We have also backported some aud=
io patches to KVM. CentOS 8 should resolve a lot of these customizations th=
at we&#39;ve had to do.</p>
<p><br></p>
<p>As far as updating, pretty much. We create a VM from the template, updat=
e it, then push it back as a new version of the template. The pools are set=
 to always use the latest template version. Users have to log out, then bac=
k in to the VDI system in order to get the new image as logging out will de=
stroy the users current instance and create a new one on log in.</p>
<p><br></p>
<p id=3D"m_-2778335445898781139reply-intro">On 2019-09-23 15:16, Fabio Marz=
occa wrote:</p>
<blockquote type=3D"cite" style=3D"padding:0 0.4em;border-left:#1010ff 2px =
solid;margin:0">
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Alex, thanks for answering.
<div>=C2=A0</div>
<div>
<div>I am approaching and studying oVirt in order to propose the solution t=
o a customer as a replacement for a commercial solution they have now.</div=
>
<div>They only need Desktop virtualization.</div>
<div>Sorry for the silly question, but I can&#39;t find a way to deploy a V=
M (template) to users as a &quot;linked-clone&quot;, meaning that the users=
&#39; image still refers to the original image but modification are written=
 (and afterwards read) from a new location. This technique is called Copy-o=
n-write.</div>
<div>Can this be achieved with oVirt?</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Then, what is the Best Practice to update WIndows OS for the all the u=
sers? Currently they simply &quot;check-out&quot; =C2=A0the Gold Image, upd=
ate it and check-in, while all users are running...</div>
</div>
<div>=C2=A0</div>
<div>Fabio</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">On Mon, Sep 23, 2019 at 8:04 PM Alex =
McWhirter &lt;<a href=3D"mailto:Alex@triadic.us" rel=3D"noreferrer" target=
=3D"_blank">Alex@triadic.us</a>&gt; wrote:</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;border-left-color:#cccccc;padding-le=
ft:1ex">
<div style=3D"font-size:10pt;font-family:Verdana,Geneva,sans-serif">
<p>yes, we do. All spice, with some customizations done at source level for=
 spice / kvm packages.</p>
<p><br></p>
<p id=3D"m_-2778335445898781139gmail-m_1463436011990869039reply-intro">On 2=
019-09-23 13:44, Fabio Marzocca wrote:</p>
<blockquote style=3D"padding:0px 0.4em;border-left-width:2px;border-left-st=
yle:solid;border-left-color:#1010ff;margin:0px">
<div dir=3D"auto">Is there anyone who uses oVirt as a full VDI environment?=
 I would have a bunch of questions...</div>
<div dir=3D"auto">=C2=A0</div>
<div dir=3D"auto">=C2=A0</div>
<br>
<div class=3D"m_-2778335445898781139gmail-m_1463436011990869039pre" style=
=3D"margin:0px;padding:0px;font-family:monospace">_________________________=
______________________<br>Users mailing list -- <a href=3D"mailto:users@ovi=
rt.org" rel=3D"noreferrer" target=3D"_blank">users@ovirt.org</a><br>To unsu=
bscribe send an email to <a href=3D"mailto:users-leave@ovirt.org" rel=3D"no=
referrer" target=3D"_blank">users-leave@ovirt.org</a><br>Privacy Statement:=
 <a href=3D"https://www.ovirt.org/site/privacy-policy/" rel=3D"noopener nor=
eferrer" target=3D"_blank">https://www.ovirt.org/site/privacy-policy/</a><b=
r>oVirt Code of Conduct: <a href=3D"https://www.ovirt.org/community/about/c=
ommunity-guidelines/" rel=3D"noopener noreferrer" target=3D"_blank">https:/=
/www.ovirt.org/community/about/community-guidelines/</a><br>List Archives: =
<a href=3D"https://lists.ovirt.org/archives/list/users@ovirt.org/message/D4=
4YB5VOKNBNCJSOMLKRAZBURFJLAOLM/" rel=3D"noopener noreferrer" target=3D"_bla=
nk">https://lists.ovirt.org/archives/list/users@ovirt.org/message/D44YB5VOK=
NBNCJSOMLKRAZBURFJLAOLM/</a></div>
</blockquote>
<p><br></p>
</div>
</blockquote>
</div>
</blockquote>
<p><br></p>

</div>
_______________________________________________<br>
Users mailing list -- <a href=3D"mailto:users@ovirt.org" target=3D"_blank">=
users@ovirt.org</a><br>
To unsubscribe send an email to <a href=3D"mailto:users-leave@ovirt.org" ta=
rget=3D"_blank">users-leave@ovirt.org</a><br>
Privacy Statement: <a href=3D"https://www.ovirt.org/site/privacy-policy/" r=
el=3D"noreferrer" target=3D"_blank">https://www.ovirt.org/site/privacy-poli=
cy/</a><br>
oVirt Code of Conduct: <a href=3D"https://www.ovirt.org/community/about/com=
munity-guidelines/" rel=3D"noreferrer" target=3D"_blank">https://www.ovirt.=
org/community/about/community-guidelines/</a><br>
List Archives: <a href=3D"https://lists.ovirt.org/archives/list/users@ovirt=
.org/message/DWY46KJGSYJGRXMRY7WWCINAW2Y5ETDI/" rel=3D"noreferrer" target=
=3D"_blank">https://lists.ovirt.org/archives/list/users@ovirt.org/message/D=
WY46KJGSYJGRXMRY7WWCINAW2Y5ETDI/</a><br>
</div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"color:rgb(0,0,0);font-famil=
y:RedHatText,sans-serif;font-weight:bold;margin:0px;padding:0px;font-size:1=
4px;text-transform:capitalize"><span>Sandro</span>=C2=A0<span>Bonazzola</sp=
an><span style=3D"text-transform:uppercase;color:rgb(170,170,170);margin:0p=
x"></span></p><p style=3D"color:rgb(0,0,0);font-family:RedHatText,sans-seri=
f;font-size:12px;margin:0px;text-transform:capitalize"><span>MANAGER, SOFTW=
ARE ENGINEERING, EMEA R&amp;D RHV</span></p><p style=3D"color:rgb(0,0,0);fo=
nt-family:RedHatText,sans-serif;margin:0px 0px 4px;font-size:12px"><a href=
=3D"https://www.redhat.com/" style=3D"color:rgb(0,136,206);margin:0px" targ=
et=3D"_blank">Red Hat=C2=A0<span>EMEA</span></a></p><div style=3D"color:rgb=
(0,0,0);font-family:RedHatText,sans-serif;font-size:medium;margin-bottom:4p=
x"></div><p style=3D"color:rgb(0,0,0);font-family:RedHatText,sans-serif;mar=
gin:0px;font-size:12px"><span style=3D"margin:0px;padding:0px"><a href=3D"m=
ailto:sbonazzo@redhat.com" style=3D"color:rgb(0,0,0);margin:0px" target=3D"=
_blank">sbonazzo@redhat.com</a>=C2=A0 =C2=A0</span></p><div style=3D"margin=
-top:12px"><table border=3D"0"><tbody><tr><td width=3D"100px"><a href=3D"ht=
tps://www.redhat.com/" target=3D"_blank"><font color=3D"#000000" face=3D"Re=
dHatText, sans-serif" size=3D"3"><img src=3D"https://marketing-outfit-prod-=
images.s3-us-west-2.amazonaws.com/f5445ae0c9ddafd5b2f1836854d7416a/Logo-Red=
Hat-Email.png" width=3D"90" height=3D"auto"></font></a></td></tr></tbody></=
table><font color=3D"#000000" face=3D"arial, sans-serif" size=3D"1"><b><a h=
ref=3D"https://mojo.redhat.com/docs/DOC-1199578" target=3D"_blank">Red Hat =
respects your work life balance. Therefore there is no need to answer this =
email out of your office hours.</a></b></font><br></div></div></div></div><=
/div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div>

--000000000000cd47a8059371e860--

--===============0941795422==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0941795422==--
