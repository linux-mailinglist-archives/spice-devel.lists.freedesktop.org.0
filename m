Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D209D8C4C57
	for <lists+spice-devel@lfdr.de>; Tue, 14 May 2024 08:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695F810E1E6;
	Tue, 14 May 2024 06:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=webdesignreseach.com header.i=@webdesignreseach.com header.b="btrg1OeL";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DD310E409
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2024 07:32:17 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id
 6a1803df08f44-6a071595d22so16866516d6.3
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2024 00:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=webdesignreseach.com; s=google; t=1715585536; x=1716190336;
 darn=lists.freedesktop.org; 
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iXbNBdLbgQkSTGtq+Ng5Yrgnu9YTCQ60kpWsARYjtPc=;
 b=btrg1OeLL23M85E/7Rx6xl68xQcA0ZT5ASoPID07q7t6laMxCjXIGUDhnRImuzJzg9
 7LCSL8qKYh8zV3Fsb4aVidqnRnU++wb4Q3bRv15LpYK9bPQQ8F8biBcb6rEwDNyyiqdS
 Pxv8QdiwUssUZoXOWo2+6G0rxp0iRchkwnT/G6uCpy1HQXeZJmI97EQs4X3YgZq+sDVc
 hfDFcSCb9otq28T9Vmb0ETou3MrBCR1jrWw7vSxfk/ehoY53kaDKa1zjIKSMiFwhgC0V
 XQla309LEZyxGa6yB/imIi/yzU42JPFY+//zGc6D65QLx9LU0Vu+9a56/bXd+DhwvLWM
 VN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715585536; x=1716190336;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iXbNBdLbgQkSTGtq+Ng5Yrgnu9YTCQ60kpWsARYjtPc=;
 b=acQo4gWzeIDRM65NSkehDJm6/C0QAeX5QPZ+2v+ab/Pvt+tLE0zpGhn0msFi4E6f3M
 EtvEkfHM/hvbK0cJxCCnEbatv+DW0AqsGwy9iYefOamD0EreOF2kblhbiPqYxb6oSXxb
 S/qVrM1NtDP7SzzSmstEfMzG8scoZAqkdgEu/ItKuQsi4V+J6MlQyL6XTqlunn7xvqZK
 qUR563wJaFOV7fbPZyH7kOL46EKPhv5SSEt7qoI/njDb9g1hUj8hs6/pz2RbgWkXzaAu
 TrJWwPieFcEoMWHjwTBev6NueugFSS8RF+ZNK/P61tdLyznFyo3CR6qdnnxfjBcJovL9
 HgzQ==
X-Gm-Message-State: AOJu0Yy6L/mJF7QdvamOUCquQsYz2/ialW+BAbIeIPp63recQlHauZY5
 ck5hwR4H3lRgTiFJzM4Rm+7Odo1h/Q20bmrykWOTegjiHFi67J/EiSe0ztJZ7j5mQEVhfw3tKgK
 entbuQAJOfGmfXR7mYLLvKRMe41VUsxq7COiiCJ63BXaMBFXVxDLkSQ==
X-Google-Smtp-Source: AGHT+IE6K3cMis2aRDFTP3MwkIGti0cxDMzI1S4FJm4J5ytYH1XVF5zc3kA8kNagJZChOE2wSi7L/tyPMx74VJi+mMI=
X-Received: by 2002:a05:6214:540e:b0:69b:6a3a:c673 with SMTP id
 6a1803df08f44-6a168216c61mr117492546d6.32.1715585536314; Mon, 13 May 2024
 00:32:16 -0700 (PDT)
Received: from 52669349336 named unknown by gmailapi.google.com with HTTPREST; 
 Mon, 13 May 2024 03:32:16 -0400
Received: from 52669349336 named unknown by gmailapi.google.com with HTTPREST; 
 Mon, 13 May 2024 03:32:13 -0400
MIME-Version: 1.0
From: Hayley Wiggins <hayley@webdesignreseach.com>
Date: Mon, 13 May 2024 03:32:16 -0400
X-Google-Sender-Auth: TTVosjRfL5mzYDRI2Nl5MtA6JfM
Message-ID: <CAAW2Gv=3EuaZOAEF8WtpFV22gEh+71r74+SzKRV+kzyttBksPA@mail.gmail.com>
Subject: About your spice-space.org.
To: Spice-Devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000796820061850e2f8"
X-Mailman-Approved-At: Tue, 14 May 2024 06:33:00 +0000
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

--000000000000796820061850e2f8
Content-Type: text/plain; charset="UTF-8"

*Hi** spice-space.org <http://spice-space.org>** Team, *

Hope you are doing well.

I was looking for Keywords and found your website on page 3-4 of Google. If
you were on page #1, you'd get so many prospects/new clients every day.
Most of your targeted keywords on page #3-5. You're so close! Do you mind
if I sent a *SEO Packages* and *Price list* of your site to see why you're
not on page #1?

I can send the *past work details* in a couple hours. If you have any
questions, feel free to ask me. I have more than 10 years of experience in
digital marketing.

Can I send it over?

Look forward to your reply.

*Kind Regards*


*Hayley Wiggins*


*Business Development Manager*------------------------------
-------------------------------------------
*Note:* - Our next conversation will be on my corporate Email ID.  If you
are interested, then reply to us *"Send your Proposal and Price list"*
Click *here*
<https://webdesignreseach-dot-yamm-track.appspot.com/2msmZwsivGcleJ2rcE17gPq5ixL3bK-61cy-Ox_z2Vv9Ax91wjwFrqhWiRM47nxMIBEZ5v37d7lwhGjCAFRkf6PK8qWHxGRuEekEE1HDFF29F6k_TwUia1RfPajokIHm75S3ecpFNhKU5rVEI7kSrp6X35Bg2MRujQb3pPNwuHhWOc64bF0Vw61rWwrgUlkP30JBu7SM>
to
unsubscribe.
[image: beacon]

--000000000000796820061850e2f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 12pt;line-h=
eight:14.95px"><font face=3D"verdana, sans-serif"><b><span style=3D"line-he=
ight:14.95px">Hi</span></b><b><span style=3D"line-height:14.95px;color:blac=
k">=C2=A0<a href=3D"http://spice-space.org">spice-space.org</a></span></b><=
b><span style=3D"line-height:14.95px">=C2=A0Team,=C2=A0</span></b><span sty=
le=3D"line-height:14.95px"></span></font></p><p class=3D"MsoNormal" style=
=3D"margin:0cm 0cm 10pt;line-height:normal"><font face=3D"verdana, sans-ser=
if">Hope you are doing well.=C2=A0</font></p><p class=3D"MsoNormal" style=
=3D"margin:0cm 0cm 10pt;line-height:normal"><font face=3D"verdana, sans-ser=
if">I was looking for=C2=A0Keywords=C2=A0and found your website on page 3-4=
 of Google. If you were on page #1, you&#39;d get so many prospects/new cli=
ents every day. Most of your targeted keywords on page #3-5. You&#39;re so =
close! Do you mind if I sent a=C2=A0<b>SEO Packages</b>=C2=A0and=C2=A0<b>Pr=
ice list</b>=C2=A0of your site to see why you&#39;re not on page #1?</font>=
</p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 10pt;line-height:normal"=
><font face=3D"verdana, sans-serif">I can send the=C2=A0<b>past work detail=
s</b>=C2=A0in a couple hours. If you have any questions, feel free to ask m=
e. I have more than 10 years of experience in digital=C2=A0marketing.</font=
></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 10pt;line-height:normal=
"><font face=3D"verdana, sans-serif">Can I send it over?</font></p><p class=
=3D"MsoNormal" style=3D"margin:0cm 0cm 10pt;line-height:normal"><font face=
=3D"verdana, sans-serif">Look forward to your reply.</font></p><p class=3D"=
MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal"><font face=
=3D"verdana, sans-serif"><b>Kind Regards</b></font><b style=3D"font-family:=
verdana,sans-serif"><span style=3D"color:rgb(33,37,41);letter-spacing:0.1pt=
">=C2=A0</span></b></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.000=
1pt;line-height:normal"><font face=3D"verdana, sans-serif"><b><br></b></fon=
t></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:n=
ormal"><b style=3D"font-family:Calibri,sans-serif;font-size:14.6667px"><spa=
n style=3D"font-size:10pt;font-family:Verdana,sans-serif">Hayley Wiggins</s=
pan></b><br></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 12pt;line-he=
ight:14.95px"><span style=3D"font-family:verdana,sans-serif"><b>Business De=
velopment Manager<br></b></span><span style=3D"font-family:verdana,sans-ser=
if">------------------------------</span><span style=3D"font-family:verdana=
,sans-serif">------------------------------</span><span style=3D"font-famil=
y:verdana,sans-serif">-------------<br></span><b style=3D"font-family:verda=
na,sans-serif">Note:</b><span style=3D"font-family:verdana,sans-serif">=C2=
=A0- Our next conversation will be on my corporate Email ID.=C2=A0</span>=
=C2=A0<span style=3D"color:black;font-family:verdana,sans-serif">If you are=
 interested, then reply to us=C2=A0</span><span style=3D"font-family:verdan=
a,sans-serif"><b style=3D"color:black">&quot;Send your Proposal and Price l=
ist&quot;</b><font color=3D"#000000"><b><br></b></font></span><span lang=3D=
"EN-US" style=3D"font-family:verdana,sans-serif">Click=C2=A0</span><span la=
ng=3D"EN-US" style=3D"font-family:verdana,sans-serif"><a href=3D"https://we=
bdesignreseach-dot-yamm-track.appspot.com/2msmZwsivGcleJ2rcE17gPq5ixL3bK-61=
cy-Ox_z2Vv9Ax91wjwFrqhWiRM47nxMIBEZ5v37d7lwhGjCAFRkf6PK8qWHxGRuEekEE1HDFF29=
F6k_TwUia1RfPajokIHm75S3ecpFNhKU5rVEI7kSrp6X35Bg2MRujQb3pPNwuHhWOc64bF0Vw61=
rWwrgUlkP30JBu7SM" rel=3D"nofollow" target=3D"_blank"><b><span style=3D"col=
or:red">here</span></b></a></span><span lang=3D"EN-US" style=3D"font-family=
:verdana,sans-serif">=C2=A0to unsubscribe.</span>=C2=A0=C2=A0</p></div>
<img src=3D"https://webdesignreseach-dot-yamm-track.appspot.com/2jJ-j7W_-3L=
vcrVkDtQJwGAnSrR23laLrGM8gKQhAijI6x91wjwGDfWXuvW7438ftVvJbu0qJ1deZqNs0joGpU=
SHIoKxDDdC2d_gUeT5Am-XXnQP3_kFjbwaNiiSYUp2WhxgayrLYE_pt6ltEWpEpvDtKEoNi0aik=
lbl2" width=3D"1" height=3D"1" alt=3D"beacon" style=3D"display:none; displa=
y:none!important;">

--000000000000796820061850e2f8--
