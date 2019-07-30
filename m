Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50E97A76F
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642646E4B5;
	Tue, 30 Jul 2019 12:03:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACF86E4B3
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B98F783E
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D9FD05D6A7;
 Tue, 30 Jul 2019 12:03:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:52 +0100
Message-Id: <20190730120331.17967-4-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:03:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 03/44] fixup! usb-redir: define
 interfaces to support emulated devices
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

QWRkIHNvbWUgY29tbWVudHMKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDcgKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggZjA3MDA5YWQuLmVj
MGFlM2U4IDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tl
bmQuYwpAQCAtNDcsNiArNDcsOCBAQAogCiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZERldmljZQog
eworICAgIC8qIFBvaW50ZXIgdG8gZGV2aWNlLiBFaXRoZXIgcmVhbCBkZXZpY2UgKGxpYnVzYl9k
ZXZpY2UpCisgICAgICogb3IgZW11bGF0ZWQgb25lIChlZGV2KSAqLwogICAgIGxpYnVzYl9kZXZp
Y2UgKmxpYnVzYl9kZXZpY2U7CiAgICAgU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZWRldjsKICAg
ICBnaW50IHJlZl9jb3VudDsKQEAgLTcwLDYgKzcyLDggQEAgc3RydWN0IF9TcGljZVVzYkJhY2tl
bmQKICNlbmRpZgogCiAgICAgU3BpY2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZSBkZXZfaW5pdFtV
U0JfREVWX1RZUEVfTUFYXTsKKyAgICAvKiBNYXNrIG9mIGFsbG9jYXRlZCBkZXZpY2UsIGEgc3Bl
Y2lmaWMgYml0IHNldCB0byAxIHRvIGluZGljYXRlIHRoYXQgdGhlIGRldmljZSBhdAorICAgICAq
IHRoYXQgYWRkcmVzcyBpcyBhbGxvY2F0ZWQgKi8KICAgICB1aW50MzJfdCBvd25fZGV2aWNlc19t
YXNrOwogfTsKIApAQCAtNDE4LDcgKzQyMiw4IEBAIFNwaWNlVXNiQmFja2VuZCAqc3BpY2VfdXNi
X2JhY2tlbmRfbmV3KEdFcnJvciAqKmVycm9yKQogICAgICAgICBsaWJ1c2Jfc2V0X29wdGlvbihi
ZS0+bGlidXNiX2NvbnRleHQsIExJQlVTQl9PUFRJT05fVVNFX1VTQkRLKTsKICNlbmRpZgogI2Vu
ZGlmCi0gICAgICAgIGJlLT5vd25fZGV2aWNlc19tYXNrID0gMzsgLyogZXhjbHVkZSBhZGRyZXNz
ZXMgMCBhbmQgMSAqLworICAgICAgICAvKiBleGNsdWRlIGFkZHJlc3NlcyAwIChyZXNlcnZlZCkg
YW5kIDEgKHJvb3QgaHViKSAqLworICAgICAgICBiZS0+b3duX2RldmljZXNfbWFzayA9IDM7CiAg
ICAgfQogICAgIFNQSUNFX0RFQlVHKCIlcyA8PCIsIF9fRlVOQ1RJT05fXyk7CiAgICAgcmV0dXJu
IGJlOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
