Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB98C92F8
	for <lists+spice-devel@lfdr.de>; Sun, 19 May 2024 00:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F8110E15B;
	Sat, 18 May 2024 22:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=bogomips.com header.i=@bogomips.com header.b="OXwIbh0e";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFA010E15B
 for <spice-devel@lists.freedesktop.org>; Sat, 18 May 2024 22:02:16 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-1f0937479f8so41311005ad.3
 for <spice-devel@lists.freedesktop.org>; Sat, 18 May 2024 15:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bogomips.com; s=google; t=1716069735; x=1716674535;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nZuNUm8oA7/0t5CenmZz4rVDukwnWyn8wwhQlu6kGvA=;
 b=OXwIbh0ekBRtRfihwsczjuUdTwIq/fezv0jXt8DM1d/8KcrgZENv6rjKu4oebVMI04
 bvm8P9V7808+KbVwvimgMmrKzZbBrsriSRVgRICkGndB8+huHPNyKYLRTTRU34v6SK0e
 lBfy8F8fmCFWxObEU3WNGaCbr/iIXBlp/2Waw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716069735; x=1716674535;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nZuNUm8oA7/0t5CenmZz4rVDukwnWyn8wwhQlu6kGvA=;
 b=W1R6HMI4LJpl1UpJ0iKTNKskWAmFP2JH9GxHgLgTcOGZO9PpL0mQZRjBPfuln76b3K
 P5hM6hWkqcZz3USuuE4WZ/0VJIknLAobT9yKHZlCyu0qNCZ5A8kF6etOWEMgk90qPD4o
 fl0W7dkZxSthrOKacuSZE1bFQy8Tm8gErjCaffL7tekgQm+eaNIZ210KEnGkdlu9YZcg
 FWxnQt8Q3t7ZG0maCraqZfV+LqS0/moAPws2sqIsLBoTVEwJJi9wa1ULukf92XUGYATn
 N3+xkidMSJ8osAZ6mkkmlu+6BHms5DUDl8bnozVYSF68lfTx43ZIi0GJiwzzVH2/vOST
 yrtg==
X-Gm-Message-State: AOJu0Yz95ymqPBQDR3C1RpCbFbvObCX2FQRK2qkMIM+8u/59u6Ij3wgp
 nr9xtzyoEwsAOk4gHybx3kJJgHbtBpd+cwk6zN1HVJOPYTpVqlqSrDGFlpM+IMVjtPuniwPBURA
 qUbXO2cfKvHWuBO8T3uB5xT593SN5xvMx89TD3wl4cxB3PZHVAc8=
X-Google-Smtp-Source: AGHT+IEsNStLEDJ1nGvmXnKAIO5IOd2Cj0bGW5to/ROljkOe5YuEqZizCwEfZVRNqkiy5Kjlk1yJxkLEor5ok9SP150=
X-Received: by 2002:a17:90a:5aa7:b0:2bd:4759:46dd with SMTP id
 98e67ed59e1d1-2bd47594909mr6432129a91.37.1716069734943; Sat, 18 May 2024
 15:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <6B9928C0-3CC8-4F38-8A5D-234142717682.ref@att.net>
 <6B9928C0-3CC8-4F38-8A5D-234142717682@att.net>
 <zifbl3lshkwq2zluyekp2h5qzchcdeaxpf7rwwczwgngpojjbp@aqqntccgf7q2>
 <CAO-kYtEZU1iZoAMPTj2xDi6GXe_3QXMus2fbs+FZ3UGba948Zw@mail.gmail.com>
 <1003356D-07C4-49DD-AE44-F0CBFBE6517E@att.net>
In-Reply-To: <1003356D-07C4-49DD-AE44-F0CBFBE6517E@att.net>
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Sat, 18 May 2024 15:02:03 -0700
Message-ID: <CAO-kYtHRk6279dgpKNfdEEZNtYgy+8X++J-51R2q8rPhnPx8mg@mail.gmail.com>
Subject: Re: Audio through spice
To: Dorothy Calhoon <rdservants@att.net>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f628920618c19e83"
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

--000000000000f628920618c19e83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

I haven't used any of this in a while so I can't help much. Quickemu is a
great tool for getting started, maybe their support forums can help.
OSX is pretty tricky so you might have to look around and change your
quickemu scripts or opencore setup.

For audio to work through spice you need a qemu line like this:
-audiodev spice,id=3Dhda -device ich9-intel-hda -device
hda-duplex,audiodev=3Dhda

But you also need OSX to boot properly with the right Opencore setup and
fixes/patches/hacks..
Quickemu docs say you need  VoodooHDA OC
https://github.com/quickemu-project/quickemu/blob/master/docs/quickemu.1.md

Spice USB redirection for some devices:
https://github.com/quickemu-project/quickemu/issues/120

Docker OSX - MacOS focused, but it runs qemu inside docker
https://github.com/sickcodes/Docker-OSX
Lots of info that can be used outside of docker

iPhone USB redirection working - outside of Docker and by re-mapping your
PCI hardware to the guest.
Not sure if Spice can do that.
https://github.com/sickcodes/Docker-OSX/issues/133#issuecomment-894594306
Maybe other approaches will work:
https://github.com/sickcodes/Docker-OSX/issues/36


On Fri, May 17, 2024 at 1:50=E2=80=AFPM Dorothy Calhoon <rdservants@att.net=
> wrote:

> Hi John!
>
> Thanks for your help. After reviewing your statements I think I don=E2=80=
=99t have
> USB redirection working. In Spice under =E2=80=9COptions=E2=80=9D it has =
checked =E2=80=9Cgrab
> mouse=E2=80=9D and =E2=80=9Cgrab keyboard=E2=80=9D not the term "redirect=
". It also passes the
> printer and a wifi adaptor through to the guest and these items are
> connected by USB ports. Another item checked under =E2=80=9COptions=E2=80=
=9D is =E2=80=9Cauto
> redirect newly plugged in USB devices.=E2=80=9D However, when I plugin my=
 mini
> speaker bar on the guest side it says the host won=E2=80=99t allow it. I =
was
> wondering if the issue there is the lack of a free channel. In Spice unde=
r
> =E2=80=9CInput" it says there are 3 free channels but if I check the mini=
 speaker
> bar there it is again rejected.
>
> I=E2=80=99ve done some research related to Qemu and sound, but so far not=
hing
> seemed to work or I couldn=E2=80=99t understand their instructions. Since=
 Spice is
> supposed to handle audio into the guest, I thought that would be the
> easiest route. I was also concerned that doing some other approach might
> mess up spice.
>
> You mentioned usb-ochi/ehci/xhci as being the virtual machine/guest
> settings but I don=E2=80=99t know what I should do with that information.
>
> Your further guidance would be appreciated.
>
> Hi Victor!
>
> Thanks for your assistance. I am using spice-gtk (Spicy 0.39). As you
> recommended, I installed gstreamer. However, I still don=E2=80=99t have s=
ound on
> the guest side. I installed gstreamer on the client side. Was that correc=
t?
>
> I am looking for sound from YouTube videos played on the guest side. On
> the client side I have speakers connected via wifi or I use the mini soun=
d
> bar connected via a usb port. Neither of these move to the guest side, ev=
en
> if I plug in the mini speaker after the virtual machine has brought up th=
e
> guest.
>
> Any further help will be appreciated.
>
> Dorothy
>
>
>
>
>
> On May 10, 2024, at 12:34 PM, John Paul Morrison <jmorrison@bogomips.com>
> wrote:
>
> Hi Dorothy
>
> This sounds more like a guest problem - you could probably find more help
> on the quickemu Discord or looking through github issues/discussions.
>
> It's been a while but changes to Opencore or qemu settings can break audi=
o
> and other things.
> Spice probably isn't redirecting your usb keyboard/mouse - normally it
> just sends the input to the emulated guest hardware.
> It also does this for audio.
>
> I have had OSX Catalina with working sound, and it breaks with
> Opencore/boot or other changes to the virtual hardware.
> Qemu/quickemu and Opencore have to map the intel-hda guest machine "sound
> card" into something Catalina can use.
>
> I have used USB redirection with Catalina - but you need to make sure
> Catalina has drivers/kexts for the USB hardware.
> Just getting USB working in Catalina was a challenge before - maybe that'=
s
> been fixed. These were virtual machine/guest settings for
> usb-ochi/ehci/xhci.
>
>
>
> On Fri, May 10, 2024 at 3:09=E2=80=AFAM Victor Toso <victortoso@redhat.co=
m> wrote:
>
>> Hi Dorothy,
>>
>> On Sat, Apr 27, 2024 at 12:57:49PM GMT, Dorothy Calhoon wrote:
>> > Hi!
>> >
>> > I use spice to redirect the usb ports from my POPos host to my
>> > Mac Catalina operating system in my QEMU virtual machine which
>> > was set up using quickemu and now is accessed via quickgui.
>> > Spice works fine for redirecting the keyboard, mouse, wifi and
>> > printer. Now I need it for audio.
>>
>> SPICE supports playback and record audio channels. Playback is
>> audio coming from the Guest to your Client and Record is client's
>> microphone to redirect to the guest.
>>
>> If you already uses usbredir channel, chances are that your spice
>> client already supports playback/record too. Which spice client
>> are you using?
>>
>> > I know that audio has been a problem in virtual machines with
>> > Mac operating systems later than Catalina, but it is supposed
>> > to work in Catalina.
>>
>> If you are using spice-gtk, the audio backend should be gstreamer
>> and the right plugins need to be installed
>>
>> > I have a small speaker that plugs into the guest via a usb port
>> > but it is not recognized. I also tried headphones in the audio
>> > out ports and still Preferences show nothing for sound and
>> > there is none.
>> >
>> > I understand that spice can allow the audio sound card from the
>> > host to pass through to the guest. How do I implement that
>> > feature? Somewhere I read that inputting the following into the
>> > host terminal would do it: QEMU_AUDIO_DRV=3D spice. However,
>> > terminal did nothing and just wanted more instructions. The
>> > directions I had found said that after this command you could
>> > then use -soundhw hda options. However, terminal does not
>> > recognize soundhw and I wasn=E2=80=99t sure exactly what the =E2=80=9C=
options"
>> > were.
>> >
>> > I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and=
 the
>> > terminal said that the audiodev command was not found.
>>
>> I'm not familiar with quickemu nor quickgui, but again, if you
>> are already using some spice channels, I'd guess the problem is
>> on the client-side.
>>
>> > It appears that there are just a couple of commands that would
>> > allow the audio passthrough feature of spice to work, but I
>> > don=E2=80=99t know exactly what they are. I am new to using terminal s=
o
>> > I need very precise instructions. I would appreciate your help
>> > in this.
>> >
>> > Thanking you in advance.
>> >
>> > Dorothy
>>
>> Cheers,
>> Victor
>>
>
>

--000000000000f628920618c19e83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi</div><=
div><br></div><div>I haven&#39;t used any of this in a while so I can&#39;t=
 help much. Quickemu is a great tool for getting started, maybe their suppo=
rt forums can help.=C2=A0</div><div>OSX is pretty tricky so you might have =
to look around and change your quickemu scripts or opencore setup.</div><di=
v><br></div><div>For audio to work through spice you need a qemu line like =
this:</div><div><span style=3D"color:rgb(31,35,40);font-size:11.9px">-audio=
dev spice,id=3Dhda -device ich9-intel-hda -device hda-duplex,audiodev=3Dhda=
=C2=A0</span></div><div><span style=3D"color:rgb(31,35,40);font-size:11.9px=
"><br></span></div><div><span style=3D"color:rgb(31,35,40);font-size:11.9px=
">But you also need OSX to boot properly with the right Opencore setup and =
fixes/patches/hacks..=C2=A0=C2=A0</span></div><div><span style=3D"color:rgb=
(31,35,40);font-size:11.9px">Quickemu docs say you need=C2=A0</span><font c=
olor=3D"#1f2328"><span style=3D"font-size:11.9px">=C2=A0VoodooHDA OC</span>=
</font><span style=3D"color:rgb(31,35,40);font-size:11.9px">=C2=A0=C2=A0</s=
pan><font color=3D"#1f2328"><span style=3D"font-size:11.9px"><a href=3D"htt=
ps://github.com/quickemu-project/quickemu/blob/master/docs/quickemu.1.md">h=
ttps://github.com/quickemu-project/quickemu/blob/master/docs/quickemu.1.md<=
/a></span></font></div><div><br></div><div>Spice USB redirection for some d=
evices:=C2=A0<a href=3D"https://github.com/quickemu-project/quickemu/issues=
/120">https://github.com/quickemu-project/quickemu/issues/120</a></div><div=
><br></div><div>Docker OSX - MacOS focused, but it runs qemu inside docker =
<a href=3D"https://github.com/sickcodes/Docker-OSX">https://github.com/sick=
codes/Docker-OSX</a><br></div><div>Lots of info that can be used outside of=
 docker</div><div><br></div><div>iPhone USB redirection working - outside o=
f Docker and by re-mapping your PCI hardware to the guest.=C2=A0</div><div>=
Not sure if Spice can do that.</div><div><a href=3D"https://github.com/sick=
codes/Docker-OSX/issues/133#issuecomment-894594306">https://github.com/sick=
codes/Docker-OSX/issues/133#issuecomment-894594306</a><br></div><div>Maybe =
other approaches will work:=C2=A0<a href=3D"https://github.com/sickcodes/Do=
cker-OSX/issues/36">https://github.com/sickcodes/Docker-OSX/issues/36</a></=
div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, May 17, 2024 at 1:50=E2=80=AFPM Dorothy Calhoon &lt;<a=
 href=3D"mailto:rdservants@att.net">rdservants@att.net</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflo=
w-wrap: break-word;">Hi John!<div><br></div><div>Thanks for your help. Afte=
r reviewing your statements I think I don=E2=80=99t have USB redirection wo=
rking. In Spice under =E2=80=9COptions=E2=80=9D it has checked =E2=80=9Cgra=
b mouse=E2=80=9D and =E2=80=9Cgrab keyboard=E2=80=9D not the term &quot;red=
irect&quot;. It also passes the printer and a wifi adaptor through to the g=
uest and these items are connected by USB ports. Another item checked under=
 =E2=80=9COptions=E2=80=9D is =E2=80=9Cauto redirect newly plugged in USB d=
evices.=E2=80=9D However, when I plugin my mini speaker bar on the guest si=
de it says the host won=E2=80=99t allow it. I was wondering if the issue th=
ere is the lack of a free channel. In Spice under =E2=80=9CInput&quot; it s=
ays there are 3 free channels but if I check the mini speaker bar there it =
is again rejected.=C2=A0</div><div><br></div><div>I=E2=80=99ve done some re=
search related to Qemu and sound, but so far nothing seemed to work or I co=
uldn=E2=80=99t understand their instructions. Since Spice is supposed to ha=
ndle audio into the guest, I thought that would be the easiest route. I was=
 also concerned that doing some other approach might mess up spice.</div><d=
iv><br></div><div>You mentioned usb-ochi/ehci/xhci as being the virtual mac=
hine/guest settings but I don=E2=80=99t know what I should do with that inf=
ormation.=C2=A0</div><div><br></div><div>Your further guidance would be app=
reciated.</div><div><br></div><div>Hi Victor!</div><div><br></div><div>Than=
ks for your assistance. I am using spice-gtk (Spicy 0.39). As you recommend=
ed, I installed gstreamer. However, I still don=E2=80=99t have sound on the=
 guest side. I installed gstreamer on the client side. Was that correct?</d=
iv><div><br></div><div>I am looking for sound from YouTube videos played on=
 the guest side. On the client side I have speakers connected via wifi or I=
 use the mini sound bar connected via a usb port. Neither of these move to =
the guest side, even if I plug in the mini speaker after the virtual machin=
e has brought up the guest.=C2=A0</div><div><br></div><div>Any further help=
 will be appreciated.</div><div><br></div><div>Dorothy</div><div><br></div>=
<div><br></div><div><br></div><div>=C2=A0<br><div><br><blockquote type=3D"c=
ite"><div>On May 10, 2024, at 12:34 PM, John Paul Morrison &lt;<a href=3D"m=
ailto:jmorrison@bogomips.com" target=3D"_blank">jmorrison@bogomips.com</a>&=
gt; wrote:</div><br><div><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Dorothy<=
/div><div><br></div><div>This sounds more like a guest problem - you could =
probably find more help on the quickemu Discord or looking through github i=
ssues/discussions.</div><div><br></div><div>It&#39;s been a while but chang=
es to Opencore or qemu settings can break audio and other things.</div><div=
>Spice probably isn&#39;t redirecting your usb keyboard/mouse - normally it=
 just sends the input to the emulated guest hardware.</div><div>It also doe=
s this for audio.</div><div><br></div><div>I have had OSX Catalina with wor=
king sound, and it breaks with Opencore/boot or other changes to the virtua=
l hardware.=C2=A0</div><div>Qemu/quickemu and Opencore have to map the inte=
l-hda guest machine &quot;sound card&quot; into something Catalina can use.=
</div><div><br></div><div>I have used=C2=A0USB redirection with Catalina - =
but you need to make sure Catalina has drivers/kexts for the USB hardware.<=
/div><div>Just getting USB working in Catalina was a challenge before - may=
be that&#39;s been fixed. These were virtual machine/guest settings for usb=
-ochi/ehci/xhci.</div><div><br></div><div><br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 10, 2024 at 3:09=
=E2=80=AFAM Victor Toso &lt;<a href=3D"mailto:victortoso@redhat.com" target=
=3D"_blank">victortoso@redhat.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Dorothy,<br>
<br>
On Sat, Apr 27, 2024 at 12:57:49PM GMT, Dorothy Calhoon wrote:<br>
&gt; Hi!<br>
&gt; <br>
&gt; I use spice to redirect the usb ports from my POPos host to my<br>
&gt; Mac Catalina operating system in my QEMU virtual machine which<br>
&gt; was set up using quickemu and now is accessed via quickgui.<br>
&gt; Spice works fine for redirecting the keyboard, mouse, wifi and<br>
&gt; printer. Now I need it for audio.<br>
<br>
SPICE supports playback and record audio channels. Playback is<br>
audio coming from the Guest to your Client and Record is client&#39;s<br>
microphone to redirect to the guest.<br>
<br>
If you already uses usbredir channel, chances are that your spice<br>
client already supports playback/record too. Which spice client<br>
are you using?<br>
<br>
&gt; I know that audio has been a problem in virtual machines with<br>
&gt; Mac operating systems later than Catalina, but it is supposed<br>
&gt; to work in Catalina. <br>
<br>
If you are using spice-gtk, the audio backend should be gstreamer<br>
and the right plugins need to be installed<br>
<br>
&gt; I have a small speaker that plugs into the guest via a usb port<br>
&gt; but it is not recognized. I also tried headphones in the audio<br>
&gt; out ports and still Preferences show nothing for sound and<br>
&gt; there is none.<br>
&gt; <br>
&gt; I understand that spice can allow the audio sound card from the<br>
&gt; host to pass through to the guest. How do I implement that<br>
&gt; feature? Somewhere I read that inputting the following into the<br>
&gt; host terminal would do it: QEMU_AUDIO_DRV=3D spice. However,<br>
&gt; terminal did nothing and just wanted more instructions. The<br>
&gt; directions I had found said that after this command you could<br>
&gt; then use -soundhw hda options. However, terminal does not<br>
&gt; recognize soundhw and I wasn=E2=80=99t sure exactly what the =E2=80=9C=
options&quot;<br>
&gt; were.<br>
&gt; <br>
&gt; I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and=
 the<br>
&gt; terminal said that the audiodev command was not found.<br>
<br>
I&#39;m not familiar with quickemu nor quickgui, but again, if you<br>
are already using some spice channels, I&#39;d guess the problem is<br>
on the client-side.<br>
<br>
&gt; It appears that there are just a couple of commands that would<br>
&gt; allow the audio passthrough feature of spice to work, but I<br>
&gt; don=E2=80=99t know exactly what they are. I am new to using terminal s=
o<br>
&gt; I need very precise instructions. I would appreciate your help<br>
&gt; in this. <br>
&gt; <br>
&gt; Thanking you in advance.<br>
&gt; <br>
&gt; Dorothy<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div></div>
</div></blockquote></div><br></div></div></blockquote></div></div></div></d=
iv></div></div></div></div></div>

--000000000000f628920618c19e83--
