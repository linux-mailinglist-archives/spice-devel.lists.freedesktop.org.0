Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A78B5F886
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 14:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4158901F;
	Thu,  4 Jul 2019 12:49:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1154F8901F
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:49:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A010B30C0DD5
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:49:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 95E12989CB
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:49:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8B56C18433A1;
 Thu,  4 Jul 2019 12:49:22 +0000 (UTC)
Date: Thu, 4 Jul 2019 08:49:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1148028333.26427216.1562244561063.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190704101810.10268-1-kpouget@redhat.com>
References: <20190704101810.10268-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.20]
Thread-Topic: reds: spice_server_set_video_codecs: fail when no codec can be
 installed
Thread-Index: 8HD+NAYFXSlWRXhEZseuXUtfomoIYg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 04 Jul 2019 12:49:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] reds:
 spice_server_set_video_codecs: fail when no codec can be installed
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBQdWJsaWMgZnVuY3Rpb24gc3BpY2Vfc2VydmVyX3NldF92aWRlb19jb2RlY3M6IHJldHVy
biAtMSBpZiBubwo+IGVuY29kZXIvY29kZWMgaGFzIGJlZW4gaW5zdGFsbGVkLCBpbnN0ZWFkIG9m
IGFsd2F5cyByZXR1cm5pbmcgMC4KPiAKPiBJbnRlcm5hbCBmdW5jdGlvbiByZWRzX3NldF92aWRl
b19jb2RlY3NfZnJvbV9zdHJpbmc6IHJldHVybiB0aGUgbnVtYmVyCj4gb2YgaW52YWxpZCBlbmNv
ZGVyL2NvZGVjIGVudHJpZXMgZm91bmQgaW4gdGhlIGlucHV0IGxpc3QsIGFuZCB1cGRhdGUKPiB0
aGUgaW5zdGFsbGVkIHBvaW50ZXIgd2l0aCB0aGUgbnVtYmVyIG9mIGVuY29kZXIvY29kZWMgcGFp
cnMKPiBzdWNjZXNzZnVsbHkgaW5zdGFsbGVkLgo+IAo+IC0tLQo+IAo+IEkgcmV3b3JrZWQgdGhp
cyBwYXRjaCB0byBsaW1pdCB0aGUgbW9kaWZpY2F0aW9uIG9mIHRoZSBwdWJsaWMKPiBpbnRlcmZh
Y2UsIHNlZSBpbiB0aGUgZmlyc3QgcGFydCBvZiB0aGUgbWVzc2FnZSBhYm92ZS4KPiAKPiAtLS0K
PiAgc2VydmVyL3JlZHMuYyB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwo+IGluZGV4IGE1MWQ1
NzZlLi4xMWNmMDM4NCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvcmVkcy5jCj4gKysrIGIvc2VydmVy
L3JlZHMuYwo+IEBAIC0zODE3LDEyICszODE3LDIyIEBAIHN0YXRpYyBjaGFyKiBwYXJzZV9uZXh0
X3ZpZGVvX2NvZGVjKGNoYXIgKmNvZGVjcywKPiBjaGFyICoqZW5jb2RlciwgY2hhciAqKmNvZGVj
KQo+ICAgICAgcmV0dXJuIGNvZGVjcyArIHN0cmNzcG4oY29kZWNzLCAiOyIpOwo+ICB9Cj4gCj4g
LXN0YXRpYyB2b2lkIHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19mcm9tX3N0cmluZyhSZWRzU3RhdGUg
KnJlZHMsIGNvbnN0IGNoYXIKPiAqY29kZWNzKQo+ICsvKiBFbmFibGUgdGhlIGVuY29kZXJzL2Nv
ZGVjcyBmcm9tIHRoZSBsaXN0IHNwZWNpZmllZCBpbiBAY29kZWNzLgo+ICsgKgo+ICsgKiBAcmVk
czogdGhlICNSZWRzU3RhdGUgdG8gbW9kaWZ5Cj4gKyAqIEBjb2RlY3M6IGEgY29kZWMgc3RyaW5n
IGluIHRoZSBmb2xsb3dpbmcgZm9ybWF0Ogo+IGVuY29kZXI6Y29kZWM7ZW5jb2Rlcjpjb2RlYwo+
ICsgKiBAaW5zdGFsbGVkOiAob3B0aW9uYWwpOiBhIGxvY2F0aW9uIHRvIHJldHVybiB0aGUgbnVt
YmVyIG9mIGNvZGVjcwo+IHN1Y2Nlc3NmdWxsIGluc3RhbGxlZAo+ICsgKiBAcmV0dXJuIC0xIGlm
IEBjb2RlY3MgaXMgJU5VTEwgKEBpbnN0YWxsZWQgaXMgbm90IG1vZGlmaWVkKSBvciB0aGUgbnVt
YmVyCj4gb2YgaW52YWxpZAo+ICsgKiAgICAgICAgIGVuY29kZXJzL2NvZGVjcyBmb3VuZCBpbiBA
Y29kZWNzLgo+ICsgKi8KPiArc3RhdGljIGludCByZWRzX3NldF92aWRlb19jb2RlY3NfZnJvbV9z
dHJpbmcoUmVkc1N0YXRlICpyZWRzLCBjb25zdCBjaGFyCj4gKmNvZGVjcywKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50ICppbnN0YWxs
ZWQpCj4gIHsKPiAgICAgIGNoYXIgKmVuY29kZXJfbmFtZSwgKmNvZGVjX25hbWU7Cj4gICAgICBH
QXJyYXkgKnZpZGVvX2NvZGVjczsKPiArICAgIGludCBpbnZhbGlkX2NvZGVjcyA9IDA7Cj4gCj4g
LSAgICBnX3JldHVybl9pZl9mYWlsKGNvZGVjcyAhPSBOVUxMKTsKPiArICAgIGdfcmV0dXJuX3Zh
bF9pZl9mYWlsKGNvZGVjcyAhPSBOVUxMLCAtMSk7Cj4gCj4gICAgICBpZiAoc3RyY21wKGNvZGVj
cywgImF1dG8iKSA9PSAwKSB7Cj4gICAgICAgICAgY29kZWNzID0gZGVmYXVsdF92aWRlb19jb2Rl
Y3M7Cj4gQEAgLTM4MzUsMTUgKzM4NDUsMTkgQEAgc3RhdGljIHZvaWQKPiByZWRzX3NldF92aWRl
b19jb2RlY3NfZnJvbV9zdHJpbmcoUmVkc1N0YXRlICpyZWRzLCBjb25zdCBjaGFyICpjb2RlYwo+
ICAgICAgICAgIHVpbnQzMl90IGVuY29kZXJfaW5kZXgsIGNvZGVjX2luZGV4Owo+ICAgICAgICAg
IGlmICghZW5jb2Rlcl9uYW1lIHx8ICFjb2RlY19uYW1lKSB7Cj4gICAgICAgICAgICAgIHNwaWNl
X3dhcm5pbmcoInNwaWNlOiBpbnZhbGlkIGVuY29kZXI6Y29kZWMgdmFsdWUgYXQgJXMiLAo+ICAg
ICAgICAgICAgICBjb2RlY3MpOwo+ICsgICAgICAgICAgICBpbnZhbGlkX2NvZGVjcysrOwo+IAo+
ICAgICAgICAgIH0gZWxzZSBpZiAoIWdldF9uYW1lX2luZGV4KHZpZGVvX2VuY29kZXJfbmFtZXMs
IGVuY29kZXJfbmFtZSwKPiAgICAgICAgICAmZW5jb2Rlcl9pbmRleCkpewo+ICAgICAgICAgICAg
ICBzcGljZV93YXJuaW5nKCJzcGljZTogdW5rbm93biB2aWRlbyBlbmNvZGVyICVzIiwgZW5jb2Rl
cl9uYW1lKTsKPiArICAgICAgICAgICAgaW52YWxpZF9jb2RlY3MrKzsKPiAKPiAgICAgICAgICB9
IGVsc2UgaWYgKCFnZXRfbmFtZV9pbmRleCh2aWRlb19jb2RlY19uYW1lcywgY29kZWNfbmFtZSwK
PiAgICAgICAgICAmY29kZWNfaW5kZXgpKSB7Cj4gICAgICAgICAgICAgIHNwaWNlX3dhcm5pbmco
InNwaWNlOiB1bmtub3duIHZpZGVvIGNvZGVjICVzIiwgY29kZWNfbmFtZSk7Cj4gKyAgICAgICAg
ICAgIGludmFsaWRfY29kZWNzKys7Cj4gCj4gICAgICAgICAgfSBlbHNlIGlmICghdmlkZW9fZW5j
b2Rlcl9wcm9jc1tlbmNvZGVyX2luZGV4XSkgewo+ICAgICAgICAgICAgICBzcGljZV93YXJuaW5n
KCJzcGljZTogdW5zdXBwb3J0ZWQgdmlkZW8gZW5jb2RlciAlcyIsCj4gICAgICAgICAgICAgIGVu
Y29kZXJfbmFtZSk7Cj4gKyAgICAgICAgICAgIGludmFsaWRfY29kZWNzKys7Cj4gCj4gICAgICAg
ICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgUmVkVmlkZW9Db2RlYyBuZXdfY29kZWM7Cj4gQEAg
LTM4NjQsNiArMzg3OCwxMiBAQCBzdGF0aWMgdm9pZAo+IHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19m
cm9tX3N0cmluZyhSZWRzU3RhdGUgKnJlZHMsIGNvbnN0IGNoYXIgKmNvZGVjCj4gICAgICB9Cj4g
Cj4gICAgICBnX2ZyZWUoY29kZWNzX2NvcHkpOwo+ICsKPiArICAgIGlmIChpbnN0YWxsZWQpIHsK
PiArICAgICAgICAqaW5zdGFsbGVkID0gdmlkZW9fY29kZWNzLT5sZW47Cj4gKyAgICB9Cj4gKwo+
ICsgICAgcmV0dXJuIGludmFsaWRfY29kZWNzOwo+ICB9Cj4gCj4gIFNQSUNFX0dOVUNfVklTSUJM
RSBpbnQgc3BpY2Vfc2VydmVyX2luaXQoU3BpY2VTZXJ2ZXIgKnJlZHMsCj4gIFNwaWNlQ29yZUlu
dGVyZmFjZSAqY29yZSkKPiBAQCAtMzg3NSw3ICszODk1LDcgQEAgU1BJQ0VfR05VQ19WSVNJQkxF
IGludCBzcGljZV9zZXJ2ZXJfaW5pdChTcGljZVNlcnZlcgo+ICpyZWRzLCBTcGljZUNvcmVJbnRl
cmZhY2UgKgo+ICAgICAgICAgIHJlZHNfYWRkX3JlbmRlcmVyKHJlZHMsIGRlZmF1bHRfcmVuZGVy
ZXIpOwo+ICAgICAgfQo+ICAgICAgaWYgKHJlZHMtPmNvbmZpZy0+dmlkZW9fY29kZWNzLT5sZW4g
PT0gMCkgewo+IC0gICAgICAgIHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19mcm9tX3N0cmluZyhyZWRz
LCBkZWZhdWx0X3ZpZGVvX2NvZGVjcyk7Cj4gKyAgICAgICAgcmVkc19zZXRfdmlkZW9fY29kZWNz
X2Zyb21fc3RyaW5nKHJlZHMsIGRlZmF1bHRfdmlkZW9fY29kZWNzLCBOVUxMKTsKPiAgICAgIH0K
PiAgICAgIHJldHVybiByZXQ7Cj4gIH0KPiBAQCAtNDIyMSw4ICs0MjQxLDE1IEBAIHVpbnQzMl90
IHJlZHNfZ2V0X3N0cmVhbWluZ192aWRlbyhjb25zdCBSZWRzU3RhdGUKPiAqcmVkcykKPiAKPiAg
U1BJQ0VfR05VQ19WSVNJQkxFIGludCBzcGljZV9zZXJ2ZXJfc2V0X3ZpZGVvX2NvZGVjcyhTcGlj
ZVNlcnZlciAqcmVkcywKPiAgY29uc3QgY2hhciAqdmlkZW9fY29kZWNzKQo+ICB7Cj4gLSAgICBy
ZWRzX3NldF92aWRlb19jb2RlY3NfZnJvbV9zdHJpbmcocmVkcywgdmlkZW9fY29kZWNzKTsKPiAr
ICAgIHVuc2lnbmVkIGludCBpbnN0YWxsZWQgPSAwOwo+ICsKPiArICAgIHJlZHNfc2V0X3ZpZGVv
X2NvZGVjc19mcm9tX3N0cmluZyhyZWRzLCB2aWRlb19jb2RlY3MsICZpbnN0YWxsZWQpOwo+ICsK
PiArICAgIGlmICghaW5zdGFsbGVkKSB7Cj4gKyAgICAgICAgcmV0dXJuIC0xOwo+ICsgICAgfQo+
ICAgICAgcmVkc19vbl92Y19jaGFuZ2UocmVkcyk7Cj4gKwo+ICAgICAgcmV0dXJuIDA7Cj4gIH0K
PiAKCkFja2VkLiBJIHN1cHBvc2UgeW91IGFyZSBnb2luZyB0byB1c2UgdGhlIHJldHVybiB2YWx1
ZSBpbiBhIGZ1dHVyZSBwYXRjaC4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
