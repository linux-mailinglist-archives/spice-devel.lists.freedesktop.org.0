Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C16C7A78D
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82956E4F1;
	Tue, 30 Jul 2019 12:04:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151246E4F5
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B35A13003A49
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:27 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D28A95D6A7;
 Tue, 30 Jul 2019 12:04:26 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:21 +0100
Message-Id: <20190730120331.17967-33-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 30 Jul 2019 12:04:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 33/44] fixup! usb-redir: add
 implementation of emulated CD device
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

cGFyYW0gZmllbGQgd2FzIHJlbW92ZWQgZnJvbSBwYXJhbWV0ZXJzLCByZWFkIGZyb20gZGV2aWNl
LgotLS0KIHNyYy91c2ItZGV2aWNlLWNkLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNl
LWNkLmMgYi9zcmMvdXNiLWRldmljZS1jZC5jCmluZGV4IGE3NmVhNDNlLi5iYzFjNjBkMyAxMDA2
NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtY2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5jCkBA
IC03MzYsNiArNzM2LDcgQEAgc3RhdGljIFVzYkNkKiB1c2JfY2RfY3JlYXRlKFNwaWNlVXNiQmFj
a2VuZCAqYmUsCiAgICAgdWludDMyX3QgdW5pdCA9IDA7CiAgICAgVXNiQ2QgKmQgPSBnX25ldzAo
VXNiQ2QsIDEpOwogICAgIENkU2NzaURldmljZVBhcmFtZXRlcnMgZGV2X3BhcmFtcyA9IHsgMCB9
OworICAgIHVpbnQxNl90IGFkZHJlc3MgPSBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2lu
Zm8ocGFyZW50KS0+YWRkcmVzczsKIAogICAgIGQtPmRldl9vcHMgPSBkZXZvcHM7CiAgICAgZC0+
YmFja2VuZCA9IGJlOwpAQCAtNzQ0LDggKzc0NSw4IEBAIHN0YXRpYyBVc2JDZCogdXNiX2NkX2Ny
ZWF0ZShTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgIGQtPmxvY2tlZCA9ICFkLT5kZWxldGVfb25f
ZWplY3Q7CiAgICAgZC0+c2VyaWFsWzBdID0gMHgwMzA4OwogICAgIGQtPnNlcmlhbFsxXSA9ICdY
JzsKLSAgICBkLT5zZXJpYWxbMl0gPSAnMCcgKyBwYXJhbS0+YWRkcmVzcyAvIDEwOwotICAgIGQt
PnNlcmlhbFszXSA9ICcwJyArIHBhcmFtLT5hZGRyZXNzICUgMTA7CisgICAgZC0+c2VyaWFsWzJd
ID0gJzAnICsgYWRkcmVzcyAvIDEwOworICAgIGQtPnNlcmlhbFszXSA9ICcwJyArIGFkZHJlc3Mg
JSAxMDsKICAgICBkLT5tYXhfbHVuX2luZGV4ID0gTUFYX0xVTl9QRVJfREVWSUNFIC0gMTsKIAog
ICAgIGRldl9wYXJhbXMudmVuZG9yID0gIlNQSUNFIjsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
