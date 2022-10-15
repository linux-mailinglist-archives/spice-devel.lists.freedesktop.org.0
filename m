Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EB05FFB0F
	for <lists+spice-devel@lfdr.de>; Sat, 15 Oct 2022 17:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAF510E524;
	Sat, 15 Oct 2022 15:37:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0934410E51B
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 15:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1665848274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nm7NkbT2WR8ChaZXsRWHqbJD2sFjbLtniUrmo6i/RWI=;
 b=HYlI2S6iP5onwND0Rf1XhFJ5BpJv75OCsJSCXI/f0soomfewGFmN2OJPFmGlFySXIRzso+
 mzfT67NLdNjifXFrZ204fmSOzAV537HV5CyxsZ6blu456gtH3BZW9A2vCMU+ksgXlZidfO
 LrMhUB4fXbovn4X/44tonSusKu/aTeA=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-624-0JEtEfh3NhirUvV89OFilg-1; Sat, 15 Oct 2022 11:37:52 -0400
X-MC-Unique: 0JEtEfh3NhirUvV89OFilg-1
Received: by mail-pg1-f198.google.com with SMTP id
 p18-20020a63e652000000b0046b27534651so2600849pgj.17
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 08:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nm7NkbT2WR8ChaZXsRWHqbJD2sFjbLtniUrmo6i/RWI=;
 b=EHi3X/QFD6fQ6G2Llv/n9HuvozGCx8lkIviulVq6GBors0D4OSNc8hrAhFVBIRNEUC
 gakjdZ0hWhcU+yqU1TKYZUjOGx7K43bBeOijQj8twTk7X5mh78oRhl2XnuNLDi0ZMlnV
 xYpsfLszvOlbqkj0Dklfkkeo0+uiYie69Tj4u74aDdOh1SaUept83fAQfCCvTExrssCT
 xX7Ut6sNnJRI/fBYeYFS3MwciidOMnnmcQkKVzbKBkuCMgmYeH7vMdzotSoS9u2C8pJE
 FtbHmThdbD8YRQmjDBRFjxMaCg1nN49zDfsXYaNVGrM/+K1Fq5eMwyj33JGrY98e3eQL
 g9nw==
X-Gm-Message-State: ACrzQf1DnvTSYqWgMZ2LgHPhTAN8cvUCkjDPJGHJU7qr+XVTLlUkdf3b
 6ku7uP2NU0X+nGUwzm1EUdWGiLXSJse4JkTqYmZbCEzmVc9qwwEfh5mECDCPtZlJIMOBSSvimzd
 4SGFZ/qQN3PToBSkACdYjV/vLJcHSwe/6Ifd0fF3/0pIRjBM=
X-Received: by 2002:a17:90b:3c8f:b0:20d:959b:26f4 with SMTP id
 pv15-20020a17090b3c8f00b0020d959b26f4mr4033019pjb.104.1665848271703; 
 Sat, 15 Oct 2022 08:37:51 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5OkBQtPbjdNVRJYsoh/G48R4sdNyScLV7Hzu3lQSH5pNRpETm9J/+Monp+uIrg0gRf5iTCbtvwbML+VhWsOjU=
X-Received: by 2002:a17:90b:3c8f:b0:20d:959b:26f4 with SMTP id
 pv15-20020a17090b3c8f00b0020d959b26f4mr4032994pjb.104.1665848271393; Sat, 15
 Oct 2022 08:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <feda950daa6d43c9bd709fa86b6f9a67@MAIL.cloos.locl>
 <CAHt6W4caeUasBsXfAwkhX7oohQum9pV5zzJn+PmkXmdZYam2qw@mail.gmail.com>
 <0290ddf130a74dbf84b3b9b41901bf8b@MAIL.cloos.locl>
In-Reply-To: <0290ddf130a74dbf84b3b9b41901bf8b@MAIL.cloos.locl>
From: David Jasa <djasa@redhat.com>
Date: Sat, 15 Oct 2022 17:37:40 +0200
Message-ID: <CAO+CumqhMgLc8-PF1AVBZDmyM7PAPCQa1ZwwQPoHb0A6mDis-g@mail.gmail.com>
To: "Eibach, Dirk" <Dirk.Eibach@cloos.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000007773ce05eb1486f0"
Subject: Re: [Spice-devel] Running without qemu
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000007773ce05eb1486f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dirk,

For such a use, I suggest that you connect with CodeWeavers and
particularly directly with Jeremy White (CCd) who actually developed
x11spice. I'd expect that they would be happy to offer you the
collaboration, tweaking and support you could need. :)

Cheers,

David

On Sat, Oct 15, 2022 at 12:19 PM Eibach, Dirk <Dirk.Eibach@cloos.de> wrote:

> Hi Frediano,
>
> thanks for having a look into this.
> > ...
> >    Did you mean something like
> https://gitlab.freedesktop.org/spice/x11spice
> > ?
>
> Maybe, thanks. I will have a closer look. We are on windows though.
>
> > Which OS and why not VNC and RDP if you are not using Qemu?
>
> Long story. We have a Windows base robot controller that will be Linux
> based in the next controller generation. The controller is rendering the
> GUI and it is transferred from the Display-Port output to the operator
> panel with a proprietary hardware over fiber.
> Now we are designing a new operator panel that should display the GUI and
> get it from the controller with a remote desktop protocol. For our
> prototype we are using VNC and it works alright but the performance is
> limited. There is also no option to connect USB-drives from the ope rator
> panel to the controller via VNC.
> RDP might work, but a  showstopper is, that the local console gets locked=
.
> We are using the local console to connect a second display.
> Spice looks extremely promising because it is really cross platform, has
> no local console lock, offer USB forwarding and seems to perform nicely.
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards
> Dirk Eibach
> _________________________________
> CARL CLOOS SCHWEISSTECHNIK GMBH
> Softwareentwickler / AU-EW
> Softwaredeveloper / AU-EW
> Hauptverwaltung/Headquarters: Carl-Cloos-Strasse 1
> Zentrallager/Central Warehouse: Carl-Cloos-Strasse 6
> 35708 Haiger
> Germany
> Tel:      +49 2773 85-888
> E-Mail:  mailto:dirk.eibach@cloos.de
> Internet: http://www.cloos.de/
>
> Sitz der Firma/Headquarters: 35708 Haiger, Germany
> Amtsgericht/Lower district court: Wetzlar HR B 3052
> Gesch=C3=A4ftsf=C3=BChrer/Management: Stephan Pittner (CEO), Alexander Ve=
idt (CFO)
>
>

--0000000000007773ce05eb1486f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dirk,</div><div><br></div><div>For such a use, I s=
uggest that you connect with CodeWeavers and particularly directly with Jer=
emy White (CCd) who actually developed x11spice. I&#39;d expect that they w=
ould be happy to offer you the collaboration, tweaking and support you coul=
d need. :)</div><div><br></div><div>Cheers,</div><div><br></div><div>David<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Sat, Oct 15, 2022 at 12:19 PM Eibach, Dirk &lt;<a href=3D"mailt=
o:Dirk.Eibach@cloos.de" target=3D"_blank">Dirk.Eibach@cloos.de</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Frediano,<=
br>
<br>
thanks for having a look into this.<br>
&gt; ...<br>
&gt;=C2=A0 =C2=A0 Did you mean something like <a href=3D"https://gitlab.fre=
edesktop.org/spice/x11spice" rel=3D"noreferrer" target=3D"_blank">https://g=
itlab.freedesktop.org/spice/x11spice</a><br>
&gt; ?<br>
<br>
Maybe, thanks. I will have a closer look. We are on windows though.<br>
<br>
&gt; Which OS and why not VNC and RDP if you are not using Qemu?<br>
<br>
Long story. We have a Windows base robot controller that will be Linux base=
d in the next controller generation. The controller is rendering the GUI an=
d it is transferred from the Display-Port output to the operator panel with=
 a proprietary hardware over fiber.<br>
Now we are designing a new operator panel that should display the GUI and g=
et it from the controller with a remote desktop protocol. For our prototype=
 we are using VNC and it works alright but the performance is limited. Ther=
e is also no option to connect USB-drives from the ope rator panel to the c=
ontroller via VNC.<br>
RDP might work, but a=C2=A0 showstopper is, that the local console gets loc=
ked. We are using the local console to connect a second display.<br>
Spice looks extremely promising because it is really cross platform, has no=
 local console lock, offer USB forwarding and seems to perform nicely.<br>
<br>
Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards<br>
Dirk Eibach<br>
_________________________________<br>
CARL CLOOS SCHWEISSTECHNIK GMBH<br>
Softwareentwickler / AU-EW<br>
Softwaredeveloper / AU-EW<br>
Hauptverwaltung/Headquarters: Carl-Cloos-Strasse 1<br>
Zentrallager/Central Warehouse: Carl-Cloos-Strasse 6<br>
35708 Haiger<br>
Germany<br>
Tel:=C2=A0 =C2=A0 =C2=A0 +49 2773 85-888<br>
E-Mail:=C2=A0 mailto:<a href=3D"mailto:dirk.eibach@cloos.de" target=3D"_bla=
nk">dirk.eibach@cloos.de</a><br>
Internet: <a href=3D"http://www.cloos.de/" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.cloos.de/</a><br>
<br>
Sitz der Firma/Headquarters: 35708 Haiger, Germany<br>
Amtsgericht/Lower district court: Wetzlar HR B 3052<br>
Gesch=C3=A4ftsf=C3=BChrer/Management: Stephan Pittner (CEO), Alexander Veid=
t (CFO)<br>
<br>
</blockquote></div>

--0000000000007773ce05eb1486f0--

