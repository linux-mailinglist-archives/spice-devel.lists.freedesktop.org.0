Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3DB9EC6DE
	for <lists+spice-devel@lfdr.de>; Wed, 11 Dec 2024 09:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAE110EA88;
	Wed, 11 Dec 2024 08:18:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=qq.com header.i=@qq.com header.b="IK5IKWdg";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 918 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2024 02:38:17 UTC
Received: from out203-205-221-149.mail.qq.com (out203-205-221-149.mail.qq.com
 [203.205.221.149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD20510EA31
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Dec 2024 02:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1733884695; bh=3EqcVMb9lyBo+vfSPaA7rMux+QGWTDnHa19Et9Um/Q8=;
 h=From:To:Subject:Date;
 b=IK5IKWdgO6ZxRUpMfVZmc7xsqV+j+QD0o2nP6djovi7QWj5K6vpzbXAy8y4tL4IsQ
 TsI86F4AavzCELSKILM9rZOUNBcik5r+eJw7JuPYhR9ihN0ZkQxyY9sYIV+w44sZNA
 EOjxx+NPpN3qgPpSneBs6P3BHi94gZC95c7LwG/E=
X-QQ-FEAT: DI46iX4Hri4R143f90xbu7/6WDHch+Vv
X-QQ-SSF: 00000000000000F1000000000000
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-XMAILINFO: ME8bH3unDDxUTwQy5iEhlT4WisDAQBlJm9tBZ+XgJErxpjlRuSP5UsKcgfG9D5
 2166/lZQdvQftrlDUfZ9L8vdYIKouQ/vOHF82Wo1rcfKYog3nF6zPvC8iNbVvrgUxmVy2R1uyXEzh
 t5HobbGtxiHOdh3ycWuBV4C4wk0/nh7PtI3N2wV/gMk7vpJZbTriZsTl0WeR90oAtj2sR7ywEkZpW
 rr2Jr7xdmEjrDbeTjuxB4qHMwftk+cu/Mvr/l7EIRdwyy76wf3dP/BOU7U9H5x6pTOHrEJ7+YZnQX
 A54PsCbyfjd3xD1Ec40QDouKVn684HPlx8vPHQKrxU4LZb+Bg4q8aVitgvUcjnZCVkAOZWG+j+gD+
 ehfbfzikqKuKBIOoZZQrZMLmoB6DzQiYL/XotSql+xEG077rNxTCTpGNlpMM9Wowp0isxVAsldptS
 KX2l1eTH5p26CjOPFY8YC7KvMIsB2imOtD2n0xWcCwtA/+sXjHHK4fmk674LpY9eMi6nFPxwXe0Bx
 XAnxIHt7UxYPLagsSPIqXLwsPsQNX5ngVkGD5awlCCUdCbivbUm/KxTWa2iZwCBwt4BTWYzNNWyP2
 gjYVE5G10OramGYqF0wrMfyDa8NIpNfOMV8NLIliUoCprcO5X2ghuZz2c2pA4WAgnBqa3CZe1YC8e
 n04kIfSUtZYgvCr22hMy0druT3dEra4+y2CdSqQ4sWtxjzcOpVWUkc7MdzkLKLrr4+YN5RDbcYuTI
 +nXvHi5RmzrnHeOwiit7FfiRNrOf3DF8dtXJ+bJou1kgPGEjlpyPOXgEjaP1NJWpABRSrfv0UzbOo
 +FCwqPhHYkEb6VepE9JXvGyu0t05dhBXWWHQB62UPlMNZvb2JMCYds1UvmcKgYALjntgo+xATInHU
 XZlZRV5zCGZrzOkFhFAvzyPdWWuIpaLudp71lVGVcLefUUvsYK8OGSV9FC6GfdwZWkSzwg5NqLHgH
 wdKhb6mq3i50UQpYJ0XA9cazI70tpANPxI0uRhlozqGyLBv+0u/PfZx2TYZ+5x3Lob2HIKzw==
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 39.156.163.124
X-QQ-STYLE: 
X-QQ-mid: webmail879t1733883775t5582898
From: "=?gb18030?B?cGV0ZXI=?=" <522740662@qq.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Subject: Does SPICE support net printer redirect?
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----=_NextPart_6758F77F_1114AC40_0302D251"
Content-Transfer-Encoding: 8Bit
Date: Wed, 11 Dec 2024 10:22:55 +0800
X-Priority: 3
Message-ID: <tencent_FB9EB366B8349FEFBB374CD9D809B33D6607@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-Mailman-Approved-At: Wed, 11 Dec 2024 08:18:05 +0000
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

This is a multi-part message in MIME format.

------=_NextPart_6758F77F_1114AC40_0302D251
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGk6DQombmJzcDsgJm5ic3A7IEkgZGlkIHNwaWNlIGRldmVsb3AgaW4gcWVtdS1rdm0sIHdo
ZW4gaSB3YW50IHRvIHVzZSBuZXQgcHJpbnRlciBpbiBndWVzdCBob3N0IGkgZW5jb3VudGVy
IGRpZmZpY3VsdGllcy4gaG93IHRvIHJlZGlyZWN0IG5ldCBwcmludGVyIHRvIGd1ZXN0IGhv
c3Q/DQombmJzcDsgJm5ic3A7IEkgc2F3IHNwaWNlIG5vIHRoaXMgZmVhdHVyZS4NCiZuYnNw
OyAmbmJzcDsgcGxlYXNlIGdpdmUgbWUgaGVscCwgdGhhbmtzIQ0KDQoNCnBldGVyDQo1MjI3
NDA2NjJAcXEuY29tDQoNCg0KDQombmJzcDs=

------=_NextPart_6758F77F_1114AC40_0302D251
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNo
YXJzZXQ9R0IxODAzMCI+PGRpdj5IaTo8L2Rpdj48ZGl2PiZuYnNwOyAmbmJzcDsgSSBkaWQg
c3BpY2UgZGV2ZWxvcCBpbiBxZW11LWt2bSwgd2hlbiBpIHdhbnQgdG8gdXNlIG5ldCBwcmlu
dGVyIGluIGd1ZXN0IGhvc3QgaSBlbmNvdW50ZXIgZGlmZmljdWx0aWVzLiBob3cgdG8gcmVk
aXJlY3QgbmV0IHByaW50ZXIgdG8gZ3Vlc3QgaG9zdD88c3BhbiBzdHlsZT0iYmFja2dyb3Vu
ZC1jb2xvcjogcmdiKDIzOCwgMjQwLCAyNDIpOyBjb2xvcjogcmdiKDQ2LCA0OCwgNTEpOyBm
b250LWZhbWlseTogQXJpYWwsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OywgzqLI7dHF
utosIMvOzOUsICZxdW90O01hbGd1biBHb3RoaWMmcXVvdDssIE1laXJ5bywgc2Fucy1zZXJp
ZjsgZm9udC1zaXplOiAxMnB4OyI+PC9zcGFuPjwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyBJ
IHNhdyBzcGljZSBubyB0aGlzIGZlYXR1cmUuPC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7IHBs
ZWFzZSBnaXZlIG1lIGhlbHAsIHRoYW5rcyE8L2Rpdj48ZGl2PjxociBhbGlnbj0ibGVmdCIg
c3R5bGU9Im1hcmdpbjogMCAwIDEwcHggMDtib3JkZXI6IDA7Ym9yZGVyLWJvdHRvbToxcHgg
c29saWQgI0U0RTVFNjtoZWlnaHQ6MDtsaW5lLWhlaWdodDowO2ZvbnQtc2l6ZTowO3BhZGRp
bmc6IDIwcHggMCAwIDA7d2lkdGg6IDUwcHg7Ij48ZGl2IHN0eWxlPSJmb250LXNpemU6MTRw
eDtmb250LWZhbWlseTpWZXJkYW5hO2NvbG9yOiMwMDA7Ij48YSBjbGFzcz0ieG1fd3JpdGVf
Y2FyZCIgaWQ9ImluX2FsaWFzIiBzdHlsZT0id2hpdGUtc3BhY2U6IG5vcm1hbDsgZGlzcGxh
eTogaW5saW5lLWJsb2NrOyB0ZXh0LWRlY29yYXRpb246IG5vbmUgIWltcG9ydGFudDtmb250
LWZhbWlseTogLWFwcGxlLXN5c3RlbSxCbGlua01hY1N5c3RlbUZvbnQsUGluZ0ZhbmcgU0Ms
TWljcm9zb2Z0IFlhSGVpOyIgaHJlZj0iaHR0cHM6Ly93eC5tYWlsLnFxLmNvbS9ob21lL2lu
ZGV4P3Q9cmVhZG1haWxfYnVzaW5lc3NjYXJkX21pZHBhZ2UmYW1wO25vY2hlY2s9dHJ1ZSZh
bXA7bmFtZT1wZXRlciZhbXA7aWNvbj1odHRwJTNBJTJGJTJGdGhpcmRxcS5xbG9nby5jbiUy
RmclM0ZiJTNEc2RrJTI2ayUzRGpOTmQzQTJMZ2RKbGlhMWljcjMwRU9sUSUyNnMlM0QxMDAl
MjZ0JTNEMTU1NTkzNDk0OCUzRnJhbmQlM0QxNjQyNTg2MTc3JmFtcDttYWlsPTUyMjc0MDY2
MiU0MHFxLmNvbSZhbXA7Y29kZT0iIHRhcmdldD0iX2JsYW5rIj48dGFibGUgc3R5bGU9Indo
aXRlLXNwYWNlOiBub3JtYWw7dGFibGUtbGF5b3V0OiBmaXhlZDsgcGFkZGluZy1yaWdodDog
MjBweDsiIGNvbnRlbnRlZGl0YWJsZT0iZmFsc2UiIGNlbGxwYWRkaW5nPSIwIiBjZWxsc3Bh
Y2luZz0iMCI+PHRib2R5Pjx0ciB2YWxpZ249InRvcCI+PHRkIHN0eWxlPSJ3aWR0aDogNDBw
eDttaW4td2lkdGg6IDQwcHg7IHBhZGRpbmctdG9wOjEwcHgiPjxkaXYgc3R5bGU9IndpZHRo
OiAzOHB4OyBoZWlnaHQ6IDM4cHg7IGJvcmRlcjogMXB4ICNGRkYgc29saWQ7IGJvcmRlci1y
YWRpdXM6NTAlOyBtYXJnaW46IDA7dmVydGljYWwtYWxpZ246IHRvcDtib3gtc2hhZG93OiAw
IDAgMTBweCAwIHJnYmEoMTI3LDE1MiwxNzgsMC4xNCk7Ij48aW1nIHNyYz0iaHR0cDovL3Ro
aXJkcXEucWxvZ28uY24vZz9iPXNkayZhbXA7az1qTk5kM0EyTGdkSmxpYTFpY3IzMEVPbFEm
YW1wO3M9MTAwJmFtcDt0PTE1NTU5MzQ5NDg/cmFuZD0xNjQyNTg2MTc3IiBzdHlsZT0id2lk
dGg6MTAwJTtoZWlnaHQ6MTAwJTtib3JkZXItcmFkaXVzOjUwJTtwb2ludGVyLWV2ZW50czog
bm9uZTsiPjwvZGl2PjwvdGQ+PHRkIHN0eWxlPSJwYWRkaW5nOiAxMHB4IDAgOHB4IDEwcHg7
Ij48ZGl2IGNsYXNzPSJidXNpbmVzc0NhcmRfbmFtZSIgc3R5bGU9ImZvbnQtc2l6ZTogMTRw
eDtjb2xvcjogIzMzMzEyRTtsaW5lLWhlaWdodDogMjBweDsgcGFkZGluZy1ib3R0b206IDJw
eDsgbWFyZ2luOjA7Zm9udC13ZWlnaHQ6IDUwMDsiPnBldGVyPC9kaXY+PGRpdiBjbGFzcz0i
YnVzaW5lc3NDYXJkX21haWwiIHN0eWxlPSJmb250LXNpemU6IDEycHg7Y29sb3I6ICM5OTk4
OTY7bGluZS1oZWlnaHQ6IDE4cHg7IG1hcmdpbjowOyI+NTIyNzQwNjYyQHFxLmNvbTwvZGl2
PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PC9hPjwvZGl2PjwvZGl2PjxkaXY+Jm5ic3A7
PC9kaXY+

------=_NextPart_6758F77F_1114AC40_0302D251--
ut‘
