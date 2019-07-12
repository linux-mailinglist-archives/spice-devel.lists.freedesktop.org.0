Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A9D669AE
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66BE6E326;
	Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F856E326
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 15C322E97D5
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 92E301001DD9
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:45 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:38 +0200
Message-Id: <20190712091242.13214-4-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 12 Jul 2019 09:12:46 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 3/7] covscan: check return value
 of fprintf
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKIHwgRXJyb3I6IENIRUNLRURf
UkVUVVJOIChDV0UtMjUyKToKIHwgc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnRkL3Zk
YWdlbnRkLmM6OTk5OiBjaGVja19yZXR1cm46IENhbGxpbmcgImZwcmludGYiIHdpdGhvdXQgY2hl
Y2tpbmcgcmV0dXJuIHZhbHVlIChhcyBpcyBkb25lIGVsc2V3aGVyZSAyOSBvdXQgb2YgMzAgdGlt
ZXMpLgogfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6OTU6
IGV4YW1wbGVfYXNzaWduOiBFeGFtcGxlIDE6IEFzc2lnbmluZzogInIiID0gcmV0dXJuIHZhbHVl
IGZyb20gImZwcmludGYoZiwgIiMgeG9yZy5jb25mIGdlbmVyYXRlZCBieSBzcGljZS12ZGFnZW50
ZFxuIikiLgogfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6
OTU6IGV4YW1wbGVfY2hlY2tlZDogRXhhbXBsZSAxIChjb250Lik6ICJyIiBoYXMgaXRzIHZhbHVl
IGNoZWNrZWQgaW4gInIgPCAwIi4KIHwgc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnRk
L3hvcmctY29uZi5jOjk2OiBleGFtcGxlX2Fzc2lnbjogRXhhbXBsZSAyOiBBc3NpZ25pbmc6ICJy
IiA9IHJldHVybiB2YWx1ZSBmcm9tICJmcHJpbnRmKGYsICIjIGdlbmVyYXRlZCBmcm9tIG1vbml0
b3IgaW5mbyBwcm92aWRlZCBieSB0aGUgY2xpZW50XG5cbiIpIi4KIHwgc3BpY2UtdmRhZ2VudC0w
LjE5LjAvc3JjL3ZkYWdlbnRkL3hvcmctY29uZi5jOjk2OiBleGFtcGxlX2NoZWNrZWQ6IEV4YW1w
bGUgMiAoY29udC4pOiAiciIgaGFzIGl0cyB2YWx1ZSBjaGVja2VkIGluICJyIDwgMCIuCiB8IHNw
aWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50ZC94b3JnLWNvbmYuYzo5OTogZXhhbXBsZV9h
c3NpZ246IEV4YW1wbGUgMzogQXNzaWduaW5nOiAiciIgPSByZXR1cm4gdmFsdWUgZnJvbSAiZnBy
aW50ZihmLCAiIyBDbGllbnQgaGFzIG9ubHkgMSBtb25pdG9yXG4iKSIuCiB8IHNwaWNlLXZkYWdl
bnQtMC4xOS4wL3NyYy92ZGFnZW50ZC94b3JnLWNvbmYuYzo5OTogZXhhbXBsZV9jaGVja2VkOiBF
eGFtcGxlIDMgKGNvbnQuKTogInIiIGhhcyBpdHMgdmFsdWUgY2hlY2tlZCBpbiAiciA8IDAiLgog
fCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6MTAwOiBleGFt
cGxlX2Fzc2lnbjogRXhhbXBsZSA0OiBBc3NpZ25pbmc6ICJyIiA9IHJldHVybiB2YWx1ZSBmcm9t
ICJmcHJpbnRmKGYsICIjIFRoaXMgd29ya3MgYmVzdCB3aXRoIG5vIHhvcmcuY29uZiwgbGVhdmlu
ZyB4b3JnLmNvbmYgZW1wdHlcbiIpIi4KIHwgc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdl
bnRkL3hvcmctY29uZi5jOjEwMDogZXhhbXBsZV9jaGVja2VkOiBFeGFtcGxlIDQgKGNvbnQuKTog
InIiIGhhcyBpdHMgdmFsdWUgY2hlY2tlZCBpbiAiciA8IDAiLgogfCBzcGljZS12ZGFnZW50LTAu
MTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6MTA2OiBleGFtcGxlX2Fzc2lnbjogRXhhbXBs
ZSA1OiBBc3NpZ25pbmc6ICJyIiA9IHJldHVybiB2YWx1ZSBmcm9tICJmcHJpbnRmKGYsICJTZWN0
aW9uIFwiU2VydmVyRmxhZ3NcIlxuIikiLgogfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRh
Z2VudGQveG9yZy1jb25mLmM6MTA2OiBleGFtcGxlX2NoZWNrZWQ6IEV4YW1wbGUgNSAoY29udC4p
OiAiciIgaGFzIGl0cyB2YWx1ZSBjaGVja2VkIGluICJyIDwgMCIuCiB8ICMgIDk5N3wgICAgICAg
ICAgIHBpZGZpbGUgPSBmb3BlbihwaWRmaWxlbmFtZSwgInciKTsKIHwgIyAgOTk4fCAgICAgICAg
ICAgaWYgKHBpZGZpbGUpIHsKIHwgIyAgOTk5fC0+ICAgICAgICAgICAgIGZwcmludGYocGlkZmls
ZSwgIiVkXG4iLCAoaW50KWdldHBpZCgpKTsKIHwgIyAxMDAwfCAgICAgICAgICAgICAgIGZjbG9z
ZShwaWRmaWxlKTsKIHwgIyAxMDAxfCAgICAgICAgICAgfQoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdmRhZ2VudGQvdmRhZ2VudGQu
YyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMgYi9zcmMvdmRhZ2VudGQv
dmRhZ2VudGQuYwppbmRleCA3MmEzZTEzLi42M2YzYTEyIDEwMDY0NAotLS0gYS9zcmMvdmRhZ2Vu
dGQvdmRhZ2VudGQuYworKysgYi9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYwpAQCAtOTk2LDcgKzk5
NiwxMSBAQCBzdGF0aWMgdm9pZCBkYWVtb25pemUodm9pZCkKICAgICAgICAgfQogICAgICAgICBw
aWRmaWxlID0gZm9wZW4ocGlkZmlsZW5hbWUsICJ3Iik7CiAgICAgICAgIGlmIChwaWRmaWxlKSB7
Ci0gICAgICAgICAgICBmcHJpbnRmKHBpZGZpbGUsICIlZFxuIiwgKGludClnZXRwaWQoKSk7Cisg
ICAgICAgICAgICBpbnQgcGlkID0gKGludCkgZ2V0cGlkKCk7CisgICAgICAgICAgICBpbnQgciA9
IGZwcmludGYocGlkZmlsZSwgIiVkXG4iLCBwaWQpOworICAgICAgICAgICAgaWYgKHIgPCAwKSB7
CisgICAgICAgICAgICAgICAgc3lzbG9nKExPR19FUlIsICJGYWlsdXJlIHRvIHdyaXRlIHBpZCAl
ZCB0byBmaWxlICVzIiwgcGlkLCBwaWRmaWxlbmFtZSk7CisgICAgICAgICAgICB9CiAgICAgICAg
ICAgICBmY2xvc2UocGlkZmlsZSk7CiAgICAgICAgIH0KICAgICAgICAgYnJlYWs7Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
