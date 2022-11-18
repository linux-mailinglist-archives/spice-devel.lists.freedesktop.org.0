Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BBD62F2F9
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 11:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086D210E22E;
	Fri, 18 Nov 2022 10:48:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A2710E22E
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 10:48:37 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id j4so7652069lfk.0
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 02:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=S1eh1U3wy6WD5Z4U6pVhN0lpTwnfmR0wW6RjRa1mCoU=;
 b=FakE4tpXdHXFD+eXN2HIVr4fSEx9oogP3ei2+yLOoz8xbrYpVErvqOnPQT/t3p3bCk
 +IYM/mlaNAfEvwQJ89ekmGLV55EfHW5nzWLLN7eGnVtxS/cYIDFmUsJMviAsBKiEa97L
 1RhsO52/R14lkSlM8dxJYGDM71NnEcYx60DiG/IYGla4gpsZA22WDFtwmKTCgngt6lfU
 cDOO8rA5whktn1M6Umvfixrdfk980IAky3wtn+3zo7d9q6jfseVUDic7+A7a10a868Tb
 zjy4t7MtU238U+XRsMNMhck3pkAolmlTYof3hzmZ3TJcQWbOF1wNhHWbRXjpKSfhUp50
 4vPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=S1eh1U3wy6WD5Z4U6pVhN0lpTwnfmR0wW6RjRa1mCoU=;
 b=tGoS8Thsh1lsu4+HmhCfhdVKFgrotEXBklcMzHEvqm6gcaxtOPGqkzu9tX25uyavwZ
 ppLtCvcT1zFcpLtFFwD7aj1kXIRTpB4qB5tOD5HVM6Cs0ogIf9swRQOlMI8YpQfpa3tl
 dqGOI/bqWPgKJtYt+JHKriA0Su/K1sCI9MQlmwP2TOu71glNRPZpDtRdRlY01DJxemFx
 kC5uFzNw+L211myKz72n4nMRbPAuwzCrKtIv3T4TgL/ntC+rlHR4OdVX/xA/iDUePB9n
 V9UWTKw8tOn8al5srd7YpD+r9RF+vwJRduCxUlQESIrQJiiNf6HkZ7CaAHNAX/cKfqow
 IE9A==
X-Gm-Message-State: ANoB5pmhkpoKjQ5IhAVBrqOFlGwcdMC3Td8KpVCtkBsRGtbHrDCvEut0
 ywECR4a65WUC2ohBHpcVCIP+uCeEm+roya/JFxYLjCG8b1c=
X-Google-Smtp-Source: AA0mqf6p1WSDn55w7GdQERNFkc50mcA/e/bnO0jZBFVf05fjUnPRIDRq1XEfH0BeEmtFTLeyhr0qj9Hqh4ZrvUXCGho=
X-Received: by 2002:a19:6519:0:b0:4b4:b5d7:a70b with SMTP id
 z25-20020a196519000000b004b4b5d7a70bmr2130715lfb.584.1668768513880; Fri, 18
 Nov 2022 02:48:33 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
 <20221116083733.yal5hdblbefrewjj@tapioca>
 <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
 <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
 <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
 <CAHt6W4eb2Mu1kCxh1wQy1pUsJkeamq1KhgH29B+r7V-8KDMWdQ@mail.gmail.com>
 <CADiWsK_5Oeof94_gU6fUXoMh9rapZgAcmaXkcM2Rg3TQdSyo5g@mail.gmail.com>
 <CADiWsK-mpnzoTDBWEg8iJG+aEy-jWSK9JYqmtkASbO8jNhVR+Q@mail.gmail.com>
 <CAHt6W4f-HxuQ=+eNtYiTsNkeQwXKZ=h=WhUbc8y6Caua26dyKA@mail.gmail.com>
In-Reply-To: <CAHt6W4f-HxuQ=+eNtYiTsNkeQwXKZ=h=WhUbc8y6Caua26dyKA@mail.gmail.com>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Fri, 18 Nov 2022 11:48:22 +0100
Message-ID: <CADiWsK9-PWpMoSezbtO4gh2z1dnznZSY8kT1DxWruAjUhCrtWQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007b75e605edbc7275"
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000007b75e605edbc7275
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hope this wall of text helps you in any way :D

stony@Aperture-Science:~$ history | grep spice | hexdump -C
00000000  20 31 32 30 36 20 20 72  65 6d 6f 74 65 2d 76 69  | 1206
 remote-vi|
00000010  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 31 39 32  |ewer
spice://192|
00000020  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
 |.168.178.51:5900|
00000030  0a 20 31 32 31 30 20 20  72 65 6d 6f 74 65 2d 76  |. 1210
 remote-v|
00000040  69 65 77 65 72 20 73 70  69 63 65 3a 2f 2f 31 39  |iewer
spice://19|
00000050  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
00000060  30 0a 20 31 33 30 39 20  20 72 65 6d 6f 74 65 2d  |0. 1309
 remote-|
00000070  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer
spice:...|
00000080  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
 |...192.168.178.5|
00000090  31 3a 35 39 30 30 0a 20  31 33 31 30 20 20 72 65  |1:5900. 1310
 re|
000000a0  6d 6f 74 65 2d 76 69 65  77 65 72 20 73 70 69 63  |mote-viewer
spic|
000000b0  65 3a e2 81 84 e2 81 84  31 39 32 2e 31 36 38 2e
 |e:......192.168.|
000000c0  31 37 38 2e 34 38 3a 35  39 30 30 0a 20 31 33 31  |178.48:5900.
131|
000000d0  31 20 20 72 65 6d 6f 74  65 2d 76 69 65 77 65 72  |1
 remote-viewer|
000000e0  20 73 70 69 63 65 3a e2  81 84 e2 81 84 31 39 32  |
spice:......192|
000000f0  2e 31 36 38 2e 31 37 38  2e 34 37 3a 35 39 30 30
 |.168.178.47:5900|
00000100  0a 20 31 33 31 32 20 20  72 65 6d 6f 74 65 2d 76  |. 1312
 remote-v|
00000110  69 65 77 65 72 20 73 70  69 63 65 3a e2 81 84 e2  |iewer
spice:....|
00000120  81 84 31 39 32 2e 31 36  38 2e 31 37 38 2e 36 30
 |..192.168.178.60|
00000130  3a 35 39 30 30 0a 20 31  33 31 34 20 20 72 65 6d  |:5900. 1314
 rem|
00000140  6f 74 65 2d 76 69 65 77  65 72 20 73 70 69 63 65  |ote-viewer
spice|
00000150  3a e2 81 84 e2 81 84 31  39 32 2e 31 36 38 2e 31
 |:......192.168.1|
00000160  37 38 2e 35 31 3a 35 39  30 30 0a 20 31 33 31 35  |78.51:5900.
1315|
00000170  20 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |
 remote-viewer |
00000180  73 70 69 63 65 3a e2 81  84 e2 81 84 31 39 32 2e
 |spice:......192.|
00000190  31 36 38 2e 31 37 38 2e  36 30 3a 35 39 30 30 0a
 |168.178.60:5900.|
000001a0  20 31 33 31 36 20 20 72  65 6d 6f 74 65 2d 76 69  | 1316
 remote-vi|
000001b0  65 77 65 72 20 73 70 69  63 65 3a e2 81 84 e2 81  |ewer
spice:.....|
000001c0  84 31 39 32 2e 31 36 38  2e 31 37 38 2e 36 30 3a
 |.192.168.178.60:|
000001d0  35 39 30 31 0a 20 31 33  31 38 20 20 72 65 6d 6f  |5901. 1318
 remo|
000001e0  74 65 2d 76 69 65 77 65  72 20 73 70 69 63 65 3a  |te-viewer
spice:|
000001f0  e2 81 84 e2 81 84 31 39  32 2e 31 36 38 2e 31 37
 |......192.168.17|
00000200  38 2e 36 30 3a 35 39 30  30 0a 20 31 33 32 30 20  |8.60:5900.
1320 |
00000210  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 73  | remote-viewer
s|
00000220  70 69 63 65 3a e2 81 84  e2 81 84 31 39 32 2e 31
 |pice:......192.1|
00000230  36 38 2e 31 37 38 2e 36  30 3a 35 39 30 30 0a 20
 |68.178.60:5900. |
00000240  31 33 32 32 20 20 72 65  6d 6f 74 65 2d 76 69 65  |1322
 remote-vie|
00000250  77 65 72 20 73 70 69 63  65 3a e2 81 84 e2 81 84  |wer
spice:......|
00000260  31 39 32 2e 31 36 38 2e  31 37 38 2e 36 30 3a 35
 |192.168.178.60:5|
00000270  39 30 30 0a 20 31 33 32  34 20 20 72 65 6d 6f 74  |900. 1324
 remot|
00000280  65 2d 76 69 65 77 65 72  20 73 70 69 63 65 3a e2  |e-viewer
spice:.|
00000290  81 84 e2 81 84 31 39 32  2e 31 36 38 2e 31 37 38
 |.....192.168.178|
000002a0  2e 36 30 0a 20 31 33 32  35 20 20 72 65 6d 6f 74  |.60. 1325
 remot|
000002b0  65 2d 76 69 65 77 65 72  20 2d 76 20 73 70 69 63  |e-viewer -v
spic|
000002c0  65 3a e2 81 84 e2 81 84  31 39 32 2e 31 36 38 2e
 |e:......192.168.|
000002d0  31 37 38 2e 36 30 0a 20  31 33 32 37 20 20 72 65  |178.60. 1327
 re|
000002e0  6d 6f 74 65 2d 76 69 65  77 65 72 20 2d 76 20 73  |mote-viewer -v
s|
000002f0  70 69 63 65 3a e2 81 84  e2 81 84 31 39 32 2e 31
 |pice:......192.1|
00000300  36 38 2e 31 37 38 2e 36  30 0a 20 31 33 32 39 20  |68.178.60.
1329 |
00000310  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 2d  | remote-viewer
-|
00000320  76 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 31 39  |v
spice:......19|
00000330  32 2e 31 36 38 2e 31 37  38 2e 36 30 0a 20 31 33  |2.168.178.60.
13|
00000340  33 30 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |30
 remote-viewe|
00000350  72 20 2d 76 20 73 70 69  63 65 3a e2 81 84 e2 81  |r -v
spice:.....|
00000360  84 31 39 32 2e 31 36 38  2e 31 37 38 2e 36 30 3a
 |.192.168.178.60:|
00000370  35 39 30 30 0a 20 31 33  33 33 20 20 72 65 6d 6f  |5900. 1333
 remo|
00000380  74 65 2d 76 69 65 77 65  72 20 2d 76 20 73 70 69  |te-viewer -v
spi|
00000390  63 65 3a e2 81 84 e2 81  84 31 39 32 2e 31 36 38
 |ce:......192.168|
000003a0  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 33  |.178.51:5900.
13|
000003b0  33 34 20 20 76 69 72 74  2d 76 69 65 77 65 72 20  |34
 virt-viewer |
000003c0  2d 76 20 73 70 69 63 65  3a e2 81 84 e2 81 84 31  |-v
spice:......1|
000003d0  39 32 2e 31 36 38 2e 31  37 38 2e 35 31 3a 35 39
 |92.168.178.51:59|
000003e0  30 30 0a 20 31 33 34 30  20 20 72 65 6d 6f 74 65  |00. 1340
 remote|
000003f0  2d 76 69 65 77 65 72 20  2d 76 20 73 70 69 63 65  |-viewer -v
spice|
00000400  3a e2 81 84 e2 81 84 31  39 32 2e 31 36 38 2e 31
 |:......192.168.1|
00000410  37 38 2e 36 32 3a 35 39  30 30 0a 20 31 33 34 31  |78.62:5900.
1341|
00000420  20 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |
 remote-viewer |
00000430  73 70 69 63 65 3a e2 81  84 e2 81 84 31 39 32 2e
 |spice:......192.|
00000440  31 36 38 2e 31 37 38 2e  36 32 3a 35 39 30 30 0a
 |168.178.62:5900.|
00000450  20 31 33 35 30 20 20 72  65 6d 6f 74 65 2d 76 69  | 1350
 remote-vi|
00000460  65 77 65 72 20 73 70 69  63 65 3a e2 81 84 e2 81  |ewer
spice:.....|
00000470  84 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |.192.168.178.51:|
00000480  35 39 30 30 0a 20 31 33  35 31 20 20 72 65 6d 6f  |5900. 1351
 remo|
00000490  74 65 2d 76 69 65 77 65  72 20 73 70 69 63 65 3a  |te-viewer
spice:|
000004a0  e2 81 84 e2 81 84 31 39  32 2e 31 36 38 2e 31 37
 |......192.168.17|
000004b0  38 2e 36 32 3a 35 39 30  30 0a 20 31 33 35 35 20  |8.62:5900.
1355 |
000004c0  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 73  | remote-viewer
s|
000004d0  70 69 63 65 3a e2 81 84  e2 81 84 31 39 32 2e 31
 |pice:......192.1|
000004e0  36 38 2e 31 37 38 2e 36  32 3a 35 39 30 30 0a 20
 |68.178.62:5900. |
000004f0  31 33 35 37 20 20 72 65  6d 6f 74 65 2d 76 69 65  |1357
 remote-vie|
00000500  77 65 72 20 73 70 69 63  65 3a e2 81 84 e2 81 84  |wer
spice:......|
00000510  31 39 32 2e 31 36 38 2e  31 37 38 2e 36 32 3a 35
 |192.168.178.62:5|
00000520  39 30 30 0a 20 31 33 35  38 20 20 72 65 6d 6f 74  |900. 1358
 remot|
00000530  65 2d 76 69 65 77 65 72  20 73 70 69 63 65 3a e2  |e-viewer
spice:.|
00000540  81 84 e2 81 84 31 39 32  2e 31 36 38 2e 31 37 38
 |.....192.168.178|
00000550  2e 35 31 3a 35 39 30 30  0a 20 31 33 36 32 20 20  |.51:5900. 1362
 |
00000560  72 65 6d 6f 74 65 2d 76  69 65 77 65 72 20 73 70  |remote-viewer
sp|
00000570  69 63 65 3a e2 81 84 e2  81 84 31 39 32 2e 31 36
 |ice:......192.16|
00000580  38 2e 31 37 38 2e 35 31  3a 35 39 30 30 0a 20 31  |8.178.51:5900.
1|
00000590  33 37 33 20 20 72 65 6d  6f 74 65 2d 76 69 65 77  |373
 remote-view|
000005a0  65 72 20 73 70 69 63 65  3a e2 81 84 e2 81 84 31  |er
spice:......1|
000005b0  39 32 2e 31 36 38 2e 31  37 38 2e 35 31 3a 35 39
 |92.168.178.51:59|
000005c0  30 30 0a 20 31 33 37 34  20 20 72 65 6d 6f 74 65  |00. 1374
 remote|
000005d0  2d 76 69 65 77 65 72 20  73 70 69 63 65 3a e2 81  |-viewer
spice:..|
000005e0  84 e2 81 84 31 39 32 2e  31 36 38 2e 31 37 38 2e
 |....192.168.178.|
000005f0  35 31 3a 35 39 30 30 0a  20 31 33 37 36 20 20 72  |51:5900. 1376
 r|
00000600  65 6d 6f 74 65 2d 76 69  65 77 65 72 20 73 70 69  |emote-viewer
spi|
00000610  63 65 3a e2 81 84 e2 81  84 31 39 32 2e 31 36 38
 |ce:......192.168|
00000620  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 33  |.178.51:5900.
13|
00000630  37 37 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |77
 remote-viewe|
00000640  72 20 73 70 69 63 65 5c  3a e2 81 84 e2 81 84 31  |r
spice\:......1|
00000650  39 32 2e 31 36 38 2e 31  37 38 2e 35 31 3a 35 39
 |92.168.178.51:59|
00000660  30 30 0a 20 31 33 38 30  20 20 72 65 6d 6f 74 65  |00. 1380
 remote|
00000670  2d 76 69 65 77 65 72 20  73 70 69 63 65 5c 3a e2  |-viewer
spice\:.|
00000680  81 84 e2 81 84 31 39 32  2e 31 36 38 2e 31 37 38
 |.....192.168.178|
00000690  2e 35 31 3a 32 30 30 30  31 0a 20 31 33 38 31 20  |.51:20001.
1381 |
000006a0  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 73  | remote-viewer
s|
000006b0  70 69 63 65 5c 3a e2 81  84 e2 81 84 31 39 32 2e
 |pice\:......192.|
000006c0  31 36 38 2e 31 37 38 2e  35 31 0a 20 31 33 38 32  |168.178.51.
1382|
000006d0  20 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |
 remote-viewer |
000006e0  73 70 69 63 65 5c 3a e2  81 84 e2 81 84 31 39 32
 |spice\:......192|
000006f0  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
 |.168.178.51:5900|
00000700  0a 20 31 33 38 38 20 20  72 65 6d 6f 74 65 2d 76  |. 1388
 remote-v|
00000710  69 65 77 65 72 20 73 70  69 63 65 5c 3a e2 81 84  |iewer
spice\:...|
00000720  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
 |...192.168.178.5|
00000730  31 3a 35 39 30 31 0a 20  31 33 38 39 20 20 73 79  |1:5901. 1389
 sy|
00000740  73 74 65 6d 63 74 6c 20  65 6e 61 62 6c 65 20 73  |stemctl enable
s|
00000750  70 69 63 65 2d 76 64 61  67 65 6e 74 64 2e 73 65  |
pice-vdagentd.se|
00000760  72 76 69 63 65 0a 20 31  33 39 30 20 20 72 65 6d  |rvice. 1390
 rem|
00000770  6f 74 65 2d 76 69 65 77  65 72 20 73 70 69 63 65  |ote-viewer
spice|
00000780  5c 3a e2 81 84 e2 81 84  31 39 32 2e 31 36 38 2e
 |\:......192.168.|
00000790  31 37 38 2e 35 31 3a 35  39 30 30 0a 20 31 33 39  |178.51:5900.
139|
000007a0  31 20 20 72 65 6d 6f 74  65 2d 76 69 65 77 65 72  |1
 remote-viewer|
000007b0  20 73 70 69 63 65 5c 3a  e2 81 84 e2 81 84 31 39  |
spice\:......19|
000007c0  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
000007d0  31 0a 20 31 33 39 32 20  20 72 65 6d 6f 74 65 2d  |1. 1392
 remote-|
000007e0  76 69 65 77 65 72 20 73  70 69 63 65 5c 3a e2 81  |viewer
spice\:..|
000007f0  84 e2 81 84 31 39 32 2e  31 36 38 2e 31 37 38 2e
 |....192.168.178.|
00000800  35 31 3a 35 39 30 30 0a  20 31 33 39 33 20 20 72  |51:5900. 1393
 r|
00000810  65 6d 6f 74 65 2d 76 69  65 77 65 72 20 73 70 69  |emote-viewer
spi|
00000820  63 65 5c 3a e2 81 84 e2  81 84 31 39 32 2e 31 36
 |ce\:......192.16|
00000830  38 2e 31 37 38 2e 35 31  3a 32 30 30 30 31 0a 20
 |8.178.51:20001. |
00000840  31 33 39 34 20 20 72 65  6d 6f 74 65 2d 76 69 65  |1394
 remote-vie|
00000850  77 65 72 20 73 70 69 63  65 3a e2 81 84 e2 81 84  |wer
spice:......|
00000860  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 32
 |192.168.178.51:2|
00000870  30 30 30 31 0a 20 31 33  39 37 20 20 72 65 6d 6f  |0001. 1397
 remo|
00000880  74 65 2d 76 69 65 77 65  72 20 73 70 69 63 65 3a  |te-viewer
spice:|
00000890  e2 81 84 e2 81 84 31 39  32 2e 31 36 38 2e 31 37
 |......192.168.17|
000008a0  38 2e 35 31 3a 32 30 30  30 31 0a 20 31 33 39 38  |8.51:20001.
1398|
000008b0  20 20 73 75 64 6f 20 61  70 74 2d 67 65 74 20 69  |  sudo apt-get
i|
000008c0  6e 73 74 61 6c 6c 20 73  70 69 63 65 2d 67 74 6b  |nstall
spice-gtk|
000008d0  0a 20 31 33 39 39 20 20  72 65 6d 6f 74 65 2d 76  |. 1399
 remote-v|
000008e0  69 65 77 65 72 20 73 70  69 63 65 3a e2 81 84 e2  |iewer
spice:....|
000008f0  81 84 31 39 32 2e 31 36  38 2e 31 37 38 2e 35 31
 |..192.168.178.51|
00000900  3a 32 30 30 30 31 0a 20  31 34 30 32 20 20 72 65  |:20001. 1402
 re|
00000910  6d 6f 74 65 2d 76 69 65  77 65 72 20 73 70 69 63  |mote-viewer
spic|
00000920  65 3a e2 81 84 e2 81 84  31 39 32 2e 31 36 38 2e
 |e:......192.168.|
00000930  31 37 38 2e 35 31 3a 32  30 30 30 31 0a 20 31 34  |178.51:20001.
14|
00000940  30 33 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |03
 remote-viewe|
00000950  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 31 39  |r
spice:......19|
00000960  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
00000970  30 0a 20 31 34 31 31 20  20 72 65 6d 6f 74 65 2d  |0. 1411
 remote-|
00000980  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer
spice:...|
00000990  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
 |...192.168.178.5|
000009a0  31 3a 35 39 30 30 0a 20  31 34 31 34 20 20 72 65  |1:5900. 1414
 re|
000009b0  6d 6f 74 65 2d 76 69 65  77 65 72 20 73 70 69 63  |mote-viewer
spic|
000009c0  65 3a e2 81 84 e2 81 84  31 39 32 2e 31 36 38 2e
 |e:......192.168.|
000009d0  31 37 38 2e 35 31 3a 35  39 30 30 0a 20 31 34 31  |178.51:5900.
141|
000009e0  38 20 20 73 75 64 6f 20  72 65 6d 6f 74 65 2d 76  |8  sudo
remote-v|
000009f0  69 65 77 65 72 20 73 70  69 63 65 3a e2 81 84 e2  |iewer
spice:....|
00000a00  81 84 31 39 32 2e 31 36  38 2e 31 37 38 2e 35 31
 |..192.168.178.51|
00000a10  3a 35 39 30 30 0a 20 31  34 32 33 20 20 76 69 72  |:5900. 1423
 vir|
00000a20  74 2d 76 69 65 77 65 72  20 2d 63 20 73 70 69 63  |t-viewer -c
spic|
00000a30  65 3a 2f 2f 31 39 32 2e  31 36 38 2e 31 37 38 2e  |e://
192.168.178.|
00000a40  35 31 3a 35 39 30 30 0a  20 31 34 32 35 20 20 76  |51:5900. 1425
 v|
00000a50  69 72 74 2d 76 69 65 77  65 72 20 73 70 69 63 65  |irt-viewer
spice|
00000a60  3a 2f 2f 73 65 72 76 65  72 40 31 39 32 2e 31 36
 |://server@192.16|
00000a70  38 2e 31 37 38 2e 35 31  3a 35 39 30 30 0a 20 31  |8.178.51:5900.
1|
00000a80  34 32 36 20 20 73 75 64  6f 20 76 69 72 74 2d 76  |426  sudo
virt-v|
00000a90  69 65 77 65 72 20 73 70  69 63 65 3a 2f 2f 73 65  |iewer
spice://se|
00000aa0  72 76 65 72 40 31 39 32  2e 31 36 38 2e 31 37 38
 |rver@192.168.178|
00000ab0  2e 35 31 3a 35 39 30 30  0a 20 31 34 32 37 20 20  |.51:5900. 1427
 |
00000ac0  73 75 64 6f 20 72 65 6d  6f 74 65 2d 76 69 65 77  |sudo
remote-view|
00000ad0  65 72 20 73 70 69 63 65  3a 2f 2f 73 65 72 76 65  |er
spice://serve|
00000ae0  72 40 31 39 32 2e 31 36  38 2e 31 37 38 2e 35 31  |
r@192.168.178.51|
00000af0  3a 35 39 30 30 0a 20 31  34 32 38 20 20 72 65 6d  |:5900. 1428
 rem|
00000b00  6f 74 65 2d 76 69 65 77  65 72 20 73 70 69 63 65  |ote-viewer
spice|
00000b10  3a e2 81 84 e2 81 84 31  39 32 2e 31 36 38 2e 31
 |:......192.168.1|
00000b20  37 38 2e 35 31 3a 35 39  30 30 0a 20 31 34 33 36  |78.51:5900.
1436|
00000b30  20 20 73 75 64 6f 20 72  65 6d 6f 74 65 2d 76 69  |  sudo
remote-vi|
00000b40  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 73 65 72  |ewer
spice://ser|
00000b50  76 65 72 40 31 39 32 2e  31 36 38 2e 31 37 38 2e  |
ver@192.168.178.|
00000b60  35 31 3a 35 39 30 30 0a  20 31 34 36 37 20 20 72  |51:5900. 1467
 r|
00000b70  65 6d 6f 74 65 2d 76 69  65 77 65 72 20 73 70 69  |emote-viewer
spi|
00000b80  63 65 3a e2 81 84 e2 81  84 31 39 32 2e 31 36 38
 |ce:......192.168|
00000b90  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 34  |.178.51:5900.
14|
00000ba0  36 38 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |68
 remote-viewe|
00000bb0  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 73 65  |r
spice:......se|
00000bc0  72 76 65 72 40 31 39 32  2e 31 36 38 2e 31 37 38
 |rver@192.168.178|
00000bd0  2e 35 31 3a 35 39 30 30  0a 20 31 34 36 39 20 20  |.51:5900. 1469
 |
00000be0  73 75 64 6f 20 72 65 6d  6f 74 65 2d 76 69 65 77  |sudo
remote-view|
00000bf0  65 72 20 73 70 69 63 65  3a e2 81 84 e2 81 84 73  |er
spice:......s|
00000c00  65 72 76 65 72 40 31 39  32 2e 31 36 38 2e 31 37
 |erver@192.168.17|
00000c10  38 2e 35 31 3a 35 39 30  30 0a 20 31 34 37 30 20  |8.51:5900.
1470 |
00000c20  20 73 75 64 6f 20 72 65  6d 6f 74 65 2d 76 69 65  | sudo
remote-vie|
00000c30  77 65 72 20 2d 76 20 20  73 70 69 63 65 3a e2 81  |wer -v
 spice:..|
00000c40  84 e2 81 84 73 65 72 76  65 72 40 31 39 32 2e 31
 |....server@192.1|
00000c50  36 38 2e 31 37 38 2e 35  31 3a 35 39 30 30 0a 20
 |68.178.51:5900. |
00000c60  31 34 37 32 20 20 73 75  64 6f 20 72 65 6d 6f 74  |1472  sudo
remot|
00000c70  65 2d 76 69 65 77 65 72  20 2d 76 20 20 73 70 69  |e-viewer -v
 spi|
00000c80  63 65 3a e2 81 84 e2 81  84 73 65 72 76 65 72 40
 |ce:......server@|
00000c90  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 35
 |192.168.178.51:5|
00000ca0  39 30 30 0a 20 31 34 37  33 20 20 73 75 64 6f 20  |900. 1473
 sudo |
00000cb0  72 65 6d 6f 74 65 2d 76  69 65 77 65 72 20 20 73  |remote-viewer
 s|
00000cc0  70 69 63 65 3a e2 81 84  e2 81 84 73 65 72 76 65
 |pice:......serve|
00000cd0  72 40 31 39 32 2e 31 36  38 2e 31 37 38 2e 35 31  |
r@192.168.178.51|
00000ce0  3a 35 39 30 30 0a 20 31  34 37 35 20 20 73 75 64  |:5900. 1475
 sud|
00000cf0  6f 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |o
remote-viewer |
00000d00  20 73 70 69 63 65 3a e2  81 84 e2 81 84 73 65 72  |
spice:......ser|
00000d10  76 65 72 40 31 39 32 2e  31 36 38 2e 31 37 38 2e  |
ver@192.168.178.|
00000d20  35 31 3a 35 39 30 30 0a  20 31 34 37 36 20 20 73  |51:5900. 1476
 s|
00000d30  75 64 6f 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |udo
remote-viewe|
00000d40  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 31 39  |r
spice:......19|
00000d50  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
00000d60  30 0a 20 31 34 37 37 20  20 72 65 6d 6f 74 65 2d  |0. 1477
 remote-|
00000d70  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer
spice:...|
00000d80  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
 |...192.168.178.5|
00000d90  31 3a 35 39 30 30 0a 20  31 34 37 39 20 20 73 70  |1:5900. 1479
 sp|
00000da0  69 63 65 2d 76 64 61 67  65 6e 74 0a 20 31 34 38  |ice-vdagent.
148|
00000db0  30 20 20 73 70 69 63 65  2d 76 64 61 67 65 6e 74  |0
 spice-vdagent|
00000dc0  20 2d 2d 68 65 6c 70 0a  20 31 34 38 31 20 20 72  | --help. 1481
 r|
00000dd0  65 6d 6f 74 65 2d 76 69  65 77 65 72 20 73 70 69  |emote-viewer
spi|
00000de0  63 65 3a e2 81 84 e2 81  84 31 39 32 2e 31 36 38
 |ce:......192.168|
00000df0  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 34  |.178.51:5900.
14|
00000e00  38 32 20 20 6b 69 6c 6c  61 6c 6c 20 2d 39 20 73  |82  killall -9
s|
00000e10  70 69 63 65 2d 76 64 61  67 0a 20 31 34 38 33 20  |pice-vdag.
1483 |
00000e20  20 6b 69 6c 6c 61 6c 6c  20 2d 39 20 73 70 69 63  | killall -9
spic|
00000e30  65 2d 76 64 61 67 65 6e  74 0a 20 31 34 38 34 20  |e-vdagent.
1484 |
00000e40  20 73 65 72 76 69 63 65  20 73 74 61 74 75 73 20  | service
status |
00000e50  73 70 69 63 65 2d 76 64  61 67 65 6e 74 0a 20 31  |spice-vdagent.
1|
00000e60  34 38 35 20 20 73 65 72  76 69 63 65 20 73 74 61  |485  service
sta|
00000e70  74 75 73 20 73 70 69 63  65 2d 76 64 61 67 65 6e  |tus
spice-vdagen|
00000e80  74 64 0a 20 31 34 38 36  20 20 73 70 69 63 65 2d  |td. 1486
 spice-|
00000e90  76 64 61 67 65 6e 74 64  0a 20 31 34 38 39 20 20  |vdagentd. 1489
 |
00000ea0  72 65 6d 6f 74 65 2d 76  69 65 77 65 72 20 73 70  |remote-viewer
sp|
00000eb0  69 63 65 3a e2 81 84 e2  81 84 31 39 32 2e 31 36
 |ice:......192.16|
00000ec0  38 2e 31 37 38 2e 35 31  3a 35 39 30 30 0a 20 31  |8.178.51:5900.
1|
00000ed0  34 39 30 20 20 73 75 64  6f 20 72 65 6d 6f 74 65  |490  sudo
remote|
00000ee0  2d 76 69 65 77 65 72 20  20 73 70 69 63 65 3a e2  |-viewer
 spice:.|
00000ef0  81 84 e2 81 84 73 65 72  76 65 72 40 31 39 32 2e
 |.....server@192.|
00000f00  31 36 38 2e 31 37 38 2e  35 31 3a 35 39 30 30 0a
 |168.178.51:5900.|
00000f10  20 31 34 39 32 20 20 73  75 64 6f 20 72 65 6d 6f  | 1492  sudo
remo|
00000f20  74 65 2d 76 69 65 77 65  72 20 73 70 69 63 65 3a  |te-viewer
spice:|
00000f30  e2 81 84 e2 81 84 73 65  72 76 65 72 40 31 39 32
 |......server@192|
00000f40  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
 |.168.178.51:5900|
00000f50  0a 20 31 34 39 33 20 20  72 65 6d 6f 74 65 2d 76  |. 1493
 remote-v|
00000f60  69 65 77 65 72 20 73 70  69 63 65 3a e2 81 84 e2  |iewer
spice:....|
00000f70  81 84 73 65 72 76 65 72  40 31 39 32 2e 31 36 38
 |..server@192.168|
00000f80  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 34  |.178.51:5900.
14|
00000f90  39 34 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |94
 remote-viewe|
00000fa0  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 31 39  |r
spice:......19|
00000fb0  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
00000fc0  30 0a 20 31 34 39 35 20  20 73 75 64 6f 20 72 65  |0. 1495  sudo
re|
00000fd0  6d 6f 74 65 2d 76 69 65  77 65 72 20 73 70 69 63  |mote-viewer
spic|
00000fe0  65 3a e2 81 84 e2 81 84  73 65 72 76 65 72 40 31
 |e:......server@1|
00000ff0  39 32 2e 31 36 38 2e 31  37 38 2e 35 31 3a 35 39
 |92.168.178.51:59|
00001000  30 30 0a 20 31 34 39 36  20 20 73 75 64 6f 20 72  |00. 1496  sudo
r|
00001010  65 6d 6f 74 65 2d 76 69  65 77 65 72 20 73 70 69  |emote-viewer
spi|
00001020  63 65 3a e2 81 84 e2 81  84 73 65 72 76 65 72 40
 |ce:......server@|
00001030  31 39 32 2e 31 36 38 2e  31 37 38 2e 36 34 3a 35
 |192.168.178.64:5|
00001040  39 30 30 0a 20 31 34 39  37 20 20 73 75 64 6f 20  |900. 1497
 sudo |
00001050  72 65 6d 6f 74 65 2d 76  69 65 77 65 72 20 73 70  |remote-viewer
sp|
00001060  69 63 65 3a e2 81 84 e2  81 84 73 65 72 76 65 72
 |ice:......server|
00001070  40 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |@192.168.178.51:|
00001080  35 39 30 30 0a 20 31 34  39 38 20 20 73 75 64 6f  |5900. 1498
 sudo|
00001090  20 76 69 72 74 2d 76 69  65 77 65 72 20 73 70 69  | virt-viewer
spi|
000010a0  63 65 3a e2 81 84 e2 81  84 73 65 72 76 65 72 40
 |ce:......server@|
000010b0  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 35
 |192.168.178.51:5|
000010c0  39 30 30 0a 20 31 34 39  39 20 20 73 75 64 6f 20  |900. 1499
 sudo |
000010d0  72 65 6d 6f 74 65 2d 76  69 65 77 65 72 20 73 70  |remote-viewer
sp|
000010e0  69 63 65 3a e2 81 84 e2  81 84 73 65 72 76 65 72
 |ice:......server|
000010f0  40 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |@192.168.178.51:|
00001100  35 39 30 30 0a 20 31 35  30 32 20 20 76 69 72 74  |5900. 1502
 virt|
00001110  2d 76 69 65 77 65 72 20  2d 63 20 73 70 69 63 65  |-viewer -c
spice|
00001120  20 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a  |
192.168.178.51:|
00001130  35 39 30 30 0a 20 31 35  30 33 20 20 76 69 72 74  |5900. 1503
 virt|
00001140  2d 76 69 65 77 65 72 20  2d 63 20 73 70 69 63 65  |-viewer -c
spice|
00001150  20 73 70 69 63 65 3a 2f  2f 31 39 32 2e 31 36 38  |
spice://192.168|
00001160  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 35  |.178.51:5900.
15|
00001170  30 35 20 20 76 69 72 74  2d 76 69 65 77 65 72 20  |05
 virt-viewer |
00001180  2d 63 20 73 70 69 63 65  3a 2f 2f 31 39 32 2e 31  |-c
spice://192.1|
00001190  36 38 2e 31 37 38 2e 35  31 3a 35 39 30 30 0a 20
 |68.178.51:5900. |
000011a0  31 35 31 34 20 20 76 69  72 74 2d 76 69 65 77 65  |1514
 virt-viewe|
000011b0  72 20 2d 63 20 73 70 69  63 65 3a 2f 2f 2f 31 39  |r -c
spice:///19|
000011c0  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
000011d0  30 20 77 69 6e 31 30 0a  20 31 35 31 35 20 20 76  |0 win10. 1515
 v|
000011e0  69 72 74 2d 76 69 65 77  65 72 20 73 70 69 63 65  |irt-viewer
spice|
000011f0  3a 2f 2f 2f 31 39 32 2e  31 36 38 2e 31 37 38 2e  |:///
192.168.178.|
00001200  35 31 3a 35 39 30 30 20  77 69 6e 31 30 0a 20 31  |51:5900 win10.
1|
00001210  35 31 36 20 20 76 69 72  74 2d 76 69 65 77 65 72  |516
 virt-viewer|
00001220  20 73 70 69 63 65 3a 2f  2f 2f 31 39 32 2e 31 36  |
spice:///192.16|
00001230  38 2e 31 37 38 2e 35 31  3a 35 39 30 30 20 0a 20  |8.178.51:5900
. |
00001240  31 35 32 35 20 20 73 75  64 6f 20 76 69 72 74 2d  |1525  sudo
virt-|
00001250  76 69 65 77 65 72 20 73  70 69 63 65 3a 2f 2f 72  |viewer
spice://r|
00001260  6f 6f 74 40 31 39 32 2e  31 36 38 2e 31 37 38 2e  |
oot@192.168.178.|
00001270  35 31 3a 35 39 30 30 0a  20 31 35 32 36 20 20 76  |51:5900. 1526
 v|
00001280  69 72 74 2d 76 69 65 77  65 72 20 73 70 69 63 65  |irt-viewer
spice|
00001290  3a 2f 2f 72 6f 6f 74 40  31 39 32 2e 31 36 38 2e
 |://root@192.168.|
000012a0  31 37 38 2e 35 31 3a 35  39 30 30 0a 20 31 35 32  |178.51:5900.
152|
000012b0  37 20 20 72 65 6d 6f 76  65 2d 76 69 65 77 65 72  |7
 remove-viewer|
000012c0  20 73 70 69 63 65 3a 2f  2f 72 6f 6f 74 40 31 39  |
spice://root@19|
000012d0  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
000012e0  30 0a 20 31 35 32 38 20  20 72 65 6d 6f 74 65 2d  |0. 1528
 remote-|
000012f0  76 69 65 77 65 72 20 73  70 69 63 65 3a 2f 2f 72  |viewer
spice://r|
00001300  6f 6f 74 40 31 39 32 2e  31 36 38 2e 31 37 38 2e  |
oot@192.168.178.|
00001310  35 31 3a 35 39 30 30 0a  20 31 35 32 39 20 20 73  |51:5900. 1529
 s|
00001320  75 64 6f 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |udo
remote-viewe|
00001330  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 73 65  |r
spice:......se|
00001340  72 76 65 72 40 31 39 32  2e 31 36 38 2e 31 37 38
 |rver@192.168.178|
00001350  2e 35 31 3a 35 39 30 30  0a 20 31 35 33 31 20 20  |.51:5900. 1531
 |
00001360  73 75 64 6f 20 72 65 6d  6f 74 65 2d 76 69 65 77  |sudo
remote-view|
00001370  65 72 20 73 70 69 63 65  3a e2 81 84 e2 81 84 73  |er
spice:......s|
00001380  65 72 76 65 72 40 31 39  32 2e 31 36 38 2e 31 37
 |erver@192.168.17|
00001390  38 2e 35 31 3a 35 39 30  30 0a 20 31 35 33 34 20  |8.51:5900.
1534 |
000013a0  20 73 75 64 6f 20 72 65  6d 6f 74 65 2d 76 69 65  | sudo
remote-vie|
000013b0  77 65 72 20 73 70 69 63  65 3a e2 81 84 e2 81 84  |wer
spice:......|
000013c0  73 65 72 76 65 72 40 31  39 32 2e 31 36 38 2e 31
 |server@192.168.1|
000013d0  37 38 2e 35 31 3a 35 39  30 30 0a 20 31 35 34 31  |78.51:5900.
1541|
000013e0  20 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |
 remote-viewer |
000013f0  73 70 69 63 65 3a e2 81  84 e2 81 84 72 6f 6f 74
 |spice:......root|
00001400  40 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |@192.168.178.51:|
00001410  35 39 30 30 0a 20 31 35  34 32 20 20 73 75 64 6f  |5900. 1542
 sudo|
00001420  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 73  | remote-viewer
s|
00001430  70 69 63 65 3a e2 81 84  e2 81 84 72 6f 6f 74 40
 |pice:......root@|
00001440  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 35
 |192.168.178.51:5|
00001450  39 30 30 0a 20 31 35 34  33 20 20 72 65 6d 6f 74  |900. 1543
 remot|
00001460  65 2d 76 69 65 77 65 72  20 73 70 69 63 65 3a e2  |e-viewer
spice:.|
00001470  81 84 e2 81 84 72 6f 6f  74 40 31 39 32 2e 31 36
 |.....root@192.16|
00001480  38 2e 31 37 38 2e 35 31  3a 35 39 30 30 0a 20 31  |8.178.51:5900.
1|
00001490  35 34 34 20 20 72 65 6d  6f 74 65 2d 76 69 65 77  |544
 remote-view|
000014a0  65 72 20 73 70 69 63 65  3a e2 81 84 e2 81 84 31  |er
spice:......1|
000014b0  39 32 2e 31 36 38 2e 31  37 38 2e 35 31 3a 35 39
 |92.168.178.51:59|
000014c0  30 30 0a 20 31 35 34 35  20 20 72 65 6d 6f 74 65  |00. 1545
 remote|
000014d0  2d 76 69 65 77 65 72 20  73 70 69 63 65 3a e2 81  |-viewer
spice:..|
000014e0  84 e2 81 84 72 6f 6f 74  40 31 39 32 2e 31 36 38
 |....root@192.168|
000014f0  2e 31 37 38 2e 35 31 3a  35 39 30 30 0a 20 31 35  |.178.51:5900.
15|
00001500  34 36 20 20 72 65 6d 6f  74 65 2d 76 69 65 77 65  |46
 remote-viewe|
00001510  72 20 73 70 69 63 65 3a  e2 81 84 e2 81 84 31 39  |r
spice:......19|
00001520  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
 |2.168.178.51:590|
00001530  30 0a 20 31 35 34 38 20  20 72 65 6d 6f 74 65 2d  |0. 1548
 remote-|
00001540  76 69 65 77 65 72 20 2d  2d 73 70 69 63 65 2d 64  |viewer
--spice-d|
00001550  65 62 75 67 20 73 70 69  63 65 3a e2 81 84 e2 81  |ebug
spice:.....|
00001560  84 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |.192.168.178.51:|
00001570  35 39 30 30 0a 20 31 35  35 31 20 20 73 75 64 6f  |5900. 1551
 sudo|
00001580  20 72 65 6d 6f 74 65 2d  76 69 65 77 65 72 20 73  | remote-viewer
s|
00001590  70 69 63 65 3a e2 81 84  e2 81 84 73 65 72 76 65
 |pice:......serve|
000015a0  72 40 31 39 32 2e 31 36  38 2e 31 37 38 2e 35 31  |
r@192.168.178.51|
000015b0  3a 35 39 30 30 0a 20 31  35 35 32 20 20 73 75 64  |:5900. 1552
 sud|
000015c0  6f 20 72 65 6d 6f 74 65  2d 76 69 65 77 65 72 20  |o
remote-viewer |
000015d0  73 70 69 63 65 3a e2 81  84 e2 81 84 73 65 72 76
 |spice:......serv|
000015e0  65 72 40 31 39 32 2e 31  36 38 2e 31 37 38 2e 35  |
er@192.168.178.5|
000015f0  31 3a 35 39 30 30 20 2d  2d 73 70 69 63 65 2d 64  |1:5900
--spice-d|
00001600  65 62 75 67 0a 20 31 35  35 33 20 20 72 65 6d 6f  |ebug. 1553
 remo|
00001610  74 65 2d 76 69 65 77 65  72 20 2d 2d 73 70 69 63  |te-viewer
--spic|
00001620  65 2d 64 65 62 75 67 0a  20 31 35 36 30 20 20 4c  |e-debug. 1560
 L|
00001630  41 4e 47 3d 43 20 72 65  6d 6f 74 65 2d 76 69 65  |ANG=3DC
remote-vie|
00001640  77 65 72 20 73 70 69 63  65 3a 2f 2f 31 39 32 2e  |wer
spice://192.|
00001650  31 36 38 2e 31 37 38 2e  35 31 3a 35 39 30 30 0a
 |168.178.51:5900.|
00001660  20 31 35 36 31 20 20 72  65 6d 6f 74 65 2d 76 69  | 1561
 remote-vi|
00001670  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 31 39 32  |ewer
spice://192|
00001680  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
 |.168.178.51:5900|
00001690  0a 20 31 35 36 32 20 20  73 70 69 63 65 3a 2f 2f  |. 1562
 spice://|
000016a0  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 35
 |192.168.178.51:5|
000016b0  39 30 30 0a 20 31 35 36  33 20 20 72 65 6d 6f 74  |900. 1563
 remot|
000016c0  65 2d 76 69 65 77 65 72  20 73 70 69 63 65 3a 2f  |e-viewer
spice:/|
000016d0  2f 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |/192.168.178.51:|
000016e0  35 39 30 30 0a 20 31 35  36 34 20 20 76 69 72 74  |5900. 1564
 virt|
000016f0  2d 76 69 65 77 65 72 20  73 70 69 63 65 3a 2f 2f  |-viewer
spice://|
00001700  31 39 32 2e 31 36 38 2e  31 37 38 2e 35 31 3a 35
 |192.168.178.51:5|
00001710  39 30 30 0a 20 31 35 36  36 20 20 72 65 6d 6f 74  |900. 1566
 remot|
00001720  65 2d 76 69 65 77 65 72  20 73 70 69 63 65 3a 2f  |e-viewer
spice:/|
00001730  2f 31 39 32 2e 31 36 38  2e 31 37 38 2e 35 31 3a
 |/192.168.178.51:|
00001740  35 39 30 30 0a 20 31 35  37 31 20 20 73 75 64 6f  |5900. 1571
 sudo|
00001750  20 68 69 73 74 6f 72 79  20 7c 20 67 72 65 70 20  | history |
grep |
00001760  73 70 69 63 65 20 7c 20  68 65 78 64 75 6d 70 20  |spice |
hexdump |
00001770  2d 43 0a 20 31 35 37 34  20 20 68 69 73 74 6f 72  |-C. 1574
 histor|
00001780  79 20 7c 20 67 72 65 70  20 73 70 69 63 65 20 7c  |y | grep spice
||
00001790  20 68 65 78 64 75 6d 70  20 2d 43 0a              | hexdump -C.|
0000179c
stony@Aperture-Science:~$

For now I will fade into the shadow of userdom again :)

Stefan

Am Fr., 18. Nov. 2022 um 11:25 Uhr schrieb Frediano Ziglio <
freddy77@gmail.com>:

> Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein
> <linuxstony@gmail.com> ha scritto:
> >
> > Hi Frediano, Hi List,
> >
> > after I was able to start the virtual machine with the GUI I tried your
> command
> >
> > LANG=3DC remote-viewer spice://192.168.178.51:5900
> >
> > and it started right up into the virtual machine.
> >
> > HOWEVER
> >
> > even
> >
> > remote-viewer spice://192.168.178.51:5900
> >
> > now opens the virtual machine - without problems. (Yeah - i am stunned
> myself)
> >
> > I slept over it then tried again today - thinking it never worked again
> the day after...
> >
> > Result is that I am able to open up the VM just fine....
> >
> > This is the worst - something works without changing anything so I have
> no chance of knowing what the problem is/was in the first place
> >
> > At a loss for words,
> >
> > Stefan
> >
>
> Well, problem solved :-)
>
> I would check with a command like "history | grep spice | hexdump -C"
> (you can post the output) for some weird input. The errors you
> reported are basically (or at least they should) parsing errors for
> the URI you passed.
>
> Frediano
>
>
>
> > Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <
> linuxstony@gmail.com>:
> >>
> >> Some details:
> >> Operating System: Kubuntu 22.04
> >> KDE Plasma Version: 5.24.6
> >> KDE Frameworks Version: 5.92.0
> >> Qt Version: 5.15.3
> >> Kernel Version: 5.15.0-53-generic (64-bit)
> >> Graphics Platform: X11
> >> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
> >> Memory: 15.6 GiB of RAM
> >> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
> >>
> >> Opening a Konsole "bash":
> >>
> >> Konsole
> >> Version 21.12.3
> >>
> >>
> >> Locale:
> >>
> >> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D
> LC_CTYPE=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UTF-=
8"
> LC_COLLATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8"
> LC_MESSAGES=3D"de_DE.UTF-8" LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.UTF=
-8"
> LC_ADDRESS=3D"de_DE.UTF-8" LC_TELEPHONE=3D"de_DE.UTF-8"
> LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIFICATION=3D"de_DE.UTF-8" LC_ALL=
=3D
> >>
> >> I will try to open it today at noon - during my lunch break.
> >> (ATM I am glad it works because i gotta work from home and this
> windows-machine is the only way to connect to the Server in my company fo=
r
> me)
> >>
> >> I will get back to you in approximately two hours.
> >>
> >> Stefan
> >>
> >> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
> >>>
> >>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
> >>> <linuxstony@gmail.com> ha scritto:
> >>> >
> >>> > Hi,
> >>> >
> >>> > no this is the normal forward-slash with "shift+7" on the german
> keyboard - googlemail messed it up translating it to something else.
> >>> > The URL  is normally typed.
> >>> >
> >>> > This is really weird and I will try to help you as much as I can to
> get to the bottom of it.
> >>> >
> >>> > Stefan
> >>> >
> >>>
> >>> That's pretty weird. That code has been there for ages. I tried but n=
o
> >>> problems for me.
> >>> This operating system and version are you using?
> >>> Which shell?
> >>> Maybe it's the locale? Try launching something like "LANG=3DC
> >>> remote-viewer spice://192.168.178.51:5900" (LANG environment change)
> >>>
> >>> Frediano
> >>>
> >>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
> >>> >>
> >>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
> >>> >> <linuxstony@gmail.com> ha scritto:
> >>> >> >
> >>> >> > Hello again,
> >>> >> >
> >>> >> > so - yesterday I worked from home - as I wrote I was able to
> connect by specifying the user root with "remote-viewer spice://
> root@192.168.178.51:5900"
> >>> >> >
> >>> >> > Today I want to connect the exact same way (yesterday i simply
> closed the remote-viewer window and the server keept on running so the
> windows-VM was running the whole night) - and I can not connect.
> >>> >> >
> >>> >> > Error Message on the console  "** (remote-viewer:6146): CRITICAL
> **: 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL=
'
> failed"
> >>> >> > Error Message on the popup says translated: Connectiontype could
> not be determined by URI.
> >>> >> >
> >>> >>
> >>> >> Hi,
> >>> >>    That means that the code was not able to parse the URI.
> >>> >>
> >>> >> > IP of the server itself is 192.168.178.51
> >>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
> >>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
> >>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.=
51:5900 does not
> produce a more verbose output :(
> >>> >> >
> >>> >>
> >>> >> In this example you are not using ASCII slashes (//), maybe that's
> the problem.
> >>> >>
> >>> >> > Update in the meantime
> >>> >> > But maybe this is helpful to you:
> >>> >> >
> >>> >> > I simply started "remote-viewer --spice-debug"
> >>> >> > Then i got the GUI (which i wasnt even aware it existed).
> >>> >> >
> >>> >> > When I choose the same entry on that list - I AM able to connect=
.
> >>> >> >
> >>> >> > So the error only exists only when I try to connect via command
> line?! (This is when I am able to connect tomorrow via GUI ;) )
> >>> >> >
> >>> >> > Shouldn't this be the same ?
> >>> >> >
> >>> >> > I mabe I can help - maybe this is indeed a bug?
> >>> >> >
> >>> >> > Stefan
> >>> >> >
> >>> >>
> >>> >> Frediano
> >>> >>
> >>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
> victortoso@redhat.com>:
> >>> >> >>
> >>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein
> wrote:
> >>> >> >> > I appreciate the time to answer me.
> >>> >> >> >
> >>> >> >> > In the meantime (out of desperation because i needed the
> virtualmachine for
> >>> >> >> > work) I gave it a go with specifying root as user and not the
> servers
> >>> >> >> > username "server".
> >>> >> >> >
> >>> >> >> > I was able to connect to the virtual Windows10 installation
> with
> >>> >> >> >
> >>> >> >> > remote-viewer spice://root@192.168.178.51:5900
> >>> >> >>
> >>> >> >> Cool
> >>> >> >>
> >>> >> >> > But again - then I dont unterstand why it worked as user and
> >>> >> >> > later on with specifying the user later on (which doesn't wor=
k
> >>> >> >> > right now anymore)
> >>> >> >> >
> >>> >> >> > So it is a permissions problem on my side and I successfully
> >>> >> >> > wasted your time. :/
> >>> >> >> >
> >>> >> >> > Sorry about that.
> >>> >> >>
> >>> >> >> Don't worry about that. Happy to hear it worked.
> >>> >> >>
> >>> >> >> >
> >>> >> >> > This happens when "users" try to play with the big boys toys =
:D
> >>> >> >> >
> >>> >> >> > Have a nice day you all and thanks for your time.
> >>> >> >>
> >>> >> >> You too.
> >>> >> >> Cheers,
> >>> >> >>
> >>> >> >> >
> >>> >> >> > Stefan
> >>> >> >> >
> >>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> >>> >> >> > victortoso@redhat.com>:
> >>> >> >> >
> >>> >> >> > > Hi Stefan,
> >>> >> >> > >
> >>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstei=
n
> wrote:
> >>> >> >> > > > Hello developers,
> >>> >> >> > > >
> >>> >> >> > > > I can imagine that this will be an annoying question for
> you -
> >>> >> >> > > > so I apologize in advance.
> >>> >> >> > > >
> >>> >> >> > > > I am a user - with a longer history with linux BUT i am
> >>> >> >> > > > completely new to virtualization.
> >>> >> >> > > > Due to the fact that I got a server donated to me I wante=
d
> to
> >>> >> >> > > > give it a go and it worked like a charm.
> >>> >> >> > > >
> >>> >> >> > > > Installed virt-manager, installed Windows10  connected wi=
th
> >>> >> >> > > > virt-manager - absolutely no problem.
> >>> >> >> > > >
> >>> >> >> > > > Due to the fact that I need dual monitors I learned that =
I
> >>> >> >> > > > could add another display and connect with spice - and it
> >>> >> >> > > > worked immediately.
> >>> >> >> > > >
> >>> >> >> > > > BUT - without me changing anything (consciously) I wasn't
> able
> >>> >> >> > > > to connect to the virtual machine the next week.
> >>> >> >> > > >
> >>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI
> ermittelt werden"
> >>> >> >> > > > (Connection type could not be determined by URI)
> >>> >> >> > > >
> >>> >> >> > > > Then i tried to connect with sudo and specifying the user
> in
> >>> >> >> > > > the command line and it once again connected:
> >>> >> >> > > >
> >>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.16=
8.178.51:5900
> >>> >> >> > >
> >>> >> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.51
> and
> >>> >> >> > > the port for the VM is 5900, then try
> >>> >> >> > >
> >>> >> >> > >     remote-viewer spice://192.168.178.51:5900
> >>> >> >> > >
> >>> >> >> > > If server is a dns that can be resolved, should be fine to
> use it
> >>> >> >> > > instead of ip address
> >>> >> >> > >
> >>> >> >> > >     remote-viewer spice://server:5900
> >>> >> >> > >
> >>> >> >> > >
> >>> >> >> > > > And now - again without changing anything - it doesn't
> connect
> >>> >> >> > > > with that command as well.
> >>> >> >> > > >
> >>> >> >> > > > I have sadly NO clue whatsoever where to even search for =
a
> >>> >> >> > > > solution - the internet didn't help me here...
> >>> >> >> > > >
> >>> >> >> > > > Do you have any hint at all what I might do wrong here?
> >>> >> >> > > >
> >>> >> >> > > > The machine is available - the port is open and visible
> >>> >> >> > > > PORT     STATE SERVICE
> >>> >> >> > > > 22/tcp   open  ssh
> >>> >> >> > > > 80/tcp   open  http
> >>> >> >> > > > 3389/tcp open  ms-wbt-server
> >>> >> >> > > > 5900/tcp open  vnc
> >>> >> >> > > >
> >>> >> >> > > > ufw on the server is shut down.
> >>> >> >> > > >
> >>> >> >> > > > ANY help would be greatly appreciated.
> >>> >> >> > >
> >>> >> >> > > You can get more verbose information of issues with
> --spice-debug
> >>> >> >> > > command line option too.
> >>> >> >> > >
> >>> >> >> > > Cheers,
> >>> >> >> > > Victor
> >>> >> >> > >
>

--0000000000007b75e605edbc7275
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hope this wall of text helps you in any way :D</div><=
div><br></div><div><span style=3D"font-family:monospace"><span style=3D"fon=
t-weight:bold;color:rgb(84,255,84);background-color:rgb(255,255,255)">stony=
@Aperture-Science</span><span style=3D"color:rgb(0,0,0);background-color:rg=
b(255,255,255)">:</span><span style=3D"font-weight:bold;color:rgb(84,84,255=
);background-color:rgb(255,255,255)">~</span><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">$ history | grep spice | hexdump -C
</span><br>00000000 =C2=A020 31 32 30 36 20 20 72 =C2=A065 6d 6f 74 65 2d 7=
6 69 =C2=A0| 1206 =C2=A0remote-vi|
<br>00000010 =C2=A065 77 65 72 20 73 70 69 =C2=A063 65 3a 2f 2f 31 39 32 =
=C2=A0|ewer spice://192|
<br>00000020 =C2=A02e 31 36 38 2e 31 37 38 =C2=A02e 35 31 3a 35 39 30 30 =
=C2=A0|.168.178.51:5900|
<br>00000030 =C2=A00a 20 31 32 31 30 20 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|. 1210 =C2=A0remote-v|
<br>00000040 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a 2f 2f 31 39 =
=C2=A0|iewer spice://19|
<br>00000050 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>00000060 =C2=A030 0a 20 31 33 30 39 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|0. 1309 =C2=A0remote-|
<br>00000070 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 3a e2 81 84 =
=C2=A0|viewer spice:...|
<br>00000080 =C2=A0e2 81 84 31 39 32 2e 31 =C2=A036 38 2e 31 37 38 2e 35 =
=C2=A0|...192.168.178.5|
<br>00000090 =C2=A031 3a 35 39 30 30 0a 20 =C2=A031 33 31 30 20 20 72 65 =
=C2=A0|1:5900. 1310 =C2=A0re|
<br>000000a0 =C2=A06d 6f 74 65 2d 76 69 65 =C2=A077 65 72 20 73 70 69 63 =
=C2=A0|mote-viewer spic|
<br>000000b0 =C2=A065 3a e2 81 84 e2 81 84 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|e:......192.168.|
<br>000000c0 =C2=A031 37 38 2e 34 38 3a 35 =C2=A039 30 30 0a 20 31 33 31 =
=C2=A0|178.48:5900. 131|
<br>000000d0 =C2=A031 20 20 72 65 6d 6f 74 =C2=A065 2d 76 69 65 77 65 72 =
=C2=A0|1 =C2=A0remote-viewer|
<br>000000e0 =C2=A020 73 70 69 63 65 3a e2 =C2=A081 84 e2 81 84 31 39 32 =
=C2=A0| spice:......192|
<br>000000f0 =C2=A02e 31 36 38 2e 31 37 38 =C2=A02e 34 37 3a 35 39 30 30 =
=C2=A0|.168.178.47:5900|
<br>00000100 =C2=A00a 20 31 33 31 32 20 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|. 1312 =C2=A0remote-v|
<br>00000110 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a e2 81 84 e2 =
=C2=A0|iewer spice:....|
<br>00000120 =C2=A081 84 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 36 30 =
=C2=A0|..192.168.178.60|
<br>00000130 =C2=A03a 35 39 30 30 0a 20 31 =C2=A033 31 34 20 20 72 65 6d =
=C2=A0|:5900. 1314 =C2=A0rem|
<br>00000140 =C2=A06f 74 65 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|ote-viewer spice|
<br>00000150 =C2=A03a e2 81 84 e2 81 84 31 =C2=A039 32 2e 31 36 38 2e 31 =
=C2=A0|:......192.168.1|
<br>00000160 =C2=A037 38 2e 35 31 3a 35 39 =C2=A030 30 0a 20 31 33 31 35 =
=C2=A0|78.51:5900. 1315|
<br>00000170 =C2=A020 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0| =C2=A0remote-viewer |
<br>00000180 =C2=A073 70 69 63 65 3a e2 81 =C2=A084 e2 81 84 31 39 32 2e =
=C2=A0|spice:......192.|
<br>00000190 =C2=A031 36 38 2e 31 37 38 2e =C2=A036 30 3a 35 39 30 30 0a =
=C2=A0|168.178.60:5900.|
<br>000001a0 =C2=A020 31 33 31 36 20 20 72 =C2=A065 6d 6f 74 65 2d 76 69 =
=C2=A0| 1316 =C2=A0remote-vi|
<br>000001b0 =C2=A065 77 65 72 20 73 70 69 =C2=A063 65 3a e2 81 84 e2 81 =
=C2=A0|ewer spice:.....|
<br>000001c0 =C2=A084 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 36 30 3a =
=C2=A0|.192.168.178.60:|
<br>000001d0 =C2=A035 39 30 31 0a 20 31 33 =C2=A031 38 20 20 72 65 6d 6f =
=C2=A0|5901. 1318 =C2=A0remo|
<br>000001e0 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 73 70 69 63 65 3a =
=C2=A0|te-viewer spice:|
<br>000001f0 =C2=A0e2 81 84 e2 81 84 31 39 =C2=A032 2e 31 36 38 2e 31 37 =
=C2=A0|......192.168.17|
<br>00000200 =C2=A038 2e 36 30 3a 35 39 30 =C2=A030 0a 20 31 33 32 30 20 =
=C2=A0|8.60:5900. 1320 |
<br>00000210 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 73 =
=C2=A0| remote-viewer s|
<br>00000220 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 31 39 32 2e 31 =
=C2=A0|pice:......192.1|
<br>00000230 =C2=A036 38 2e 31 37 38 2e 36 =C2=A030 3a 35 39 30 30 0a 20 =
=C2=A0|68.178.60:5900. |
<br>00000240 =C2=A031 33 32 32 20 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0|1322 =C2=A0remote-vie|
<br>00000250 =C2=A077 65 72 20 73 70 69 63 =C2=A065 3a e2 81 84 e2 81 84 =
=C2=A0|wer spice:......|
<br>00000260 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 36 30 3a 35 =
=C2=A0|192.168.178.60:5|
<br>00000270 =C2=A039 30 30 0a 20 31 33 32 =C2=A034 20 20 72 65 6d 6f 74 =
=C2=A0|900. 1324 =C2=A0remot|
<br>00000280 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 73 70 69 63 65 3a e2 =
=C2=A0|e-viewer spice:.|
<br>00000290 =C2=A081 84 e2 81 84 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|.....192.168.178|
<br>000002a0 =C2=A02e 36 30 0a 20 31 33 32 =C2=A035 20 20 72 65 6d 6f 74 =
=C2=A0|.60. 1325 =C2=A0remot|
<br>000002b0 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 2d 76 20 73 70 69 63 =
=C2=A0|e-viewer -v spic|
<br>000002c0 =C2=A065 3a e2 81 84 e2 81 84 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|e:......192.168.|
<br>000002d0 =C2=A031 37 38 2e 36 30 0a 20 =C2=A031 33 32 37 20 20 72 65 =
=C2=A0|178.60. 1327 =C2=A0re|
<br>000002e0 =C2=A06d 6f 74 65 2d 76 69 65 =C2=A077 65 72 20 2d 76 20 73 =
=C2=A0|mote-viewer -v s|
<br>000002f0 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 31 39 32 2e 31 =
=C2=A0|pice:......192.1|
<br>00000300 =C2=A036 38 2e 31 37 38 2e 36 =C2=A030 0a 20 31 33 32 39 20 =
=C2=A0|68.178.60. 1329 |
<br>00000310 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 2d =
=C2=A0| remote-viewer -|
<br>00000320 =C2=A076 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0|v spice:......19|
<br>00000330 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 36 30 0a 20 31 33 =
=C2=A0|2.168.178.60. 13|
<br>00000340 =C2=A033 30 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|30 =C2=A0remote-viewe|
<br>00000350 =C2=A072 20 2d 76 20 73 70 69 =C2=A063 65 3a e2 81 84 e2 81 =
=C2=A0|r -v spice:.....|
<br>00000360 =C2=A084 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 36 30 3a =
=C2=A0|.192.168.178.60:|
<br>00000370 =C2=A035 39 30 30 0a 20 31 33 =C2=A033 33 20 20 72 65 6d 6f =
=C2=A0|5900. 1333 =C2=A0remo|
<br>00000380 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 2d 76 20 73 70 69 =
=C2=A0|te-viewer -v spi|
<br>00000390 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 31 39 32 2e 31 36 38 =
=C2=A0|ce:......192.168|
<br>000003a0 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 33 =
=C2=A0|.178.51:5900. 13|
<br>000003b0 =C2=A033 34 20 20 76 69 72 74 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0|34 =C2=A0virt-viewer |
<br>000003c0 =C2=A02d 76 20 73 70 69 63 65 =C2=A03a e2 81 84 e2 81 84 31 =
=C2=A0|-v spice:......1|
<br>000003d0 =C2=A039 32 2e 31 36 38 2e 31 =C2=A037 38 2e 35 31 3a 35 39 =
=C2=A0|92.168.178.51:59|
<br>000003e0 =C2=A030 30 0a 20 31 33 34 30 =C2=A020 20 72 65 6d 6f 74 65 =
=C2=A0|00. 1340 =C2=A0remote|
<br>000003f0 =C2=A02d 76 69 65 77 65 72 20 =C2=A02d 76 20 73 70 69 63 65 =
=C2=A0|-viewer -v spice|
<br>00000400 =C2=A03a e2 81 84 e2 81 84 31 =C2=A039 32 2e 31 36 38 2e 31 =
=C2=A0|:......192.168.1|
<br>00000410 =C2=A037 38 2e 36 32 3a 35 39 =C2=A030 30 0a 20 31 33 34 31 =
=C2=A0|78.62:5900. 1341|
<br>00000420 =C2=A020 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0| =C2=A0remote-viewer |
<br>00000430 =C2=A073 70 69 63 65 3a e2 81 =C2=A084 e2 81 84 31 39 32 2e =
=C2=A0|spice:......192.|
<br>00000440 =C2=A031 36 38 2e 31 37 38 2e =C2=A036 32 3a 35 39 30 30 0a =
=C2=A0|168.178.62:5900.|
<br>00000450 =C2=A020 31 33 35 30 20 20 72 =C2=A065 6d 6f 74 65 2d 76 69 =
=C2=A0| 1350 =C2=A0remote-vi|
<br>00000460 =C2=A065 77 65 72 20 73 70 69 =C2=A063 65 3a e2 81 84 e2 81 =
=C2=A0|ewer spice:.....|
<br>00000470 =C2=A084 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|.192.168.178.51:|
<br>00000480 =C2=A035 39 30 30 0a 20 31 33 =C2=A035 31 20 20 72 65 6d 6f =
=C2=A0|5900. 1351 =C2=A0remo|
<br>00000490 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 73 70 69 63 65 3a =
=C2=A0|te-viewer spice:|
<br>000004a0 =C2=A0e2 81 84 e2 81 84 31 39 =C2=A032 2e 31 36 38 2e 31 37 =
=C2=A0|......192.168.17|
<br>000004b0 =C2=A038 2e 36 32 3a 35 39 30 =C2=A030 0a 20 31 33 35 35 20 =
=C2=A0|8.62:5900. 1355 |
<br>000004c0 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 73 =
=C2=A0| remote-viewer s|
<br>000004d0 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 31 39 32 2e 31 =
=C2=A0|pice:......192.1|
<br>000004e0 =C2=A036 38 2e 31 37 38 2e 36 =C2=A032 3a 35 39 30 30 0a 20 =
=C2=A0|68.178.62:5900. |
<br>000004f0 =C2=A031 33 35 37 20 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0|1357 =C2=A0remote-vie|
<br>00000500 =C2=A077 65 72 20 73 70 69 63 =C2=A065 3a e2 81 84 e2 81 84 =
=C2=A0|wer spice:......|
<br>00000510 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 36 32 3a 35 =
=C2=A0|192.168.178.62:5|
<br>00000520 =C2=A039 30 30 0a 20 31 33 35 =C2=A038 20 20 72 65 6d 6f 74 =
=C2=A0|900. 1358 =C2=A0remot|
<br>00000530 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 73 70 69 63 65 3a e2 =
=C2=A0|e-viewer spice:.|
<br>00000540 =C2=A081 84 e2 81 84 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|.....192.168.178|
<br>00000550 =C2=A02e 35 31 3a 35 39 30 30 =C2=A00a 20 31 33 36 32 20 20 =
=C2=A0|.51:5900. 1362 =C2=A0|
<br>00000560 =C2=A072 65 6d 6f 74 65 2d 76 =C2=A069 65 77 65 72 20 73 70 =
=C2=A0|remote-viewer sp|
<br>00000570 =C2=A069 63 65 3a e2 81 84 e2 =C2=A081 84 31 39 32 2e 31 36 =
=C2=A0|ice:......192.16|
<br>00000580 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 35 39 30 30 0a 20 31 =
=C2=A0|8.178.51:5900. 1|
<br>00000590 =C2=A033 37 33 20 20 72 65 6d =C2=A06f 74 65 2d 76 69 65 77 =
=C2=A0|373 =C2=A0remote-view|
<br>000005a0 =C2=A065 72 20 73 70 69 63 65 =C2=A03a e2 81 84 e2 81 84 31 =
=C2=A0|er spice:......1|
<br>000005b0 =C2=A039 32 2e 31 36 38 2e 31 =C2=A037 38 2e 35 31 3a 35 39 =
=C2=A0|92.168.178.51:59|
<br>000005c0 =C2=A030 30 0a 20 31 33 37 34 =C2=A020 20 72 65 6d 6f 74 65 =
=C2=A0|00. 1374 =C2=A0remote|
<br>000005d0 =C2=A02d 76 69 65 77 65 72 20 =C2=A073 70 69 63 65 3a e2 81 =
=C2=A0|-viewer spice:..|
<br>000005e0 =C2=A084 e2 81 84 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|....192.168.178.|
<br>000005f0 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 33 37 36 20 20 72 =
=C2=A0|51:5900. 1376 =C2=A0r|
<br>00000600 =C2=A065 6d 6f 74 65 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0|emote-viewer spi|
<br>00000610 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 31 39 32 2e 31 36 38 =
=C2=A0|ce:......192.168|
<br>00000620 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 33 =
=C2=A0|.178.51:5900. 13|
<br>00000630 =C2=A037 37 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|77 =C2=A0remote-viewe|
<br>00000640 =C2=A072 20 73 70 69 63 65 5c =C2=A03a e2 81 84 e2 81 84 31 =
=C2=A0|r spice\:......1|
<br>00000650 =C2=A039 32 2e 31 36 38 2e 31 =C2=A037 38 2e 35 31 3a 35 39 =
=C2=A0|92.168.178.51:59|
<br>00000660 =C2=A030 30 0a 20 31 33 38 30 =C2=A020 20 72 65 6d 6f 74 65 =
=C2=A0|00. 1380 =C2=A0remote|
<br>00000670 =C2=A02d 76 69 65 77 65 72 20 =C2=A073 70 69 63 65 5c 3a e2 =
=C2=A0|-viewer spice\:.|
<br>00000680 =C2=A081 84 e2 81 84 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|.....192.168.178|
<br>00000690 =C2=A02e 35 31 3a 32 30 30 30 =C2=A031 0a 20 31 33 38 31 20 =
=C2=A0|.51:20001. 1381 |
<br>000006a0 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 73 =
=C2=A0| remote-viewer s|
<br>000006b0 =C2=A070 69 63 65 5c 3a e2 81 =C2=A084 e2 81 84 31 39 32 2e =
=C2=A0|pice\:......192.|
<br>000006c0 =C2=A031 36 38 2e 31 37 38 2e =C2=A035 31 0a 20 31 33 38 32 =
=C2=A0|168.178.51. 1382|
<br>000006d0 =C2=A020 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0| =C2=A0remote-viewer |
<br>000006e0 =C2=A073 70 69 63 65 5c 3a e2 =C2=A081 84 e2 81 84 31 39 32 =
=C2=A0|spice\:......192|
<br>000006f0 =C2=A02e 31 36 38 2e 31 37 38 =C2=A02e 35 31 3a 35 39 30 30 =
=C2=A0|.168.178.51:5900|
<br>00000700 =C2=A00a 20 31 33 38 38 20 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|. 1388 =C2=A0remote-v|
<br>00000710 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 5c 3a e2 81 84 =
=C2=A0|iewer spice\:...|
<br>00000720 =C2=A0e2 81 84 31 39 32 2e 31 =C2=A036 38 2e 31 37 38 2e 35 =
=C2=A0|...192.168.178.5|
<br>00000730 =C2=A031 3a 35 39 30 31 0a 20 =C2=A031 33 38 39 20 20 73 79 =
=C2=A0|1:5901. 1389 =C2=A0sy|
<br>00000740 =C2=A073 74 65 6d 63 74 6c 20 =C2=A065 6e 61 62 6c 65 20 73 =
=C2=A0|stemctl enable s|
<br>00000750 =C2=A070 69 63 65 2d 76 64 61 =C2=A067 65 6e 74 64 2e 73 65 =
=C2=A0|<a href=3D"http://pice-vdagentd.se">pice-vdagentd.se</a>|
<br>00000760 =C2=A072 76 69 63 65 0a 20 31 =C2=A033 39 30 20 20 72 65 6d =
=C2=A0|rvice. 1390 =C2=A0rem|
<br>00000770 =C2=A06f 74 65 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|ote-viewer spice|
<br>00000780 =C2=A05c 3a e2 81 84 e2 81 84 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|\:......192.168.|
<br>00000790 =C2=A031 37 38 2e 35 31 3a 35 =C2=A039 30 30 0a 20 31 33 39 =
=C2=A0|178.51:5900. 139|
<br>000007a0 =C2=A031 20 20 72 65 6d 6f 74 =C2=A065 2d 76 69 65 77 65 72 =
=C2=A0|1 =C2=A0remote-viewer|
<br>000007b0 =C2=A020 73 70 69 63 65 5c 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0| spice\:......19|
<br>000007c0 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>000007d0 =C2=A031 0a 20 31 33 39 32 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|1. 1392 =C2=A0remote-|
<br>000007e0 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 5c 3a e2 81 =
=C2=A0|viewer spice\:..|
<br>000007f0 =C2=A084 e2 81 84 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|....192.168.178.|
<br>00000800 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 33 39 33 20 20 72 =
=C2=A0|51:5900. 1393 =C2=A0r|
<br>00000810 =C2=A065 6d 6f 74 65 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0|emote-viewer spi|
<br>00000820 =C2=A063 65 5c 3a e2 81 84 e2 =C2=A081 84 31 39 32 2e 31 36 =
=C2=A0|ce\:......192.16|
<br>00000830 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 32 30 30 30 31 0a 20 =
=C2=A0|8.178.51:20001. |
<br>00000840 =C2=A031 33 39 34 20 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0|1394 =C2=A0remote-vie|
<br>00000850 =C2=A077 65 72 20 73 70 69 63 =C2=A065 3a e2 81 84 e2 81 84 =
=C2=A0|wer spice:......|
<br>00000860 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 32 =
=C2=A0|192.168.178.51:2|
<br>00000870 =C2=A030 30 30 31 0a 20 31 33 =C2=A039 37 20 20 72 65 6d 6f =
=C2=A0|0001. 1397 =C2=A0remo|
<br>00000880 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 73 70 69 63 65 3a =
=C2=A0|te-viewer spice:|
<br>00000890 =C2=A0e2 81 84 e2 81 84 31 39 =C2=A032 2e 31 36 38 2e 31 37 =
=C2=A0|......192.168.17|
<br>000008a0 =C2=A038 2e 35 31 3a 32 30 30 =C2=A030 31 0a 20 31 33 39 38 =
=C2=A0|8.51:20001. 1398|
<br>000008b0 =C2=A020 20 73 75 64 6f 20 61 =C2=A070 74 2d 67 65 74 20 69 =
=C2=A0| =C2=A0sudo apt-get i|
<br>000008c0 =C2=A06e 73 74 61 6c 6c 20 73 =C2=A070 69 63 65 2d 67 74 6b =
=C2=A0|nstall spice-gtk|
<br>000008d0 =C2=A00a 20 31 33 39 39 20 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|. 1399 =C2=A0remote-v|
<br>000008e0 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a e2 81 84 e2 =
=C2=A0|iewer spice:....|
<br>000008f0 =C2=A081 84 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 35 31 =
=C2=A0|..192.168.178.51|
<br>00000900 =C2=A03a 32 30 30 30 31 0a 20 =C2=A031 34 30 32 20 20 72 65 =
=C2=A0|:20001. 1402 =C2=A0re|
<br>00000910 =C2=A06d 6f 74 65 2d 76 69 65 =C2=A077 65 72 20 73 70 69 63 =
=C2=A0|mote-viewer spic|
<br>00000920 =C2=A065 3a e2 81 84 e2 81 84 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|e:......192.168.|
<br>00000930 =C2=A031 37 38 2e 35 31 3a 32 =C2=A030 30 30 31 0a 20 31 34 =
=C2=A0|178.51:20001. 14|
<br>00000940 =C2=A030 33 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|03 =C2=A0remote-viewe|
<br>00000950 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0|r spice:......19|
<br>00000960 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>00000970 =C2=A030 0a 20 31 34 31 31 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|0. 1411 =C2=A0remote-|
<br>00000980 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 3a e2 81 84 =
=C2=A0|viewer spice:...|
<br>00000990 =C2=A0e2 81 84 31 39 32 2e 31 =C2=A036 38 2e 31 37 38 2e 35 =
=C2=A0|...192.168.178.5|
<br>000009a0 =C2=A031 3a 35 39 30 30 0a 20 =C2=A031 34 31 34 20 20 72 65 =
=C2=A0|1:5900. 1414 =C2=A0re|
<br>000009b0 =C2=A06d 6f 74 65 2d 76 69 65 =C2=A077 65 72 20 73 70 69 63 =
=C2=A0|mote-viewer spic|
<br>000009c0 =C2=A065 3a e2 81 84 e2 81 84 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|e:......192.168.|
<br>000009d0 =C2=A031 37 38 2e 35 31 3a 35 =C2=A039 30 30 0a 20 31 34 31 =
=C2=A0|178.51:5900. 141|
<br>000009e0 =C2=A038 20 20 73 75 64 6f 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|8 =C2=A0sudo remote-v|
<br>000009f0 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a e2 81 84 e2 =
=C2=A0|iewer spice:....|
<br>00000a00 =C2=A081 84 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 35 31 =
=C2=A0|..192.168.178.51|
<br>00000a10 =C2=A03a 35 39 30 30 0a 20 31 =C2=A034 32 33 20 20 76 69 72 =
=C2=A0|:5900. 1423 =C2=A0vir|
<br>00000a20 =C2=A074 2d 76 69 65 77 65 72 =C2=A020 2d 63 20 73 70 69 63 =
=C2=A0|t-viewer -c spic|
<br>00000a30 =C2=A065 3a 2f 2f 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|e://<a href=3D"http://192.168.178.">192.168.178.</a>|
<br>00000a40 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 34 32 35 20 20 76 =
=C2=A0|51:5900. 1425 =C2=A0v|
<br>00000a50 =C2=A069 72 74 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|irt-viewer spice|
<br>00000a60 =C2=A03a 2f 2f 73 65 72 76 65 =C2=A072 40 31 39 32 2e 31 36 =
=C2=A0|://server@192.16|
<br>00000a70 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 35 39 30 30 0a 20 31 =
=C2=A0|8.178.51:5900. 1|
<br>00000a80 =C2=A034 32 36 20 20 73 75 64 =C2=A06f 20 76 69 72 74 2d 76 =
=C2=A0|426 =C2=A0sudo virt-v|
<br>00000a90 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a 2f 2f 73 65 =
=C2=A0|iewer spice://se|
<br>00000aa0 =C2=A072 76 65 72 40 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|rver@192.168.178|
<br>00000ab0 =C2=A02e 35 31 3a 35 39 30 30 =C2=A00a 20 31 34 32 37 20 20 =
=C2=A0|.51:5900. 1427 =C2=A0|
<br>00000ac0 =C2=A073 75 64 6f 20 72 65 6d =C2=A06f 74 65 2d 76 69 65 77 =
=C2=A0|sudo remote-view|
<br>00000ad0 =C2=A065 72 20 73 70 69 63 65 =C2=A03a 2f 2f 73 65 72 76 65 =
=C2=A0|er spice://serve|
<br>00000ae0 =C2=A072 40 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 35 31 =
=C2=A0|<a href=3D"mailto:r@192.168.178.51">r@192.168.178.51</a>|
<br>00000af0 =C2=A03a 35 39 30 30 0a 20 31 =C2=A034 32 38 20 20 72 65 6d =
=C2=A0|:5900. 1428 =C2=A0rem|
<br>00000b00 =C2=A06f 74 65 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|ote-viewer spice|
<br>00000b10 =C2=A03a e2 81 84 e2 81 84 31 =C2=A039 32 2e 31 36 38 2e 31 =
=C2=A0|:......192.168.1|
<br>00000b20 =C2=A037 38 2e 35 31 3a 35 39 =C2=A030 30 0a 20 31 34 33 36 =
=C2=A0|78.51:5900. 1436|
<br>00000b30 =C2=A020 20 73 75 64 6f 20 72 =C2=A065 6d 6f 74 65 2d 76 69 =
=C2=A0| =C2=A0sudo remote-vi|
<br>00000b40 =C2=A065 77 65 72 20 73 70 69 =C2=A063 65 3a 2f 2f 73 65 72 =
=C2=A0|ewer spice://ser|
<br>00000b50 =C2=A076 65 72 40 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|<a href=3D"mailto:ver@192.168.178.">ver@192.168.178.</a>|
<br>00000b60 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 34 36 37 20 20 72 =
=C2=A0|51:5900. 1467 =C2=A0r|
<br>00000b70 =C2=A065 6d 6f 74 65 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0|emote-viewer spi|
<br>00000b80 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 31 39 32 2e 31 36 38 =
=C2=A0|ce:......192.168|
<br>00000b90 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 34 =
=C2=A0|.178.51:5900. 14|
<br>00000ba0 =C2=A036 38 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|68 =C2=A0remote-viewe|
<br>00000bb0 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 73 65 =
=C2=A0|r spice:......se|
<br>00000bc0 =C2=A072 76 65 72 40 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|rver@192.168.178|
<br>00000bd0 =C2=A02e 35 31 3a 35 39 30 30 =C2=A00a 20 31 34 36 39 20 20 =
=C2=A0|.51:5900. 1469 =C2=A0|
<br>00000be0 =C2=A073 75 64 6f 20 72 65 6d =C2=A06f 74 65 2d 76 69 65 77 =
=C2=A0|sudo remote-view|
<br>00000bf0 =C2=A065 72 20 73 70 69 63 65 =C2=A03a e2 81 84 e2 81 84 73 =
=C2=A0|er spice:......s|
<br>00000c00 =C2=A065 72 76 65 72 40 31 39 =C2=A032 2e 31 36 38 2e 31 37 =
=C2=A0|erver@192.168.17|
<br>00000c10 =C2=A038 2e 35 31 3a 35 39 30 =C2=A030 0a 20 31 34 37 30 20 =
=C2=A0|8.51:5900. 1470 |
<br>00000c20 =C2=A020 73 75 64 6f 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0| sudo remote-vie|
<br>00000c30 =C2=A077 65 72 20 2d 76 20 20 =C2=A073 70 69 63 65 3a e2 81 =
=C2=A0|wer -v =C2=A0spice:..|
<br>00000c40 =C2=A084 e2 81 84 73 65 72 76 =C2=A065 72 40 31 39 32 2e 31 =
=C2=A0|....server@192.1|
<br>00000c50 =C2=A036 38 2e 31 37 38 2e 35 =C2=A031 3a 35 39 30 30 0a 20 =
=C2=A0|68.178.51:5900. |
<br>00000c60 =C2=A031 34 37 32 20 20 73 75 =C2=A064 6f 20 72 65 6d 6f 74 =
=C2=A0|1472 =C2=A0sudo remot|
<br>00000c70 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 2d 76 20 20 73 70 69 =
=C2=A0|e-viewer -v =C2=A0spi|
<br>00000c80 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 73 65 72 76 65 72 40 =
=C2=A0|ce:......server@|
<br>00000c90 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 35 =
=C2=A0|192.168.178.51:5|
<br>00000ca0 =C2=A039 30 30 0a 20 31 34 37 =C2=A033 20 20 73 75 64 6f 20 =
=C2=A0|900. 1473 =C2=A0sudo |
<br>00000cb0 =C2=A072 65 6d 6f 74 65 2d 76 =C2=A069 65 77 65 72 20 20 73 =
=C2=A0|remote-viewer =C2=A0s|
<br>00000cc0 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 73 65 72 76 65 =
=C2=A0|pice:......serve|
<br>00000cd0 =C2=A072 40 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 35 31 =
=C2=A0|<a href=3D"mailto:r@192.168.178.51">r@192.168.178.51</a>|
<br>00000ce0 =C2=A03a 35 39 30 30 0a 20 31 =C2=A034 37 35 20 20 73 75 64 =
=C2=A0|:5900. 1475 =C2=A0sud|
<br>00000cf0 =C2=A06f 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0|o remote-viewer |
<br>00000d00 =C2=A020 73 70 69 63 65 3a e2 =C2=A081 84 e2 81 84 73 65 72 =
=C2=A0| spice:......ser|
<br>00000d10 =C2=A076 65 72 40 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|<a href=3D"mailto:ver@192.168.178.">ver@192.168.178.</a>|
<br>00000d20 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 34 37 36 20 20 73 =
=C2=A0|51:5900. 1476 =C2=A0s|
<br>00000d30 =C2=A075 64 6f 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|udo remote-viewe|
<br>00000d40 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0|r spice:......19|
<br>00000d50 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>00000d60 =C2=A030 0a 20 31 34 37 37 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|0. 1477 =C2=A0remote-|
<br>00000d70 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 3a e2 81 84 =
=C2=A0|viewer spice:...|
<br>00000d80 =C2=A0e2 81 84 31 39 32 2e 31 =C2=A036 38 2e 31 37 38 2e 35 =
=C2=A0|...192.168.178.5|
<br>00000d90 =C2=A031 3a 35 39 30 30 0a 20 =C2=A031 34 37 39 20 20 73 70 =
=C2=A0|1:5900. 1479 =C2=A0sp|
<br>00000da0 =C2=A069 63 65 2d 76 64 61 67 =C2=A065 6e 74 0a 20 31 34 38 =
=C2=A0|ice-vdagent. 148|
<br>00000db0 =C2=A030 20 20 73 70 69 63 65 =C2=A02d 76 64 61 67 65 6e 74 =
=C2=A0|0 =C2=A0spice-vdagent|
<br>00000dc0 =C2=A020 2d 2d 68 65 6c 70 0a =C2=A020 31 34 38 31 20 20 72 =
=C2=A0| --help. 1481 =C2=A0r|
<br>00000dd0 =C2=A065 6d 6f 74 65 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0|emote-viewer spi|
<br>00000de0 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 31 39 32 2e 31 36 38 =
=C2=A0|ce:......192.168|
<br>00000df0 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 34 =
=C2=A0|.178.51:5900. 14|
<br>00000e00 =C2=A038 32 20 20 6b 69 6c 6c =C2=A061 6c 6c 20 2d 39 20 73 =
=C2=A0|82 =C2=A0killall -9 s|
<br>00000e10 =C2=A070 69 63 65 2d 76 64 61 =C2=A067 0a 20 31 34 38 33 20 =
=C2=A0|pice-vdag. 1483 |
<br>00000e20 =C2=A020 6b 69 6c 6c 61 6c 6c =C2=A020 2d 39 20 73 70 69 63 =
=C2=A0| killall -9 spic|
<br>00000e30 =C2=A065 2d 76 64 61 67 65 6e =C2=A074 0a 20 31 34 38 34 20 =
=C2=A0|e-vdagent. 1484 |
<br>00000e40 =C2=A020 73 65 72 76 69 63 65 =C2=A020 73 74 61 74 75 73 20 =
=C2=A0| service status |
<br>00000e50 =C2=A073 70 69 63 65 2d 76 64 =C2=A061 67 65 6e 74 0a 20 31 =
=C2=A0|spice-vdagent. 1|
<br>00000e60 =C2=A034 38 35 20 20 73 65 72 =C2=A076 69 63 65 20 73 74 61 =
=C2=A0|485 =C2=A0service sta|
<br>00000e70 =C2=A074 75 73 20 73 70 69 63 =C2=A065 2d 76 64 61 67 65 6e =
=C2=A0|tus spice-vdagen|
<br>00000e80 =C2=A074 64 0a 20 31 34 38 36 =C2=A020 20 73 70 69 63 65 2d =
=C2=A0|td. 1486 =C2=A0spice-|
<br>00000e90 =C2=A076 64 61 67 65 6e 74 64 =C2=A00a 20 31 34 38 39 20 20 =
=C2=A0|vdagentd. 1489 =C2=A0|
<br>00000ea0 =C2=A072 65 6d 6f 74 65 2d 76 =C2=A069 65 77 65 72 20 73 70 =
=C2=A0|remote-viewer sp|
<br>00000eb0 =C2=A069 63 65 3a e2 81 84 e2 =C2=A081 84 31 39 32 2e 31 36 =
=C2=A0|ice:......192.16|
<br>00000ec0 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 35 39 30 30 0a 20 31 =
=C2=A0|8.178.51:5900. 1|
<br>00000ed0 =C2=A034 39 30 20 20 73 75 64 =C2=A06f 20 72 65 6d 6f 74 65 =
=C2=A0|490 =C2=A0sudo remote|
<br>00000ee0 =C2=A02d 76 69 65 77 65 72 20 =C2=A020 73 70 69 63 65 3a e2 =
=C2=A0|-viewer =C2=A0spice:.|
<br>00000ef0 =C2=A081 84 e2 81 84 73 65 72 =C2=A076 65 72 40 31 39 32 2e =
=C2=A0|.....server@192.|
<br>00000f00 =C2=A031 36 38 2e 31 37 38 2e =C2=A035 31 3a 35 39 30 30 0a =
=C2=A0|168.178.51:5900.|
<br>00000f10 =C2=A020 31 34 39 32 20 20 73 =C2=A075 64 6f 20 72 65 6d 6f =
=C2=A0| 1492 =C2=A0sudo remo|
<br>00000f20 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 73 70 69 63 65 3a =
=C2=A0|te-viewer spice:|
<br>00000f30 =C2=A0e2 81 84 e2 81 84 73 65 =C2=A072 76 65 72 40 31 39 32 =
=C2=A0|......server@192|
<br>00000f40 =C2=A02e 31 36 38 2e 31 37 38 =C2=A02e 35 31 3a 35 39 30 30 =
=C2=A0|.168.178.51:5900|
<br>00000f50 =C2=A00a 20 31 34 39 33 20 20 =C2=A072 65 6d 6f 74 65 2d 76 =
=C2=A0|. 1493 =C2=A0remote-v|
<br>00000f60 =C2=A069 65 77 65 72 20 73 70 =C2=A069 63 65 3a e2 81 84 e2 =
=C2=A0|iewer spice:....|
<br>00000f70 =C2=A081 84 73 65 72 76 65 72 =C2=A040 31 39 32 2e 31 36 38 =
=C2=A0|..server@192.168|
<br>00000f80 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 34 =
=C2=A0|.178.51:5900. 14|
<br>00000f90 =C2=A039 34 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|94 =C2=A0remote-viewe|
<br>00000fa0 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0|r spice:......19|
<br>00000fb0 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>00000fc0 =C2=A030 0a 20 31 34 39 35 20 =C2=A020 73 75 64 6f 20 72 65 =
=C2=A0|0. 1495 =C2=A0sudo re|
<br>00000fd0 =C2=A06d 6f 74 65 2d 76 69 65 =C2=A077 65 72 20 73 70 69 63 =
=C2=A0|mote-viewer spic|
<br>00000fe0 =C2=A065 3a e2 81 84 e2 81 84 =C2=A073 65 72 76 65 72 40 31 =
=C2=A0|e:......server@1|
<br>00000ff0 =C2=A039 32 2e 31 36 38 2e 31 =C2=A037 38 2e 35 31 3a 35 39 =
=C2=A0|92.168.178.51:59|
<br>00001000 =C2=A030 30 0a 20 31 34 39 36 =C2=A020 20 73 75 64 6f 20 72 =
=C2=A0|00. 1496 =C2=A0sudo r|
<br>00001010 =C2=A065 6d 6f 74 65 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0|emote-viewer spi|
<br>00001020 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 73 65 72 76 65 72 40 =
=C2=A0|ce:......server@|
<br>00001030 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 36 34 3a 35 =
=C2=A0|192.168.178.64:5|
<br>00001040 =C2=A039 30 30 0a 20 31 34 39 =C2=A037 20 20 73 75 64 6f 20 =
=C2=A0|900. 1497 =C2=A0sudo |
<br>00001050 =C2=A072 65 6d 6f 74 65 2d 76 =C2=A069 65 77 65 72 20 73 70 =
=C2=A0|remote-viewer sp|
<br>00001060 =C2=A069 63 65 3a e2 81 84 e2 =C2=A081 84 73 65 72 76 65 72 =
=C2=A0|ice:......server|
<br>00001070 =C2=A040 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|@192.168.178.51:|
<br>00001080 =C2=A035 39 30 30 0a 20 31 34 =C2=A039 38 20 20 73 75 64 6f =
=C2=A0|5900. 1498 =C2=A0sudo|
<br>00001090 =C2=A020 76 69 72 74 2d 76 69 =C2=A065 77 65 72 20 73 70 69 =
=C2=A0| virt-viewer spi|
<br>000010a0 =C2=A063 65 3a e2 81 84 e2 81 =C2=A084 73 65 72 76 65 72 40 =
=C2=A0|ce:......server@|
<br>000010b0 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 35 =
=C2=A0|192.168.178.51:5|
<br>000010c0 =C2=A039 30 30 0a 20 31 34 39 =C2=A039 20 20 73 75 64 6f 20 =
=C2=A0|900. 1499 =C2=A0sudo |
<br>000010d0 =C2=A072 65 6d 6f 74 65 2d 76 =C2=A069 65 77 65 72 20 73 70 =
=C2=A0|remote-viewer sp|
<br>000010e0 =C2=A069 63 65 3a e2 81 84 e2 =C2=A081 84 73 65 72 76 65 72 =
=C2=A0|ice:......server|
<br>000010f0 =C2=A040 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|@192.168.178.51:|
<br>00001100 =C2=A035 39 30 30 0a 20 31 35 =C2=A030 32 20 20 76 69 72 74 =
=C2=A0|5900. 1502 =C2=A0virt|
<br>00001110 =C2=A02d 76 69 65 77 65 72 20 =C2=A02d 63 20 73 70 69 63 65 =
=C2=A0|-viewer -c spice|
<br>00001120 =C2=A020 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0| 192.168.178.51:|
<br>00001130 =C2=A035 39 30 30 0a 20 31 35 =C2=A030 33 20 20 76 69 72 74 =
=C2=A0|5900. 1503 =C2=A0virt|
<br>00001140 =C2=A02d 76 69 65 77 65 72 20 =C2=A02d 63 20 73 70 69 63 65 =
=C2=A0|-viewer -c spice|
<br>00001150 =C2=A020 73 70 69 63 65 3a 2f =C2=A02f 31 39 32 2e 31 36 38 =
=C2=A0| spice://192.168|
<br>00001160 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 35 =
=C2=A0|.178.51:5900. 15|
<br>00001170 =C2=A030 35 20 20 76 69 72 74 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0|05 =C2=A0virt-viewer |
<br>00001180 =C2=A02d 63 20 73 70 69 63 65 =C2=A03a 2f 2f 31 39 32 2e 31 =
=C2=A0|-c spice://192.1|
<br>00001190 =C2=A036 38 2e 31 37 38 2e 35 =C2=A031 3a 35 39 30 30 0a 20 =
=C2=A0|68.178.51:5900. |
<br>000011a0 =C2=A031 35 31 34 20 20 76 69 =C2=A072 74 2d 76 69 65 77 65 =
=C2=A0|1514 =C2=A0virt-viewe|
<br>000011b0 =C2=A072 20 2d 63 20 73 70 69 =C2=A063 65 3a 2f 2f 2f 31 39 =
=C2=A0|r -c spice:///19|
<br>000011c0 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>000011d0 =C2=A030 20 77 69 6e 31 30 0a =C2=A020 31 35 31 35 20 20 76 =
=C2=A0|0 win10. 1515 =C2=A0v|
<br>000011e0 =C2=A069 72 74 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|irt-viewer spice|
<br>000011f0 =C2=A03a 2f 2f 2f 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|:///<a href=3D"http://192.168.178.">192.168.178.</a>|
<br>00001200 =C2=A035 31 3a 35 39 30 30 20 =C2=A077 69 6e 31 30 0a 20 31 =
=C2=A0|51:5900 win10. 1|
<br>00001210 =C2=A035 31 36 20 20 76 69 72 =C2=A074 2d 76 69 65 77 65 72 =
=C2=A0|516 =C2=A0virt-viewer|
<br>00001220 =C2=A020 73 70 69 63 65 3a 2f =C2=A02f 2f 31 39 32 2e 31 36 =
=C2=A0| spice:///192.16|
<br>00001230 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 35 39 30 30 20 0a 20 =
=C2=A0|8.178.51:5900 . |
<br>00001240 =C2=A031 35 32 35 20 20 73 75 =C2=A064 6f 20 76 69 72 74 2d =
=C2=A0|1525 =C2=A0sudo virt-|
<br>00001250 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 3a 2f 2f 72 =
=C2=A0|viewer spice://r|
<br>00001260 =C2=A06f 6f 74 40 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|<a href=3D"mailto:oot@192.168.178.">oot@192.168.178.</a>|
<br>00001270 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 35 32 36 20 20 76 =
=C2=A0|51:5900. 1526 =C2=A0v|
<br>00001280 =C2=A069 72 74 2d 76 69 65 77 =C2=A065 72 20 73 70 69 63 65 =
=C2=A0|irt-viewer spice|
<br>00001290 =C2=A03a 2f 2f 72 6f 6f 74 40 =C2=A031 39 32 2e 31 36 38 2e =
=C2=A0|://root@192.168.|
<br>000012a0 =C2=A031 37 38 2e 35 31 3a 35 =C2=A039 30 30 0a 20 31 35 32 =
=C2=A0|178.51:5900. 152|
<br>000012b0 =C2=A037 20 20 72 65 6d 6f 76 =C2=A065 2d 76 69 65 77 65 72 =
=C2=A0|7 =C2=A0remove-viewer|
<br>000012c0 =C2=A020 73 70 69 63 65 3a 2f =C2=A02f 72 6f 6f 74 40 31 39 =
=C2=A0| spice://root@19|
<br>000012d0 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>000012e0 =C2=A030 0a 20 31 35 32 38 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|0. 1528 =C2=A0remote-|
<br>000012f0 =C2=A076 69 65 77 65 72 20 73 =C2=A070 69 63 65 3a 2f 2f 72 =
=C2=A0|viewer spice://r|
<br>00001300 =C2=A06f 6f 74 40 31 39 32 2e =C2=A031 36 38 2e 31 37 38 2e =
=C2=A0|<a href=3D"mailto:oot@192.168.178.">oot@192.168.178.</a>|
<br>00001310 =C2=A035 31 3a 35 39 30 30 0a =C2=A020 31 35 32 39 20 20 73 =
=C2=A0|51:5900. 1529 =C2=A0s|
<br>00001320 =C2=A075 64 6f 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|udo remote-viewe|
<br>00001330 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 73 65 =
=C2=A0|r spice:......se|
<br>00001340 =C2=A072 76 65 72 40 31 39 32 =C2=A02e 31 36 38 2e 31 37 38 =
=C2=A0|rver@192.168.178|
<br>00001350 =C2=A02e 35 31 3a 35 39 30 30 =C2=A00a 20 31 35 33 31 20 20 =
=C2=A0|.51:5900. 1531 =C2=A0|
<br>00001360 =C2=A073 75 64 6f 20 72 65 6d =C2=A06f 74 65 2d 76 69 65 77 =
=C2=A0|sudo remote-view|
<br>00001370 =C2=A065 72 20 73 70 69 63 65 =C2=A03a e2 81 84 e2 81 84 73 =
=C2=A0|er spice:......s|
<br>00001380 =C2=A065 72 76 65 72 40 31 39 =C2=A032 2e 31 36 38 2e 31 37 =
=C2=A0|erver@192.168.17|
<br>00001390 =C2=A038 2e 35 31 3a 35 39 30 =C2=A030 0a 20 31 35 33 34 20 =
=C2=A0|8.51:5900. 1534 |
<br>000013a0 =C2=A020 73 75 64 6f 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0| sudo remote-vie|
<br>000013b0 =C2=A077 65 72 20 73 70 69 63 =C2=A065 3a e2 81 84 e2 81 84 =
=C2=A0|wer spice:......|
<br>000013c0 =C2=A073 65 72 76 65 72 40 31 =C2=A039 32 2e 31 36 38 2e 31 =
=C2=A0|server@192.168.1|
<br>000013d0 =C2=A037 38 2e 35 31 3a 35 39 =C2=A030 30 0a 20 31 35 34 31 =
=C2=A0|78.51:5900. 1541|
<br>000013e0 =C2=A020 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0| =C2=A0remote-viewer |
<br>000013f0 =C2=A073 70 69 63 65 3a e2 81 =C2=A084 e2 81 84 72 6f 6f 74 =
=C2=A0|spice:......root|
<br>00001400 =C2=A040 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|@192.168.178.51:|
<br>00001410 =C2=A035 39 30 30 0a 20 31 35 =C2=A034 32 20 20 73 75 64 6f =
=C2=A0|5900. 1542 =C2=A0sudo|
<br>00001420 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 73 =
=C2=A0| remote-viewer s|
<br>00001430 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 72 6f 6f 74 40 =
=C2=A0|pice:......root@|
<br>00001440 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 35 =
=C2=A0|192.168.178.51:5|
<br>00001450 =C2=A039 30 30 0a 20 31 35 34 =C2=A033 20 20 72 65 6d 6f 74 =
=C2=A0|900. 1543 =C2=A0remot|
<br>00001460 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 73 70 69 63 65 3a e2 =
=C2=A0|e-viewer spice:.|
<br>00001470 =C2=A081 84 e2 81 84 72 6f 6f =C2=A074 40 31 39 32 2e 31 36 =
=C2=A0|.....root@192.16|
<br>00001480 =C2=A038 2e 31 37 38 2e 35 31 =C2=A03a 35 39 30 30 0a 20 31 =
=C2=A0|8.178.51:5900. 1|
<br>00001490 =C2=A035 34 34 20 20 72 65 6d =C2=A06f 74 65 2d 76 69 65 77 =
=C2=A0|544 =C2=A0remote-view|
<br>000014a0 =C2=A065 72 20 73 70 69 63 65 =C2=A03a e2 81 84 e2 81 84 31 =
=C2=A0|er spice:......1|
<br>000014b0 =C2=A039 32 2e 31 36 38 2e 31 =C2=A037 38 2e 35 31 3a 35 39 =
=C2=A0|92.168.178.51:59|
<br>000014c0 =C2=A030 30 0a 20 31 35 34 35 =C2=A020 20 72 65 6d 6f 74 65 =
=C2=A0|00. 1545 =C2=A0remote|
<br>000014d0 =C2=A02d 76 69 65 77 65 72 20 =C2=A073 70 69 63 65 3a e2 81 =
=C2=A0|-viewer spice:..|
<br>000014e0 =C2=A084 e2 81 84 72 6f 6f 74 =C2=A040 31 39 32 2e 31 36 38 =
=C2=A0|....root@192.168|
<br>000014f0 =C2=A02e 31 37 38 2e 35 31 3a =C2=A035 39 30 30 0a 20 31 35 =
=C2=A0|.178.51:5900. 15|
<br>00001500 =C2=A034 36 20 20 72 65 6d 6f =C2=A074 65 2d 76 69 65 77 65 =
=C2=A0|46 =C2=A0remote-viewe|
<br>00001510 =C2=A072 20 73 70 69 63 65 3a =C2=A0e2 81 84 e2 81 84 31 39 =
=C2=A0|r spice:......19|
<br>00001520 =C2=A032 2e 31 36 38 2e 31 37 =C2=A038 2e 35 31 3a 35 39 30 =
=C2=A0|2.168.178.51:590|
<br>00001530 =C2=A030 0a 20 31 35 34 38 20 =C2=A020 72 65 6d 6f 74 65 2d =
=C2=A0|0. 1548 =C2=A0remote-|
<br>00001540 =C2=A076 69 65 77 65 72 20 2d =C2=A02d 73 70 69 63 65 2d 64 =
=C2=A0|viewer --spice-d|
<br>00001550 =C2=A065 62 75 67 20 73 70 69 =C2=A063 65 3a e2 81 84 e2 81 =
=C2=A0|ebug spice:.....|
<br>00001560 =C2=A084 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|.192.168.178.51:|
<br>00001570 =C2=A035 39 30 30 0a 20 31 35 =C2=A035 31 20 20 73 75 64 6f =
=C2=A0|5900. 1551 =C2=A0sudo|
<br>00001580 =C2=A020 72 65 6d 6f 74 65 2d =C2=A076 69 65 77 65 72 20 73 =
=C2=A0| remote-viewer s|
<br>00001590 =C2=A070 69 63 65 3a e2 81 84 =C2=A0e2 81 84 73 65 72 76 65 =
=C2=A0|pice:......serve|
<br>000015a0 =C2=A072 40 31 39 32 2e 31 36 =C2=A038 2e 31 37 38 2e 35 31 =
=C2=A0|<a href=3D"mailto:r@192.168.178.51">r@192.168.178.51</a>|
<br>000015b0 =C2=A03a 35 39 30 30 0a 20 31 =C2=A035 35 32 20 20 73 75 64 =
=C2=A0|:5900. 1552 =C2=A0sud|
<br>000015c0 =C2=A06f 20 72 65 6d 6f 74 65 =C2=A02d 76 69 65 77 65 72 20 =
=C2=A0|o remote-viewer |
<br>000015d0 =C2=A073 70 69 63 65 3a e2 81 =C2=A084 e2 81 84 73 65 72 76 =
=C2=A0|spice:......serv|
<br>000015e0 =C2=A065 72 40 31 39 32 2e 31 =C2=A036 38 2e 31 37 38 2e 35 =
=C2=A0|<a href=3D"mailto:er@192.168.178.5">er@192.168.178.5</a>|
<br>000015f0 =C2=A031 3a 35 39 30 30 20 2d =C2=A02d 73 70 69 63 65 2d 64 =
=C2=A0|1:5900 --spice-d|
<br>00001600 =C2=A065 62 75 67 0a 20 31 35 =C2=A035 33 20 20 72 65 6d 6f =
=C2=A0|ebug. 1553 =C2=A0remo|
<br>00001610 =C2=A074 65 2d 76 69 65 77 65 =C2=A072 20 2d 2d 73 70 69 63 =
=C2=A0|te-viewer --spic|
<br>00001620 =C2=A065 2d 64 65 62 75 67 0a =C2=A020 31 35 36 30 20 20 4c =
=C2=A0|e-debug. 1560 =C2=A0L|
<br>00001630 =C2=A041 4e 47 3d 43 20 72 65 =C2=A06d 6f 74 65 2d 76 69 65 =
=C2=A0|ANG=3DC remote-vie|
<br>00001640 =C2=A077 65 72 20 73 70 69 63 =C2=A065 3a 2f 2f 31 39 32 2e =
=C2=A0|wer spice://192.|
<br>00001650 =C2=A031 36 38 2e 31 37 38 2e =C2=A035 31 3a 35 39 30 30 0a =
=C2=A0|168.178.51:5900.|
<br>00001660 =C2=A020 31 35 36 31 20 20 72 =C2=A065 6d 6f 74 65 2d 76 69 =
=C2=A0| 1561 =C2=A0remote-vi|
<br>00001670 =C2=A065 77 65 72 20 73 70 69 =C2=A063 65 3a 2f 2f 31 39 32 =
=C2=A0|ewer spice://192|
<br>00001680 =C2=A02e 31 36 38 2e 31 37 38 =C2=A02e 35 31 3a 35 39 30 30 =
=C2=A0|.168.178.51:5900|
<br>00001690 =C2=A00a 20 31 35 36 32 20 20 =C2=A073 70 69 63 65 3a 2f 2f =
=C2=A0|. 1562 =C2=A0spice://|
<br>000016a0 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 35 =
=C2=A0|192.168.178.51:5|
<br>000016b0 =C2=A039 30 30 0a 20 31 35 36 =C2=A033 20 20 72 65 6d 6f 74 =
=C2=A0|900. 1563 =C2=A0remot|
<br>000016c0 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 73 70 69 63 65 3a 2f =
=C2=A0|e-viewer spice:/|
<br>000016d0 =C2=A02f 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|/192.168.178.51:|
<br>000016e0 =C2=A035 39 30 30 0a 20 31 35 =C2=A036 34 20 20 76 69 72 74 =
=C2=A0|5900. 1564 =C2=A0virt|
<br>000016f0 =C2=A02d 76 69 65 77 65 72 20 =C2=A073 70 69 63 65 3a 2f 2f =
=C2=A0|-viewer spice://|
<br>00001700 =C2=A031 39 32 2e 31 36 38 2e =C2=A031 37 38 2e 35 31 3a 35 =
=C2=A0|192.168.178.51:5|
<br>00001710 =C2=A039 30 30 0a 20 31 35 36 =C2=A036 20 20 72 65 6d 6f 74 =
=C2=A0|900. 1566 =C2=A0remot|
<br>00001720 =C2=A065 2d 76 69 65 77 65 72 =C2=A020 73 70 69 63 65 3a 2f =
=C2=A0|e-viewer spice:/|
<br>00001730 =C2=A02f 31 39 32 2e 31 36 38 =C2=A02e 31 37 38 2e 35 31 3a =
=C2=A0|/192.168.178.51:|
<br>00001740 =C2=A035 39 30 30 0a 20 31 35 =C2=A037 31 20 20 73 75 64 6f =
=C2=A0|5900. 1571 =C2=A0sudo|
<br>00001750 =C2=A020 68 69 73 74 6f 72 79 =C2=A020 7c 20 67 72 65 70 20 =
=C2=A0| history | grep |
<br>00001760 =C2=A073 70 69 63 65 20 7c 20 =C2=A068 65 78 64 75 6d 70 20 =
=C2=A0|spice | hexdump |
<br>00001770 =C2=A02d 43 0a 20 31 35 37 34 =C2=A020 20 68 69 73 74 6f 72 =
=C2=A0|-C. 1574 =C2=A0histor|
<br>00001780 =C2=A079 20 7c 20 67 72 65 70 =C2=A020 73 70 69 63 65 20 7c =
=C2=A0|y | grep spice ||
<br>00001790 =C2=A020 68 65 78 64 75 6d 70 =C2=A020 2d 43 0a =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| hexdump=
 -C.|
<br>0000179c
<br><span style=3D"font-weight:bold;color:rgb(84,255,84);background-color:r=
gb(255,255,255)">stony@Aperture-Science</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">:</span><span style=3D"font-weight:bo=
ld;color:rgb(84,84,255);background-color:rgb(255,255,255)">~</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">$ </span><br>
<br></span></div><div><span style=3D"font-family:monospace">For now I will =
fade into the shadow of userdom again :)</span></div><div><span style=3D"fo=
nt-family:monospace"><br></span></div><div><span style=3D"font-family:monos=
pace">Stefan<br></span></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am Fr., 18. Nov. 2022 um 11:25=C2=A0Uhr schri=
eb Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail=
.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il=
 giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein<br>
&lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@gm=
ail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hi Frediano, Hi List,<br>
&gt;<br>
&gt; after I was able to start the virtual machine with the GUI I tried you=
r command<br>
&gt;<br>
&gt; LANG=3DC remote-viewer spice://<a href=3D"http://192.168.178.51:5900" =
rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a><br>
&gt;<br>
&gt; and it started right up into the virtual machine.<br>
&gt;<br>
&gt; HOWEVER<br>
&gt;<br>
&gt; even<br>
&gt;<br>
&gt; remote-viewer spice://<a href=3D"http://192.168.178.51:5900" rel=3D"no=
referrer" target=3D"_blank">192.168.178.51:5900</a><br>
&gt;<br>
&gt; now opens the virtual machine - without problems. (Yeah - i am stunned=
 myself)<br>
&gt;<br>
&gt; I slept over it then tried again today - thinking it never worked agai=
n the day after...<br>
&gt;<br>
&gt; Result is that I am able to open up the VM just fine....<br>
&gt;<br>
&gt; This is the worst - something works without changing anything so I hav=
e no chance of knowing what the problem is/was in the first place<br>
&gt;<br>
&gt; At a loss for words,<br>
&gt;<br>
&gt; Stefan<br>
&gt;<br>
<br>
Well, problem solved :-)<br>
<br>
I would check with a command like &quot;history | grep spice | hexdump -C&q=
uot;<br>
(you can post the output) for some weird input. The errors you<br>
reported are basically (or at least they should) parsing errors for<br>
the URI you passed.<br>
<br>
Frediano<br>
<br>
<br>
<br>
&gt; Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein &lt;<a h=
ref=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@gmail.com<=
/a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; Some details:<br>
&gt;&gt; Operating System: Kubuntu 22.04<br>
&gt;&gt; KDE Plasma Version: 5.24.6<br>
&gt;&gt; KDE Frameworks Version: 5.92.0<br>
&gt;&gt; Qt Version: 5.15.3<br>
&gt;&gt; Kernel Version: 5.15.0-53-generic (64-bit)<br>
&gt;&gt; Graphics Platform: X11<br>
&gt;&gt; Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor<br>
&gt;&gt; Memory: 15.6 GiB of RAM<br>
&gt;&gt; Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2<br>
&gt;&gt;<br>
&gt;&gt; Opening a Konsole &quot;bash&quot;:<br>
&gt;&gt;<br>
&gt;&gt; Konsole<br>
&gt;&gt; Version 21.12.3<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Locale:<br>
&gt;&gt;<br>
&gt;&gt; stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D LC=
_CTYPE=3D&quot;de_DE.UTF-8&quot; LC_NUMERIC=3D&quot;de_DE.UTF-8&quot; LC_TI=
ME=3D&quot;de_DE.UTF-8&quot; LC_COLLATE=3D&quot;de_DE.UTF-8&quot; LC_MONETA=
RY=3D&quot;de_DE.UTF-8&quot; LC_MESSAGES=3D&quot;de_DE.UTF-8&quot; LC_PAPER=
=3D&quot;de_DE.UTF-8&quot; LC_NAME=3D&quot;de_DE.UTF-8&quot; LC_ADDRESS=3D&=
quot;de_DE.UTF-8&quot; LC_TELEPHONE=3D&quot;de_DE.UTF-8&quot; LC_MEASUREMEN=
T=3D&quot;de_DE.UTF-8&quot; LC_IDENTIFICATION=3D&quot;de_DE.UTF-8&quot; LC_=
ALL=3D<br>
&gt;&gt;<br>
&gt;&gt; I will try to open it today at noon - during my lunch break.<br>
&gt;&gt; (ATM I am glad it works because i gotta work from home and this wi=
ndows-machine is the only way to connect to the Server in my company for me=
)<br>
&gt;&gt;<br>
&gt;&gt; I will get back to you in approximately two hours.<br>
&gt;&gt;<br>
&gt;&gt; Stefan<br>
&gt;&gt;<br>
&gt;&gt; Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio &lt;<a =
href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>=
&gt;:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein<br=
>
&gt;&gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">=
linuxstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hi,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; no this is the normal forward-slash with &quot;shift+7&qu=
ot; on the german keyboard - googlemail messed it up translating it to some=
thing else.<br>
&gt;&gt;&gt; &gt; The URL=C2=A0 is normally typed.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; This is really weird and I will try to help you as much a=
s I can to get to the bottom of it.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Stefan<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; That&#39;s pretty weird. That code has been there for ages. I =
tried but no<br>
&gt;&gt;&gt; problems for me.<br>
&gt;&gt;&gt; This operating system and version are you using?<br>
&gt;&gt;&gt; Which shell?<br>
&gt;&gt;&gt; Maybe it&#39;s the locale? Try launching something like &quot;=
LANG=3DC<br>
&gt;&gt;&gt; remote-viewer spice://<a href=3D"http://192.168.178.51:5900" r=
el=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a>&quot; (LANG env=
ironment change)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Frediano<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Zigli=
o &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmai=
l.com</a>&gt;:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silbe=
rstein<br>
&gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D=
"_blank">linuxstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Hello again,<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; so - yesterday I worked from home - as I wrote I=
 was able to connect by specifying the user root with &quot;remote-viewer s=
pice://<a href=3D"http://root@192.168.178.51:5900" rel=3D"noreferrer" targe=
t=3D"_blank">root@192.168.178.51:5900</a>&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Today I want to connect the exact same way (yest=
erday i simply closed the remote-viewer window and the server keept on runn=
ing so the windows-VM was running the whole night) - and I can not connect.=
<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Error Message on the console=C2=A0 &quot;** (rem=
ote-viewer:6146): CRITICAL **: 07:55:52.853: virt_viewer_util_extract_host:=
 assertion &#39;uri !=3D NULL&#39; failed&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Error Message on the popup says translated: Conn=
ectiontype could not be determined by URI.<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 That means that the code was not able to=
 parse the URI.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; IP of the server itself is 192.168.178.51<br>
&gt;&gt;&gt; &gt;&gt; &gt; IP of the Virtual Machine is 192.168.178.64 and =
i pingable<br>
&gt;&gt;&gt; &gt;&gt; &gt; Port 5900 on the server is open: 5900/tcp open=
=C2=A0 vnc<br>
&gt;&gt;&gt; &gt;&gt; &gt; remote-viewer --spice-debug spice:=E2=81=84=E2=
=81=84<a href=3D"http://192.168.178.51:5900" rel=3D"noreferrer" target=3D"_=
blank">192.168.178.51:5900</a> does not produce a more verbose output :(<br=
>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; In this example you are not using ASCII slashes (//),=
 maybe that&#39;s the problem.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Update in the meantime<br>
&gt;&gt;&gt; &gt;&gt; &gt; But maybe this is helpful to you:<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; I simply started &quot;remote-viewer --spice-deb=
ug&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Then i got the GUI (which i wasnt even aware it =
existed).<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; When I choose the same entry on that list - I AM=
 able to connect.<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; So the error only exists only when I try to conn=
ect via command line?! (This is when I am able to connect tomorrow via GUI =
;) )<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Shouldn&#39;t this be the same ?<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; I mabe I can help - maybe this is indeed a bug?<=
br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Stefan<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Frediano<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victo=
r Toso &lt;<a href=3D"mailto:victortoso@redhat.com" target=3D"_blank">victo=
rtoso@redhat.com</a>&gt;:<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; On Wed, Nov 16, 2022 at 09:27:21AM +0100, St=
efan Silberstein wrote:<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; I appreciate the time to answer me.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; In the meantime (out of desperation bec=
ause i needed the virtualmachine for<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; work) I gave it a go with specifying ro=
ot as user and not the servers<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; username &quot;server&quot;.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; I was able to connect to the virtual Wi=
ndows10 installation with<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; remote-viewer spice://<a href=3D"http:/=
/root@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">root@192.16=
8.178.51:5900</a><br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; Cool<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; But again - then I dont unterstand why =
it worked as user and<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; later on with specifying the user later=
 on (which doesn&#39;t work<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; right now anymore)<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; So it is a permissions problem on my si=
de and I successfully<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; wasted your time. :/<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Sorry about that.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; Don&#39;t worry about that. Happy to hear it=
 worked.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; This happens when &quot;users&quot; try=
 to play with the big boys toys :D<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Have a nice day you all and thanks for =
your time.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; You too.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; Cheers,<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Stefan<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:21 Uhr schr=
ieb Victor Toso &lt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:victortoso@redhat.com=
" target=3D"_blank">victortoso@redhat.com</a>&gt;:<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Hi Stefan,<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; On Tue, Nov 15, 2022 at 09:53:05PM=
 +0100, Stefan Silberstein wrote:<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Hello developers,<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I can imagine that this will =
be an annoying question for you -<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; so I apologize in advance.<br=
>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I am a user - with a longer h=
istory with linux BUT i am<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; completely new to virtualizat=
ion.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that I got a =
server donated to me I wanted to<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; give it a go and it worked li=
ke a charm.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Installed virt-manager, insta=
lled Windows10=C2=A0 connected with<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; virt-manager - absolutely no =
problem.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that I need d=
ual monitors I learned that I<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; could add another display and=
 connect with spice - and it<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; worked immediately.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; BUT - without me changing any=
thing (consciously) I wasn&#39;t able<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; to connect to the virtual mac=
hine the next week.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; It refuses with &quot;Verbind=
ungstyp konnte nicht von URI ermittelt werden&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; (Connection type could not be=
 determined by URI)<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Then i tried to connect with =
sudo and specifying the user in<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; the command line and it once =
again connected:<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; sudo remote-viewer=C2=A0 spic=
e:=E2=81=84=E2=81=84<a href=3D"http://server@192.168.178.51:5900" rel=3D"no=
referrer" target=3D"_blank">server@192.168.178.51:5900</a><br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Perhaps the URL is the problem. If=
 the IP is 192.168.178.51 and<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; the port for the VM is 5900, then =
try<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer s=
pice://<a href=3D"http://192.168.178.51:5900" rel=3D"noreferrer" target=3D"=
_blank">192.168.178.51:5900</a><br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; If server is a dns that can be res=
olved, should be fine to use it<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; instead of ip address<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer s=
pice://server:5900<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; And now - again without chang=
ing anything - it doesn&#39;t connect<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; with that command as well.<br=
>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I have sadly NO clue whatsoev=
er where to even search for a<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; solution - the internet didn&=
#39;t help me here...<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Do you have any hint at all w=
hat I might do wrong here?<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; The machine is available - th=
e port is open and visible<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; PORT=C2=A0 =C2=A0 =C2=A0STATE=
 SERVICE<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 22/tcp=C2=A0 =C2=A0open=C2=A0=
 ssh<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 80/tcp=C2=A0 =C2=A0open=C2=A0=
 http<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 3389/tcp open=C2=A0 ms-wbt-se=
rver<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 5900/tcp open=C2=A0 vnc<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; ufw on the server is shut dow=
n.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; ANY help would be greatly app=
reciated.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; You can get more verbose informati=
on of issues with --spice-debug<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; command line option too.<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Cheers,<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Victor<br>
&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
</blockquote></div>

--0000000000007b75e605edbc7275--
