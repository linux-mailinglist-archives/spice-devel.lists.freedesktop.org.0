Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF39F18146D
	for <lists+spice-devel@lfdr.de>; Wed, 11 Mar 2020 10:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657DC6E951;
	Wed, 11 Mar 2020 09:18:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 451 seconds by postgrey-1.36 at gabe;
 Wed, 11 Mar 2020 07:15:29 UTC
Received: from smtp.51web.com (unknown [125.65.112.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393026E0DB
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Mar 2020 07:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp.51web.com (Postfix) with ESMTP id 3487B1281E3A
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Mar 2020 15:07:49 +0800 (CST)
Received: from smtp.51web.com ([127.0.0.1])
 by localhost (smtp.51web.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CD1bvb5Wsjd2; Wed, 11 Mar 2020 15:07:47 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
 by smtp.51web.com (Postfix) with ESMTP id CF2DD1281E25;
 Wed, 11 Mar 2020 15:07:47 +0800 (CST)
X-Virus-Scanned: amavisd-new at 51web.com
Received: from smtp.51web.com ([127.0.0.1])
 by localhost (smtp.51web.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id b3RM9I_njmEf; Wed, 11 Mar 2020 15:07:47 +0800 (CST)
Received: from lwj-PC (unknown [125.65.112.58])
 by smtp.51web.com (Postfix) with ESMTPSA id 8D44C1281DD7;
 Wed, 11 Mar 2020 15:07:47 +0800 (CST)
Date: Wed, 11 Mar 2020 15:07:46 +0800
From: longwenjun <longwenjun@51web.com>
To: =?utf-8?Q?spice-devel=40lists.freedesktop.org?=
 <spice-devel@lists.freedesktop.org>
Message-ID: <7BF2A859-4D6B-4618-8FA4-40AC71EDEF95@51web.com>
X-Mailer: MailMasterPC/4.13.2.1001 (Windows 7)
X-CUSTOM-MAIL-MASTER-SENT-ID: 321590F2-D9C8-468A-88F3-13E8323E23F1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 11 Mar 2020 09:18:03 +0000
Subject: [Spice-devel] gtk_windows_fullscreen disabled
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
Cc: =?utf-8?B?5YCq5piO5ZCb?= <nimingjun@51web.com>
Content-Type: multipart/mixed; boundary="===============0508129497=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0508129497==
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCiAgICA8bWV0YSBodHRwLWVxdWl2PSdDb250ZW50LVR5cGUnIGNvbnRl
bnQ9J3RleHQvaHRtbDsgY2hhcnNldD1VVEYtOCc+DQo8L2hlYWQ+DQo8Ym9keT4NCjxzdHlsZT4N
CiAgICBmb250ew0KICAgICAgICBsaW5lLWhlaWdodDogMS42Ow0KICAgIH0NCiAgICB1bCxvbHsN
CiAgICAgICAgcGFkZGluZy1sZWZ0OiAyMHB4Ow0KICAgICAgICBsaXN0LXN0eWxlLXBvc2l0aW9u
OiBpbnNpZGU7DQogICAgfQ0KPC9zdHlsZT4NCjxkaXYgc3R5bGUgPSAnZm9udC1mYW1pbHk65b6u
6L2v6ZuF6buRLFZlcmRhbmEsJnF1b3Q7TWljcm9zb2Z0IFlhaGVpJnF1b3Q7LFNpbVN1bixzYW5z
LXNlcmlmO2ZvbnQtc2l6ZToxNHB4OyBsaW5lLWhlaWdodDoxLjY7Jz4NCiAgICA8ZGl2ID48L2Rp
dj48ZGl2PgogICAgPGRpdj4KICAgICAgICA8c3Bhbj5IaToKICAgICAgICA8L3NwYW4+PC9kaXY+
PGRpdj48c3Bhbj48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+SSB0cmllZCB0byBjcm9zcy1j
b21waWxlIHNwaWNlIGFzIGZvbGxvdzo8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj50b29sczogTWlu
Z1c2NDwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuPnN5c3RlbTpGZWRvcmEgMzAsMzE8L3NwYW4+PC9k
aXY+PGRpdj48c3Bhbj50YXJnZXQgYmluYXJ5OiB3aW5kb3dzICJzcGljeS5leGUiPC9zcGFuPjwv
ZGl2PjxkaXY+PHNwYW4+c291cmNlIGNvZGU6IHNwaWNlLWd0ay0wLjM1PC9zcGFuPjwvZGl2Pjxk
aXY+Z3RrIHZlcnNpb246IG1pbmd3NjQtbGliZ3RrLTMuMjIsY29taW5nICZuYnNwO2Zyb20gZmVk
b3JhIHJlcG88L2Rpdj48ZGl2PjxzcGFuPjxicj48L3NwYW4+PC9kaXY+PGRpdj5FdmVyeXRoaW5n
IHdvcmtzIHdlbGwsYnV0IHNwaWN5LmV4ZSB0b3AgbGV2ZWwgd2luZG93IGNhbiBub3QgZnVsbCBz
Y3JlZW4sPC9kaXY+PGRpdj5JIGFsc28gdHJpZWQgdG8mbmJzcDs8c3BhbiBzdHlsZT0ibGluZS1o
ZWlnaHQ6IDIyLjRweDsiPmNyb3NzLWNvbXBpbGUgYSB0ZXN0LmMgLCB3aGljaCBpbmNsdWRlcyAi
PC9zcGFuPmd0a193aW5kb3dzX2Z1bGxzY3JlZW4iIGZ1bmN0aW9uLGFzIGEgcmVzdWx0ICx0ZXN0
LmV4ZSBmdWxsIHNjcmVlbiB3b3JrcyB3ZWxsLjwvZGl2PjxkaXY+Y291bGQgeW91IHRlbGwgbWUg
LHdoeT8gQW5kIGhvdyBjYW4gaSBkbz88L2Rpdj4KICAgIDxkaXY+CiAgICAgICAgPHNwYW4+CiAg
ICAgICAgICAgIDxicj4KICAgICAgICA8L3NwYW4+CiAgICA8L2Rpdj4KICAgIDxkaXYgaWQ9Im50
ZXMtcGNtYWMtc2lnbmF0dXJlIiBzdHlsZT0iZm9udC1mYW1pbHk6J+W+rui9r+mbhem7kSciPgog
ICAgIAogICAgPGRpdiBzdHlsZT0iZm9udC1zaXplOjE0cHg7IHBhZGRpbmc6IDA7ICBtYXJnaW46
MDtsaW5lLWhlaWdodDoxNHB4OyI+CiAgICAgICAgPGRpdiBzdHlsZT0icGFkZGluZy1ib3R0b206
NnB4O21hcmdpbi1ib3R0b206MTBweDtib3JkZXItYm90dG9tOjFweCBzb2xpZCAjZTZlNmU2O2Rp
c3BsYXk6aW5saW5lLWJsb2NrOyI+CiAgICAgICAgICAgICAgICAgICAgPGEgaHJlZj0iaHR0cHM6
Ly9tYWFzLm1haWwuMTYzLmNvbS9kYXNoaS13ZWItZXh0ZW5kL2h0bWwvcHJvU2lnbmF0dXJlLmh0
bWw/ZnRsSWQ9MSZhbXA7bmFtZT1sb25nd2VuanVuJmFtcDt1aWQ9bG9uZ3dlbmp1biU0MDUxd2Vi
LmNvbSZhbXA7aWNvblVybD1odHRwcyUzQSUyRiUyRm1haWwtb25saW5lLm5vc2RuLjEyNy5uZXQl
MkZxaXllbG9nbyUyRmRlZmF1bHRBdmF0YXIucG5nJmFtcDtpdGVtcz0lNUIlMjJsb25nd2VuanVu
JTQwNTF3ZWIuY29tJTIyJTVEIiBzdHlsZT0iZGlzcGxheTpibG9jaztiYWNrZ3JvdW5kOiNmZmY7
IG1heC13aWR0aDogNDAwcHg7IF93aWR0aDogNDAwcHg7cGFkZGluZzoxNXB4IDAgMTBweCAwO3Rl
eHQtZGVjb3JhdGlvbjogbm9uZTsgb3V0bGluZTpub25lOy13ZWJraXQtdGFwLWhpZ2hsaWdodC1j
b2xvcjp0cmFuc3BhcmVudDstd2Via2l0LXRleHQtc2l6ZS1hZGp1c3Q6bm9uZSAhaW1wb3J0YW50
O3RleHQtc2l6ZS1hZGp1c3Q6bm9uZSAhaW1wb3J0YW50OyI+CiAgICAgICAgICAgIDx0YWJsZSBj
ZWxscGFkZGluZz0iMCIgc3R5bGU9IndpZHRoOiAxMDAlOyBtYXgtd2lkdGg6IDEwMCU7IHRhYmxl
LWxheW91dDogZml4ZWQ7IGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7Y29sb3I6ICM5YjllYTE7
Zm9udC1zaXplOiAxNHB4O2xpbmUtaGVpZ2h0OjEuMzstd2Via2l0LXRleHQtc2l6ZS1hZGp1c3Q6
bm9uZSAhaW1wb3J0YW50O3RleHQtc2l6ZS1hZGp1c3Q6bm9uZSAhaW1wb3J0YW50OyI+CiAgICAg
ICAgICAgICAgICA8dGJvZHkgc3R5bGU9ImZvbnQtZmFtaWx5OiAnUGluZ0ZhbmcgU0MnLCAnSGly
YWdpbm8gU2FucyBHQicsJ1dlblF1YW5ZaSBNaWNybyBIZWknLCAnTWljcm9zb2Z0IFlhaGVpJywg
J+W+rui9r+mbhem7kScsIHZlcmRhbmEgIWltcG9ydGFudDsgd29yZC13cmFwOmJyZWFrLXdvcmQ7
IHdvcmQtYnJlYWs6YnJlYWstYWxsOy13ZWJraXQtdGV4dC1zaXplLWFkanVzdDpub25lICFpbXBv
cnRhbnQ7dGV4dC1zaXplLWFkanVzdDpub25lICFpbXBvcnRhbnQ7Ij4KICAgICAgICAgICAgICAg
ICAgICA8dHIgY2xhc3M9ImZpcnN0Um93Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0
ZCB3aWR0aD0iMzgiIHN0eWxlPSJwYWRkaW5nOjA7IGJveC1zaXppbmc6IGJvcmRlci1ib3g7IHdp
ZHRoOiAzOHB4OyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGltZyB3aWR0aD0i
MzgiIGhlaWdodD0iMzgiIHN0eWxlPSJ2ZXJ0aWNhbC1hbGlnbjptaWRkbGU7IHdpZHRoOiAzOHB4
OyBoZWlnaHQ6IDM4cHg7IGJvcmRlci1yYWRpdXM6NTAlOyIgc3JjPSJodHRwczovL21haWwtb25s
aW5lLm5vc2RuLjEyNy5uZXQvcWl5ZWxvZ28vZGVmYXVsdEF2YXRhci5wbmciPgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPC90ZD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBz
dHlsZT0icGFkZGluZzogMCAwIDAgMTBweDsgY29sb3I6ICMzMTM1M2I7Ij4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA8ZGl2IHN0eWxlPSJmb250LXNpemU6IDE2cHg7Zm9udC13ZWln
aHQ6Ym9sZDsgd2lkdGg6MTAwJTsgd2hpdGUtc3BhY2U6IG5vd3JhcDsgb3ZlcmZsb3c6aGlkZGVu
O3RleHQtb3ZlcmZsb3c6IGVsbGlwc2lzOyI+bG9uZ3dlbmp1bjwvZGl2PgogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPC90ZD4KICAgICAgICAgICAgICAgICAgICA8L3RyPgogICAgICAgICAg
ICAgICAgICAgICAgICA8dHIgd2lkdGg9IjEwMCUiIHN0eWxlPSJmb250LXNpemU6IDE0cHggIWlt
cG9ydGFudDsgd2lkdGg6IDEwMCU7Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBj
b2xzcGFuPSIyIiBzdHlsZT0icGFkZGluZzoxMHB4IDAgMCAwOyBmb250LXNpemU6MTRweCAhaW1w
b3J0YW50OyB3aWR0aDogMTAwJTsiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8ZGl2IHN0eWxlPSJ3aWR0aDogMTAwJTtmb250LXNpemU6IDE0cHggIWltcG9ydGFudDt3b3Jk
LXdyYXA6YnJlYWstd29yZDt3b3JkLWJyZWFrOmJyZWFrLWFsbDsiPmxvbmd3ZW5qdW5ANTF3ZWIu
Y29tPC9kaXY+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3RkPgogICAgICAgICAgICAg
ICAgICAgICAgICA8L3RyPgogICAgICAgICAgICAgICAgPC90Ym9keT4KICAgICAgICAgICAgPC90
YWJsZT4KICAgICAgICA8L2E+CiAgICAgICAgPC9kaXY+CiAgICA8L2Rpdj4KICAgIDxkaXYgc3R5
bGU9ImZvbnQtc2l6ZToxMnB4O2NvbG9yOiNiNWI5YmQ7bGluZS1oZWlnaHQ6MThweDsiPgogICAg
ICAgIDxzcGFuPuetvuWQjeeUsTwvc3Bhbj4KICAgICAgICA8YSBzdHlsZT0idGV4dC1kZWNvcmF0
aW9uOiBub25lO2NvbG9yOiM0MTk2ZmY7cGFkZGluZzowIDVweDsiIGhyZWY9Imh0dHBzOi8vbWFp
bC4xNjMuY29tL2Rhc2hpL2RscHJvLmh0bWw/ZnJvbT1tYWlsODEiPue9keaYk+mCrueuseWkp+W4
iDwvYT4KICAgICAgICA8c3Bhbj7lrprliLY8L3NwYW4+CiAgICA8L2Rpdj4KIDwvZGl2Pgo8L2Rp
dj48IS0t8J+YgC0tPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+


--===============0508129497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0508129497==--
