Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17613F8D9E
	for <lists+spice-devel@lfdr.de>; Thu, 26 Aug 2021 20:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303126E897;
	Thu, 26 Aug 2021 18:09:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 5697 seconds by postgrey-1.36 at gabe;
 Thu, 26 Aug 2021 18:09:35 UTC
Received: from forward501j.mail.yandex.net (forward501j.mail.yandex.net
 [5.45.198.251])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378D76E897
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 18:09:35 +0000 (UTC)
Received: from myt5-ec37e7b64129.qloud-c.yandex.net
 (myt5-ec37e7b64129.qloud-c.yandex.net [IPv6:2a02:6b8:c05:ab:0:640:ec37:e7b6])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id 2B04D3380460;
 Thu, 26 Aug 2021 21:09:33 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [89.179.125.64])
 by myt5-ec37e7b64129.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 W9llf13IDGk1-9WIWJFCv; Thu, 26 Aug 2021 21:09:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1630001372; bh=P+unHFL9JlwBtuj2S1i4YzgpRE6J8l7AwbMFPqA5OKk=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=E43uiKGYKNbl8IbgG11XsQw6xQC7M96/No+tsAXQlV0m+oBm5n5lWPkdp2q58keYc
 ffn/MY0k2Bjdsm5PwgbM5oYGCMY8IQKEhVU1lQ1+OXku8s7a1WbEuKDeYc5taEy+X1
 OhCg6cjsKe/DGS6fZLBu4qAMq/exCkT5N30hQYOg=
Authentication-Results: myt5-ec37e7b64129.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by myt5-29e8dca34993.qloud-c.yandex.net with HTTP;
 Thu, 26 Aug 2021 21:09:32 +0300
From: ole-krutov@yandex.ru
To: Uri Lublin <uril@redhat.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Cc: Victor Toso <victortoso@redhat.com>
In-Reply-To: <CAAg9qJ0-ez3X-KoMCEUOJU9eXx=ZgdjdTEQThD4ovFjy0ZH22Q@mail.gmail.com>
References: <260041629725350@mail.yandex.ru>
 <20210823153432.3nuxkasg7tr5zz23@tapioca>
 <CAAg9qJ0-ez3X-KoMCEUOJU9eXx=ZgdjdTEQThD4ovFjy0ZH22Q@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 26 Aug 2021 21:09:32 +0300
Message-Id: <207841630000856@mail.yandex.ru>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8
Subject: Re: [Spice-devel] No mouse with nvidia driver (spice-vdagent not
 working)
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

PGRpdj48ZGl2PkhpLCBoZXJlIGlzIFZNIHN0YXJ0dXAgbG9nOjwvZGl2PjxkaXY+wqA8L2Rpdj48
ZGl2PnN0YXJ0aW5nIHVwIGxpYnZpcnQgdmVyc2lvbjogNy4wLjAsIHBhY2thZ2U6IDMgKEFuZHJl
YSBCb2xvZ25hbmkgJmx0O2VvZkBraXl1a28ub3JnJmd0OyBGcmksIDI2IEZlYiAyMDIxIDE2OjQ2
OjM0ICswMTAwKSwgcWVtdSB2ZXJzaW9uOiA1LjIuMERlYmlhbiAxOjUuMitkZnNnLTEwLCBrZXJu
ZWw6IDUuOS4wLTItYW1kNjQsIGhvc3RuYW1lOiA3YjMxNTNkYS1hZGFlLTQyZTUtYjI3Ny1mYWEz
MDlhZTFmZTM8L2Rpdj48ZGl2PkxDX0FMTD1DIFw8L2Rpdj48ZGl2PlBBVEg9L3Vzci9sb2NhbC9z
YmluOi91c3IvbG9jYWwvYmluOi91c3Ivc2JpbjovdXNyL2Jpbjovc2JpbjovYmluIFw8L2Rpdj48
ZGl2PkhPTUU9L3Zhci9saWIvbGlidmlydC9xZW11L2RvbWFpbi05LWJkZGY5YjM5LTQwMTUtNDJh
Mi04IFw8L2Rpdj48ZGl2PlhER19EQVRBX0hPTUU9L3Zhci9saWIvbGlidmlydC9xZW11L2RvbWFp
bi05LWJkZGY5YjM5LTQwMTUtNDJhMi04Ly5sb2NhbC9zaGFyZSBcPC9kaXY+PGRpdj5YREdfQ0FD
SEVfSE9NRT0vdmFyL2xpYi9saWJ2aXJ0L3FlbXUvZG9tYWluLTktYmRkZjliMzktNDAxNS00MmEy
LTgvLmNhY2hlIFw8L2Rpdj48ZGl2PlhER19DT05GSUdfSE9NRT0vdmFyL2xpYi9saWJ2aXJ0L3Fl
bXUvZG9tYWluLTktYmRkZjliMzktNDAxNS00MmEyLTgvLmNvbmZpZyBcPC9kaXY+PGRpdj5RRU1V
X0FVRElPX0RSVj1zcGljZSBcPC9kaXY+PGRpdj4vdXNyL2Jpbi9xZW11LXN5c3RlbS14ODZfNjQg
XDwvZGl2PjxkaXY+LW5hbWUgZ3Vlc3Q9YmRkZjliMzktNDAxNS00MmEyLThkZTEtMzU4ZmJmZTM5
ZGFlLGRlYnVnLXRocmVhZHM9b24gXDwvZGl2PjxkaXY+LVMgXDwvZGl2PjxkaXY+LW9iamVjdCBz
ZWNyZXQsaWQ9bWFzdGVyS2V5MCxmb3JtYXQ9cmF3LGZpbGU9L3Zhci9saWIvbGlidmlydC9xZW11
L2RvbWFpbi05LWJkZGY5YjM5LTQwMTUtNDJhMi04L21hc3Rlci1rZXkuYWVzIFw8L2Rpdj48ZGl2
Pi1tYWNoaW5lIHBjLXEzNS01LjIsYWNjZWw9a3ZtLHVzYj1vZmYsZHVtcC1ndWVzdC1jb3JlPW9m
ZiBcPC9kaXY+PGRpdj4tY3B1IEJyb2Fkd2VsbC1JQlJTLHZtZT1vbixzcz1vbix2bXg9b24scGRj
bT1vbixmMTZjPW9uLHJkcmFuZD1vbixoeXBlcnZpc29yPW9uLGFyYXQ9b24sdHNjLWFkanVzdD1v
bix1bWlwPW9uLG1kLWNsZWFyPW9uLHN0aWJwPW9uLGFyY2gtY2FwYWJpbGl0aWVzPW9uLHNzYmQ9
b24seHNhdmVvcHQ9b24scGRwZTFnYj1vbixhYm09b24saWJwYj1vbixhbWQtc3RpYnA9b24sYW1k
LXNzYmQ9b24sc2tpcC1sMWRmbC12bWVudHJ5PW9uLHBzY2hhbmdlLW1jLW5vPW9uLGh2LXZlbmRv
PC9kaXY+PGRpdj5yLWlkPWVjcHZlaWxjbG91ZCBcPC9kaXY+PGRpdj4tbSBzaXplPTUyNDI4ODBr
LHNsb3RzPTE2LG1heG1lbT02NTg0OTM0NGsgXDwvZGl2PjxkaXY+LW92ZXJjb21taXQgbWVtLWxv
Y2s9b2ZmIFw8L2Rpdj48ZGl2Pi1zbXAgNCxzb2NrZXRzPTEsZGllcz0xLGNvcmVzPTQsdGhyZWFk
cz0xIFw8L2Rpdj48ZGl2Pi1vYmplY3QgbWVtb3J5LWJhY2tlbmQtcmFtLGlkPXJhbS1ub2RlMCxz
aXplPTUzNjg3MDkxMjAgXDwvZGl2PjxkaXY+LW51bWEgbm9kZSxub2RlaWQ9MCxjcHVzPTAtMyxt
ZW1kZXY9cmFtLW5vZGUwIFw8L2Rpdj48ZGl2Pi11dWlkIGJkZGY5YjM5LTQwMTUtNDJhMi04ZGUx
LTM1OGZiZmUzOWRhZSBcPC9kaXY+PGRpdj4tbm8tdXNlci1jb25maWcgXDwvZGl2PjxkaXY+LW5v
ZGVmYXVsdHMgXDwvZGl2PjxkaXY+LWNoYXJkZXYgc29ja2V0LGlkPWNoYXJtb25pdG9yLGZkPTQx
LHNlcnZlcixub3dhaXQgXDwvZGl2PjxkaXY+LW1vbiBjaGFyZGV2PWNoYXJtb25pdG9yLGlkPW1v
bml0b3IsbW9kZT1jb250cm9sIFw8L2Rpdj48ZGl2Pi1ydGMgYmFzZT11dGMgXDwvZGl2PjxkaXY+
LW5vLXNodXRkb3duIFw8L2Rpdj48ZGl2Pi1ib290IHN0cmljdD1vbiBcPC9kaXY+PGRpdj4tZGV2
aWNlIHBjaWUtcm9vdC1wb3J0LHBvcnQ9MHg4LGNoYXNzaXM9MSxpZD1wY2kuMSxidXM9cGNpZS4w
LG11bHRpZnVuY3Rpb249b24sYWRkcj0weDEgXDwvZGl2PjxkaXY+LWRldmljZSBwY2llLXJvb3Qt
cG9ydCxwb3J0PTB4OSxjaGFzc2lzPTIsaWQ9cGNpLjIsYnVzPXBjaWUuMCxhZGRyPTB4MS4weDEg
XDwvZGl2PjxkaXY+LWRldmljZSBwY2llLXJvb3QtcG9ydCxwb3J0PTB4YSxjaGFzc2lzPTMsaWQ9
cGNpLjMsYnVzPXBjaWUuMCxhZGRyPTB4MS4weDIgXDwvZGl2PjxkaXY+LWRldmljZSBwY2llLXJv
b3QtcG9ydCxwb3J0PTB4YixjaGFzc2lzPTQsaWQ9cGNpLjQsYnVzPXBjaWUuMCxhZGRyPTB4MS4w
eDMgXDwvZGl2PjxkaXY+LWRldmljZSBwY2llLXJvb3QtcG9ydCxwb3J0PTB4YyxjaGFzc2lzPTUs
aWQ9cGNpLjUsYnVzPXBjaWUuMCxhZGRyPTB4MS4weDQgXDwvZGl2PjxkaXY+LWRldmljZSBwY2ll
LXJvb3QtcG9ydCxwb3J0PTB4ZCxjaGFzc2lzPTYsaWQ9cGNpLjYsYnVzPXBjaWUuMCxhZGRyPTB4
MS4weDUgXDwvZGl2PjxkaXY+LWRldmljZSBwY2llLXJvb3QtcG9ydCxwb3J0PTB4ZSxjaGFzc2lz
PTcsaWQ9cGNpLjcsYnVzPXBjaWUuMCxhZGRyPTB4MS4weDYgXDwvZGl2PjxkaXY+LWRldmljZSBw
Y2llLXBjaS1icmlkZ2UsaWQ9cGNpLjgsYnVzPXBjaS4xLGFkZHI9MHgwIFw8L2Rpdj48L2Rpdj48
ZGl2PjxkaXY+LWRldmljZSBuZWMtdXNiLXhoY2ksaWQ9dXNiLGJ1cz1wY2kuMyxhZGRyPTB4MCBc
PC9kaXY+PGRpdj4tZGV2aWNlIHZpcnRpby1zZXJpYWwtcGNpLGlkPXZpcnRpby1zZXJpYWwwLGJ1
cz1wY2kuNCxhZGRyPTB4MCBcPC9kaXY+PGRpdj4tYmxvY2tkZXYgJ3siZHJpdmVyIjoiZmlsZSIs
ImZpbGVuYW1lIjoiL3N0b3JhZ2VzL3pmcy96ZnNfZmMvYzNkYmYzMjktOTJiYS00NDM2LThiNDYt
NWYyZGVlNjE0OGNhL3ZkaXNrLnFjb3cyIiwibm9kZS1uYW1lIjoibGlidmlydC0yLXN0b3JhZ2Ui
LCJjYWNoZSI6eyJkaXJlY3QiOnRydWUsIm5vLWZsdXNoIjpmYWxzZX0sImF1dG8tcmVhZC1vbmx5
Ijp0cnVlLCJkaXNjYXJkIjoidW5tYXAifScgXDwvZGl2PjxkaXY+LWJsb2NrZGV2ICd7Im5vZGUt
bmFtZSI6ImxpYnZpcnQtMi1mb3JtYXQiLCJyZWFkLW9ubHkiOmZhbHNlLCJjYWNoZSI6eyJkaXJl
Y3QiOnRydWUsIm5vLWZsdXNoIjpmYWxzZX0sImRyaXZlciI6InFjb3cyIiwiZmlsZSI6ImxpYnZp
cnQtMi1zdG9yYWdlIiwiYmFja2luZyI6bnVsbH0nIFw8L2Rpdj48ZGl2Pi1kZXZpY2UgdmlydGlv
LWJsay1wY2ksYnVzPXBjaS41LGFkZHI9MHgwLGRyaXZlPWxpYnZpcnQtMi1mb3JtYXQsaWQ9dmly
dGlvLWRpc2swLGJvb3RpbmRleD0xLHdyaXRlLWNhY2hlPW9uLHNlcmlhbD1jM2RiZjMyOS05MmJh
LTQ0MzYtOCBcPC9kaXY+PGRpdj4tYmxvY2tkZXYgJ3siZHJpdmVyIjoiZmlsZSIsImZpbGVuYW1l
IjoiL3N0b3JhZ2VzL2xvY2FsL2RlZmF1bHQvX0lTTy9DZW50T1MtOC40LjIxMDUteDg2XzY0LWJv
b3QuaXNvIiwibm9kZS1uYW1lIjoibGlidmlydC0xLXN0b3JhZ2UiLCJhdXRvLXJlYWQtb25seSI6
dHJ1ZSwiZGlzY2FyZCI6InVubWFwIn0nIFw8L2Rpdj48ZGl2Pi1ibG9ja2RldiAneyJub2RlLW5h
bWUiOiJsaWJ2aXJ0LTEtZm9ybWF0IiwicmVhZC1vbmx5Ijp0cnVlLCJkcml2ZXIiOiJyYXciLCJm
aWxlIjoibGlidmlydC0xLXN0b3JhZ2UifScgXDwvZGl2PjxkaXY+LWRldmljZSBpZGUtY2QsYnVz
PWlkZS4wLGRyaXZlPWxpYnZpcnQtMS1mb3JtYXQsaWQ9c2F0YTAtMC0wLGJvb3RpbmRleD0yIFw8
L2Rpdj48ZGl2Pi1uZXRkZXYgdGFwLGZkPTQ2LGlkPWhvc3RuZXQwLHZob3N0PW9uLHZob3N0ZmQ9
NDggXDwvZGl2PjxkaXY+LWRldmljZSB2aXJ0aW8tbmV0LXBjaSxob3N0X210dT0xNDQ2LG5ldGRl
dj1ob3N0bmV0MCxpZD1uZXQwLG1hYz0wMjpmZjpmMDoyMjowMjpmMyxidXM9cGNpLjIsYWRkcj0w
eDAgXDwvZGl2PjxkaXY+LWNoYXJkZXYgc3BpY2V2bWMsaWQ9Y2hhcmNoYW5uZWwwLG5hbWU9dmRh
Z2VudCBcPC9kaXY+PGRpdj4tZGV2aWNlIHZpcnRzZXJpYWxwb3J0LGJ1cz12aXJ0aW8tc2VyaWFs
MC4wLG5yPTEsY2hhcmRldj1jaGFyY2hhbm5lbDAsaWQ9Y2hhbm5lbDAsbmFtZT1jb20ucmVkaGF0
LnNwaWNlLjAgXDwvZGl2PjxkaXY+LWNoYXJkZXYgc3BpY2Vwb3J0LGlkPWNoYXJjaGFubmVsMSxu
YW1lPW9yZy5zcGljZS1zcGFjZS53ZWJkYXYuMCBcPC9kaXY+PGRpdj4tZGV2aWNlIHZpcnRzZXJp
YWxwb3J0LGJ1cz12aXJ0aW8tc2VyaWFsMC4wLG5yPTIsY2hhcmRldj1jaGFyY2hhbm5lbDEsaWQ9
Y2hhbm5lbDEsbmFtZT1vcmcuc3BpY2Utc3BhY2Uud2ViZGF2LjAgXDwvZGl2PjxkaXY+LWNoYXJk
ZXYgc3BpY2Vwb3J0LGlkPWNoYXJjaGFubmVsMixuYW1lPW9yZy5zcGljZS1zcGFjZS5zdHJlYW0u
MCBcPC9kaXY+PGRpdj4tZGV2aWNlIHZpcnRzZXJpYWxwb3J0LGJ1cz12aXJ0aW8tc2VyaWFsMC4w
LG5yPTMsY2hhcmRldj1jaGFyY2hhbm5lbDIsaWQ9Y2hhbm5lbDIsbmFtZT1vcmcuc3BpY2Utc3Bh
Y2Uuc3RyZWFtLjAgXDwvZGl2PjxkaXY+LWNoYXJkZXYgc29ja2V0LGlkPWNoYXJjaGFubmVsMyxm
ZD00OSxzZXJ2ZXIsbm93YWl0IFw8L2Rpdj48ZGl2Pi1kZXZpY2UgdmlydHNlcmlhbHBvcnQsYnVz
PXZpcnRpby1zZXJpYWwwLjAsbnI9NCxjaGFyZGV2PWNoYXJjaGFubmVsMyxpZD1jaGFubmVsMyxu
YW1lPW9yZy5xZW11Lmd1ZXN0X2FnZW50LjAgXDwvZGl2PjxkaXY+LWNoYXJkZXYgc29ja2V0LGlk
PWNoYXJjaGFubmVsNCxmZD01MixzZXJ2ZXIsbm93YWl0IFw8L2Rpdj48ZGl2Pi1kZXZpY2Ugdmly
dHNlcmlhbHBvcnQsYnVzPXZpcnRpby1zZXJpYWwwLjAsbnI9NSxjaGFyZGV2PWNoYXJjaGFubmVs
NCxpZD1jaGFubmVsNCxuYW1lPW9yZy5tYXNodGFiLnZlaWwgXDwvZGl2PjxkaXY+LXNwaWNlIHBv
cnQ9NTAwMDIsYWRkcj0wLjAuMC4wLGFnZW50LW1vdXNlPW9uLGltYWdlLWNvbXByZXNzaW9uPWF1
dG9fZ2x6LGpwZWctd2FuLWNvbXByZXNzaW9uPWF1dG8semxpYi1nbHotd2FuLWNvbXByZXNzaW9u
PWF1dG8scGxheWJhY2stY29tcHJlc3Npb249b24sc3RyZWFtaW5nLXZpZGVvPWZpbHRlcixzZWFt
bGVzcy1taWdyYXRpb249b24gXDwvZGl2PjxkaXY+LXZuYyAwLjAuMC4wOjQ0MTAzLHNoYXJlPWFs
bG93LWV4Y2x1c2l2ZSxwYXNzd29yZCBcPC9kaXY+PGRpdj4tZGV2aWNlIGludGVsLWhkYSxpZD1z
b3VuZDAsYnVzPXBjaS44LGFkZHI9MHgxIFw8L2Rpdj48ZGl2Pi1kZXZpY2UgaGRhLW1pY3JvLGlk
PXNvdW5kMC1jb2RlYzAsYnVzPXNvdW5kMC4wLGNhZD0wIFw8L2Rpdj48ZGl2Pi1kZXZpY2UgdmZp
by1wY2ktbm9ob3RwbHVnLGlkPWhvc3RkZXYwLHN5c2ZzZGV2PS9zeXMvYnVzL21kZXYvZGV2aWNl
cy85ZmZmMzU5ZC01NjEwLTQ5NWYtYmNkMi1lYmY1NzFhMGZiYmEsZGlzcGxheT1vbixidXM9cGNp
LjYsYWRkcj0weDAscmFtZmI9b24gXDwvZGl2PjxkaXY+LWRldmljZSB2aXJ0aW8tYmFsbG9vbi1w
Y2ksaWQ9YmFsbG9vbjAsYnVzPXBjaS43LGFkZHI9MHgwIFw8L2Rpdj48ZGl2Pi1zYW5kYm94IG9u
LG9ic29sZXRlPWRlbnksZWxldmF0ZXByaXZpbGVnZXM9ZGVueSxzcGF3bj1kZW55LHJlc291cmNl
Y29udHJvbD1kZW55IFw8L2Rpdj48ZGl2Pi1tc2cgdGltZXN0YW1wPW9uPC9kaXY+PGRpdj7CoDwv
ZGl2PjwvZGl2PjxkaXY+MjMuMDguMjAyMSwgMjA6MzksICJVcmkgTHVibGluIiAmbHQ7dXJpbEBy
ZWRoYXQuY29tJmd0Ozo8L2Rpdj48YmxvY2txdW90ZT48ZGl2PjxkaXY+SGksPC9kaXY+PGRpdj7C
oDwvZGl2PjxkaXY+V2hhdCBWaWN0b3Igc2FpZCBidXQgYWxzbyBtb3JlIGJlbG93LjwvZGl2Pjxk
aXY+wqA8L2Rpdj7CoDxkaXY+PGRpdj5PbiBNb24sIEF1ZyAyMywgMjAyMSBhdCA2OjM0IFBNIFZp
Y3RvciBUb3NvICZsdDs8YSBocmVmPSJtYWlsdG86dmljdG9ydG9zb0ByZWRoYXQuY29tIiByZWw9
Im5vb3BlbmVyIG5vcmVmZXJyZXIiPnZpY3RvcnRvc29AcmVkaGF0LmNvbTwvYT4mZ3Q7IHdyb3Rl
OjwvZGl2PjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXItbGVmdC1jb2xvcjpyZ2IoIDIwNCAsIDIw
NCAsIDIwNCApO2JvcmRlci1sZWZ0LXN0eWxlOnNvbGlkO2JvcmRlci1sZWZ0LXdpZHRoOjFweDtt
YXJnaW46MHB4IDBweCAwcHggMC44ZXg7cGFkZGluZy1sZWZ0OjFleCI+SGksPGJyIC8+PGJyIC8+
T24gTW9uLCBBdWcgMjMsIDIwMjEgYXQgMDU6MTQ6MDBQTSArMDMwMCwgPGEgaHJlZj0ibWFpbHRv
Om9sZS1rcnV0b3ZAeWFuZGV4LnJ1IiByZWw9Im5vb3BlbmVyIG5vcmVmZXJyZXIiIHRhcmdldD0i
X2JsYW5rIj5vbGUta3J1dG92QHlhbmRleC5ydTwvYT4gd3JvdGU6PGJyIC8+Jmd0OyAtIG52aWRp
YSB2R1BVIHdpdGggcHJvcHJpZXRhcnkgZHJpdmVyIGlzIHRoZSBvbmx5IHZpZGVvPGJyIC8+Jmd0
OyBhZGFwdGVyLjxiciAvPjxiciAvPlRoaXMgaXMgYSBrbm93IGlzc3VlLiBOVklESUEgZHJpdmVy
IGRvZXMgbm90IHByb3ZpZGUgYSBndWVzdDxiciAvPmN1cnNvci4gWW91IGNhbiBwcm9iYWJseSB2
ZXJpZnkgaXQgd2l0aCBWTkMgdG9vLjwvYmxvY2txdW90ZT48YmxvY2txdW90ZSBzdHlsZT0iYm9y
ZGVyLWxlZnQtY29sb3I6cmdiKCAyMDQgLCAyMDQgLCAyMDQgKTtib3JkZXItbGVmdC1zdHlsZTpz
b2xpZDtib3JkZXItbGVmdC13aWR0aDoxcHg7bWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O3BhZGRp
bmctbGVmdDoxZXgiPjxiciAvPlRoZSBwcm9wZXIgZml4IGlzIHRvIE5WSURJQSBpbXBsZW1lbnQg
dGhpcyBmZWF0dXJlLCBvdGhlcndpc2UgYWxsPGJyIC8+d2UgaGF2ZSBpcyB3b3JrYXJvdW5kcy48
YnIgLz48YnIgLz5Zb3UgY2FuIHRyeSBydW5uaW5nIGEgc3BpY2UtZ3RrIGJhc2VkIGNsaWVudCBs
aWtlIHJlbW90ZS12aWV3ZXI8YnIgLz53aXRoIFNQSUNFX0RFQlVHX0NVUlNPUj0xIGFzIHRoYXQg
bWlnaHQgZ2l2ZSB5b3Ugc29tZXRoaW5nPGJyIC8+cmVuZGVyZWQgaW4gdGhlIGNsaWVudCBzaWRl
LjwvYmxvY2txdW90ZT48ZGl2PsKgPC9kaXY+PGRpdj48ZGl2PlllYWgsIGl0J3MgdGhlIHNhbWUg
Zm9yIFZOQy48L2Rpdj48ZGl2PlJlY2VudGx5IGEgY29tbWFuZCBsaW5lIG9wdGlvbiB3YXMgYWRk
ZWQgdG8gdmlydC12aWV3ZXIvcmVtb3RlLXZpZXdlciBmb3IgVk5DLjwvZGl2PjxkaXY+PGEgaHJl
Zj0iaHR0cHM6Ly9naXRsYWIuY29tL3ZpcnQtdmlld2VyL3ZpcnQtdmlld2VyLy0vbWVyZ2VfcmVx
dWVzdHMvNzgiIHJlbD0ibm9vcGVuZXIgbm9yZWZlcnJlciI+aHR0cHM6Ly9naXRsYWIuY29tL3Zp
cnQtdmlld2VyL3ZpcnQtdmlld2VyLy0vbWVyZ2VfcmVxdWVzdHMvNzg8L2E+PC9kaXY+PC9kaXY+
PGRpdj7CoDwvZGl2PjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXItbGVmdC1jb2xvcjpyZ2IoIDIw
NCAsIDIwNCAsIDIwNCApO2JvcmRlci1sZWZ0LXN0eWxlOnNvbGlkO2JvcmRlci1sZWZ0LXdpZHRo
OjFweDttYXJnaW46MHB4IDBweCAwcHggMC44ZXg7cGFkZGluZy1sZWZ0OjFleCI+PGJyIC8+WW91
IGNvdWxkIGFsc28gdHJ5IHRvIHNldCAiSFdDdXJzb3IiICJvZmYiIGluIHRoZSB4b3JnPGJyIC8+
Y29uZmlndXJhdGlvbiBmaWxlLjxiciAvPjxiciAvPiZndDsgLSBzcGljZS12ZGFnZW50IHYuMC4y
MCBhbmQgcWVtdS1ndWVzdC1hZ2VudCBhcmUgaW5zdGFsbGVkLjxiciAvPjxiciAvPllvdSBzaG91
bGQgdHJ5IHYwLjIxIGFzIEkgcmVjYWxsIHBlb3BsZSB3ZXJlIGRvaW5nIHdvcmsgYXJvdW5kPGJy
IC8+dGVzdGluZyBOVkRJQSBhbmQgV2F5bGFuZCBiYXNlZCBzeXN0ZW1zLCBhbHRob3VnaCBJIGNh
bid0PGJyIC8+cGlucG9pbnQgc29tZXRoaW5nIHRoYXQgd291bGQgZml4IHRoZSBsb2dzIEkgc2Vl
LjxiciAvPsKgPC9ibG9ja3F1b3RlPjxkaXY+wqA8L2Rpdj48ZGl2PkkgdGhpbmsgdGhlIHByb2Js
ZW0gaXMgbm90IHdpdGggc3BpY2UtdmRhZ2VudCwgYnV0IHRoYXQgU1BJQ0UgZ2V0cyBubzwvZGl2
PjxkaXY+Y3Vyc29yIGRhdGEgZnJvbSBOVklESUEuPC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+V2hh
dCBxZW11LWt2bSBjb21tYW5kIGxpbmUgb3B0aW9uIGRvIHlvdSB1c2UgZm9yIGNvbm5lY3Rpbmcg
d2l0aCB0aGUgTlZJRElBIEdQVSA/PC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+VXJpPC9kaXY+PC9k
aXY+PC9kaXY+PC9ibG9ja3F1b3RlPg==
