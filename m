Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C474924B1D
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 11:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE0E89134;
	Tue, 21 May 2019 09:05:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BCA89134
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DFC61C09AD0F
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:54 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 679087841C
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 09:05:54 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 21 May 2019 09:05:49 +0000
Message-Id: <20190521090552.2310-2-victortoso@redhat.com>
In-Reply-To: <20190521090552.2310-1-victortoso@redhat.com>
References: <20190521090552.2310-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 21 May 2019 09:05:54 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 1/4] usb: use native libusb procedure
 for getting error name
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKbGli
dXNiIGhhcyBsaWJ1c2JfZXJyb3JfbmFtZSBwcm9jZWR1cmUgdGhhdCByZXR1cm5zIG5hbWUKZm9y
IGFueSBlcnJvciB0aGF0IGxpYnVzYiBtYXkgcmV0dXJuLCBzbyB3ZSBkbyBub3QgbmVlZAp0byBh
bmFseXplIGVycm9yIHZhbHVlcyBieSBvdXJzZWx2ZXMuCgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJl
bmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Ci0tLQogc3JjL3VzYnV0aWwu
YyB8IDMyICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDMxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2J1dGls
LmMgYi9zcmMvdXNidXRpbC5jCmluZGV4IGU5NmFiMTEuLjRhYTZlZjcgMTAwNjQ0Ci0tLSBhL3Ny
Yy91c2J1dGlsLmMKKysrIGIvc3JjL3VzYnV0aWwuYwpAQCAtNjEsMzcgKzYxLDcgQEAgc3RhdGlj
IHVzYl92ZW5kb3JfaW5mbyAqdXNiaWRzX3ZlbmRvcl9pbmZvID0gTlVMTDsKIEdfR05VQ19JTlRF
Uk5BTAogY29uc3QgY2hhciAqc3BpY2VfdXNidXRpbF9saWJ1c2Jfc3RyZXJyb3IoZW51bSBsaWJ1
c2JfZXJyb3IgZXJyb3JfY29kZSkKIHsKLSAgICBzd2l0Y2ggKGVycm9yX2NvZGUpIHsKLSAgICBj
YXNlIExJQlVTQl9TVUNDRVNTOgotICAgICAgICByZXR1cm4gIlN1Y2Nlc3MiOwotICAgIGNhc2Ug
TElCVVNCX0VSUk9SX0lPOgotICAgICAgICByZXR1cm4gIklucHV0L291dHB1dCBlcnJvciI7Ci0g
ICAgY2FzZSBMSUJVU0JfRVJST1JfSU5WQUxJRF9QQVJBTToKLSAgICAgICAgcmV0dXJuICJJbnZh
bGlkIHBhcmFtZXRlciI7Ci0gICAgY2FzZSBMSUJVU0JfRVJST1JfQUNDRVNTOgotICAgICAgICBy
ZXR1cm4gIkFjY2VzcyBkZW5pZWQgKGluc3VmZmljaWVudCBwZXJtaXNzaW9ucykiOwotICAgIGNh
c2UgTElCVVNCX0VSUk9SX05PX0RFVklDRToKLSAgICAgICAgcmV0dXJuICJObyBzdWNoIGRldmlj
ZSAoaXQgbWF5IGhhdmUgYmVlbiBkaXNjb25uZWN0ZWQpIjsKLSAgICBjYXNlIExJQlVTQl9FUlJP
Ul9OT1RfRk9VTkQ6Ci0gICAgICAgIHJldHVybiAiRW50aXR5IG5vdCBmb3VuZCI7Ci0gICAgY2Fz
ZSBMSUJVU0JfRVJST1JfQlVTWToKLSAgICAgICAgcmV0dXJuICJSZXNvdXJjZSBidXN5IjsKLSAg
ICBjYXNlIExJQlVTQl9FUlJPUl9USU1FT1VUOgotICAgICAgICByZXR1cm4gIk9wZXJhdGlvbiB0
aW1lZCBvdXQiOwotICAgIGNhc2UgTElCVVNCX0VSUk9SX09WRVJGTE9XOgotICAgICAgICByZXR1
cm4gIk92ZXJmbG93IjsKLSAgICBjYXNlIExJQlVTQl9FUlJPUl9QSVBFOgotICAgICAgICByZXR1
cm4gIlBpcGUgZXJyb3IiOwotICAgIGNhc2UgTElCVVNCX0VSUk9SX0lOVEVSUlVQVEVEOgotICAg
ICAgICByZXR1cm4gIlN5c3RlbSBjYWxsIGludGVycnVwdGVkIChwZXJoYXBzIGR1ZSB0byBzaWdu
YWwpIjsKLSAgICBjYXNlIExJQlVTQl9FUlJPUl9OT19NRU06Ci0gICAgICAgIHJldHVybiAiSW5z
dWZmaWNpZW50IG1lbW9yeSI7Ci0gICAgY2FzZSBMSUJVU0JfRVJST1JfTk9UX1NVUFBPUlRFRDoK
LSAgICAgICAgcmV0dXJuICJPcGVyYXRpb24gbm90IHN1cHBvcnRlZCBvciB1bmltcGxlbWVudGVk
IG9uIHRoaXMgcGxhdGZvcm0iOwotICAgIGNhc2UgTElCVVNCX0VSUk9SX09USEVSOgotICAgICAg
ICByZXR1cm4gIk90aGVyIGVycm9yIjsKLSAgICB9Ci0gICAgcmV0dXJuICJVbmtub3duIGVycm9y
IjsKKyAgICByZXR1cm4gbGlidXNiX2Vycm9yX25hbWUoZXJyb3JfY29kZSk7CiB9CiAKICNpZmRl
ZiBfX2xpbnV4X18KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
