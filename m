Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72266762CA
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 11:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7ED6ECFE;
	Fri, 26 Jul 2019 09:52:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D366ECFE
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:52:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 285673DE1C;
 Fri, 26 Jul 2019 09:52:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2F5735F9DD;
 Fri, 26 Jul 2019 09:52:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 10:52:08 +0100
Message-Id: <20190726095213.15655-2-fziglio@redhat.com>
In-Reply-To: <20190726095213.15655-1-fziglio@redhat.com>
References: <20190726095213.15655-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 26 Jul 2019 09:52:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v3 1/6] channel-display: Minimize
 the stream lag by ignoring the server one
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
Cc: Francois Gouget <fgouget@codeweavers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KClRoZSBjbGll
bnQgaXMgaW4gYSBiZXR0ZXIgcG9zaXRpb24gdGhhbiB0aGUgc2VydmVyIHRvIHBpY2sgdGhlIG1p
bmltdW0KbGFnIG5lZWRlZCB0byBjb21wZW5zYXRlIGZvciBmcmFtZSBhcnJpdmFsIHRpbWUgaml0
dGVyIGFuZCBlbnN1cmUKc21vb3RoIHZpZGVvIHBsYXliYWNrLgpUbyBkbyBzbzoKLSBJdCBpZ25v
cmVzIHRoZSBsYWcgc3BlY2lmaWVkIGJ5IHRoZSBzZXJ2ZXIgdGhyb3VnaCB0aGUgbW10aW1lIGNs
b2NrCiAgYWRqdXN0bWVudHMgKGJ1dCB0aGlzIGxhZyBpcyBzdGlsbCB0cmFja2VkIGZvciB0aGUg
c3RyZWFtIHJlcG9ydHMpLgotIEl0IHBlcmZvcm1zIGl0cyBvd24gZnJhbWUgbW10aW1lIGNvbnZl
cnNpb24gdG8gdGhlIGxvY2FsIG1vbm90b25pYwogIGNsb2NrIHNwaWNlX3Nlc3Npb25fbW10aW1l
MmNsaWVudF90aW1lKCkgc2luY2UgdGhlIHNlcnZlci1jb250cm9sbGVkCiAgbW10aW1lIGNsb2Nr
IGNhbm5vdCBiZSByZWxpZWQgb24uIFRoaXMgY29udmVyc2lvbiB1c2VzIGRhdGEgZnJvbSBhbGwK
ICBzdHJlYW1zIGJ1dCBpcyBnbG9iYWwgc28gYWxsIHN0cmVhbXMgaGF2ZSBhIGNvbW1vbiB0aW1l
IHJlZmVyZW5jZS4KLSBzcGljZV9zZXNzaW9uX21tdGltZTJjbGllbnRfdGltZSgpIGFsc28gaGFu
ZGxlcyB0aGUgbW10aW1lIGNsb2NrCiAgY2hhbmdlcyBjYXVzZWQgYnkgc2VydmVyIG1pZ3JhdGlv
bi4KLSBJdCB0cmFja3MgdGhlIG1hcmdpbiBiZXR3ZWVuIHRoZSBjb252ZXJ0ZWQgdGltZS10by1k
aXNwbGF5IGZyYW1lCiAgdGltZXN0YW1wIGFuZCB0aGUgY3VycmVudCB0aW1lIGFuZCBhZGRzIGEg
ZGVsYXkgdG8gZW5zdXJlIHRoaXMgbWFyZ2luCiAgcmVtYWlucyBwb3NpdGl2ZS4KLSBUaGlzIGRl
bGF5IGludHJvZHVjZXMgdGhlIHZpZGVvIHN0cmVhbSBsYWcuIEl0IGlzIGNvbnRpbnVvdXNseQog
IGFkanVzdGVkIHRvIGVpdGhlciBiZSBhcyBsb3cgYXMgcG9zc2libGUsIG9yIG1hdGNoIHRoZSBh
dWRpbwogIHBsYXliYWNrIGRlbGF5IGZvciBwcm9wZXIgbGlwIHN5bmMuCi0gRGVsYXkgYWRqdXN0
bWVudHMgYXJlIGdyYWR1YWwsIHNwZWVkaW5nIHVwIG9yIHNsb3dpbmcgZG93biB2aWRlbwogIHBs
YXliYWNrIHVudGlsIHRoZSBhdmVyYWdlIG1hcmdpbiBtYXRjaGVzIHRoZSB0YXJnZXQgbGFnLgot
IENoYW5nZXMgaW4gdGhlIGF2ZXJhZ2UgbWFyZ2luIGFyZSB0cmFja2VkIChzZWUgbWFyZ2luX3Nw
cmVhZCkgdG8KICBhdm9pZCBudWRnaW5nIHRoZSBkZWxheSBpbiByZXNwb25zZSB0byBtaW5vciBy
YW5kb20gdmFyaWF0aW9ucy4KClNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdl
dEBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyAgIHwgIDIw
ICsrLS0KIHNyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYyB8ICAxNCArLS0KIHNyYy9jaGFubmVs
LWRpc3BsYXktcHJpdi5oICB8ICAyNCArKysrLQogc3JjL2NoYW5uZWwtZGlzcGxheS5jICAgICAg
IHwgMTgwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQogc3JjL3NwaWNlLXNl
c3Npb24tcHJpdi5oICAgIHwgICAxICsKIHNyYy9zcGljZS1zZXNzaW9uLmMgICAgICAgICB8ICA0
NiArKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgMjQ3IGluc2VydGlvbnMoKyksIDM4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgYi9zcmMvY2hh
bm5lbC1kaXNwbGF5LWdzdC5jCmluZGV4IDZmY2NmNjIxLi43YWQ2MDA5YiAxMDA2NDQKLS0tIGEv
c3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5j
CkBAIC01MCw3ICs1MCw3IEBAIHR5cGVkZWYgc3RydWN0IFNwaWNlR3N0RGVjb2RlciB7CiAKICAg
ICAvKiAtLS0tLS0tLS0tIERlY29kaW5nIGFuZCBkaXNwbGF5IHF1ZXVlcyAtLS0tLS0tLS0tICov
CiAKLSAgICB1aW50MzJfdCBsYXN0X21tX3RpbWU7CisgICAgdWludDMyX3QgbGFzdF9mcmFtZV90
aW1lOwogCiAgICAgR011dGV4IHF1ZXVlc19tdXRleDsKICAgICBHUXVldWUgKmRlY29kaW5nX3F1
ZXVlOwpAQCAtMjk3LDggKzI5Nyw4IEBAIHN0YXRpYyB2b2lkIHNjaGVkdWxlX2ZyYW1lKFNwaWNl
R3N0RGVjb2RlciAqZGVjb2RlcikKICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICB9CiAKLSAg
ICAgICAgaWYgKHNwaWNlX21tdGltZV9kaWZmKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90
aW1lLCBub3cpID49IDApIHsKLSAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1l
b3V0X2FkZChnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSAtIG5vdywKKyAgICAgICAg
aWYgKHNwaWNlX21tdGltZV9kaWZmKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT50aW1lLCBub3cp
ID49IDApIHsKKyAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1lb3V0X2FkZChn
c3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+dGltZSAtIG5vdywKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkaXNwbGF5X2ZyYW1lLCBkZWNvZGVyKTsKICAgICAg
ICAgfSBlbHNlIGlmIChkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lICYmICFkZWNvZGVyLT5wZW5kaW5n
X3NhbXBsZXMpIHsKICAgICAgICAgICAgIC8qIFN0aWxsIGF0dGVtcHQgdG8gZGlzcGxheSB0aGUg
bGVhc3Qgb3V0IG9mIGRhdGUgZnJhbWUgc28gdGhlCkBAIC0zMDcsOCArMzA3LDggQEAgc3RhdGlj
IHZvaWQgc2NoZWR1bGVfZnJhbWUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVyKQogICAgICAgICAg
ICAgZGVjb2Rlci0+dGltZXJfaWQgPSBnX3RpbWVvdXRfYWRkKDAsIGRpc3BsYXlfZnJhbWUsIGRl
Y29kZXIpOwogICAgICAgICB9IGVsc2UgewogICAgICAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBy
ZW5kZXJpbmcgdG9vIGxhdGUgYnkgJXUgbXMgKHRzOiAldSwgbW10aW1lOiAldSksIGRyb3BwaW5n
IiwKLSAgICAgICAgICAgICAgICAgICAgICAgIF9fRlVOQ1RJT05fXywgbm93IC0gZ3N0ZnJhbWUt
PmVuY29kZWRfZnJhbWUtPm1tX3RpbWUsCi0gICAgICAgICAgICAgICAgICAgICAgICBnc3RmcmFt
ZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSwgbm93KTsKKyAgICAgICAgICAgICAgICAgICAgICAg
IF9fRlVOQ1RJT05fXywgbm93IC0gZ3N0ZnJhbWUtPmVuY29kZWRfZnJhbWUtPnRpbWUsCisgICAg
ICAgICAgICAgICAgICAgICAgICBnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+dGltZSwgbm93KTsK
ICAgICAgICAgICAgIHN0cmVhbV9kcm9wcGVkX2ZyYW1lX29uX3BsYXliYWNrKGRlY29kZXItPmJh
c2Uuc3RyZWFtKTsKICAgICAgICAgICAgIGRlY29kZXItPmRpc3BsYXlfZnJhbWUgPSBOVUxMOwog
ICAgICAgICAgICAgZnJlZV9nc3RfZnJhbWUoZ3N0ZnJhbWUpOwpAQCAtNDQ5LDcgKzQ0OSw3IEBA
IHNpbmtfZXZlbnRfcHJvYmUoR3N0UGFkICpwYWQsIEdzdFBhZFByb2JlSW5mbyAqaW5mbywgZ3Bv
aW50ZXIgZGF0YSkKICAgICAgICAgICAgICAqICAgb3IgbW9yZSBmcmFtZSBpbnRlcnZhbHMuCiAg
ICAgICAgICAgICAgKi8KICAgICAgICAgICAgIHJlY29yZChmcmFtZXNfc3RhdHMsCi0gICAgICAg
ICAgICAgICAgICAgImZyYW1lIG1tX3RpbWUgJXUgc2l6ZSAldSBjcmVhdGlvbiB0aW1lICUiIFBS
SWQ2NAorICAgICAgICAgICAgICAgICAgICJmcmFtZSB0aW1lICV1IHNpemUgJXUgY3JlYXRpb24g
dGltZSAlIiBQUklkNjQKICAgICAgICAgICAgICAgICAgICAiIGRlY29kZWQgdGltZSAlIiBQUklk
NjQgIiBxdWV1ZSAldSBiZWZvcmUgJXUiLAogICAgICAgICAgICAgICAgICAgIGZyYW1lLT5tbV90
aW1lLCBmcmFtZS0+c2l6ZSwgZnJhbWUtPmNyZWF0aW9uX3RpbWUsIGR1cmF0aW9uLAogICAgICAg
ICAgICAgICAgICAgIGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLT5sZW5ndGgsIGdzdGZyYW1lLT5x
dWV1ZV9sZW4pOwpAQCAtNjg5LDEzICs2ODksMTMgQEAgc3RhdGljIGdib29sZWFuIHNwaWNlX2dz
dF9kZWNvZGVyX3F1ZXVlX2ZyYW1lKFZpZGVvRGVjb2RlciAqdmlkZW9fZGVjb2RlciwKICAgICAg
ICAgcmV0dXJuIFRSVUU7CiAgICAgfQogCi0gICAgaWYgKHNwaWNlX21tdGltZV9kaWZmKGZyYW1l
LT5tbV90aW1lLCBkZWNvZGVyLT5sYXN0X21tX3RpbWUpIDwgMCkgeworICAgIGlmIChzcGljZV9t
bXRpbWVfZGlmZihmcmFtZS0+dGltZSwgZGVjb2Rlci0+bGFzdF9mcmFtZV90aW1lKSA8IDApIHsK
ICAgICAgICAgU1BJQ0VfREVCVUcoIm5ldy1mcmFtZS10aW1lIDwgbGFzdC1mcmFtZS10aW1lICgl
dSA8ICV1KToiCiAgICAgICAgICAgICAgICAgICAgICIgcmVzZXR0aW5nIHN0cmVhbSIsCi0gICAg
ICAgICAgICAgICAgICAgIGZyYW1lLT5tbV90aW1lLCBkZWNvZGVyLT5sYXN0X21tX3RpbWUpOwor
ICAgICAgICAgICAgICAgICAgICBmcmFtZS0+dGltZSwgZGVjb2Rlci0+bGFzdF9mcmFtZV90aW1l
KTsKICAgICAgICAgLyogTGV0IEdTdHJlYW1lciBkZWFsIHdpdGggdGhlIGZyYW1lIGFueXdheSAq
LwogICAgIH0KLSAgICBkZWNvZGVyLT5sYXN0X21tX3RpbWUgPSBmcmFtZS0+bW1fdGltZTsKKyAg
ICBkZWNvZGVyLT5sYXN0X2ZyYW1lX3RpbWUgPSBmcmFtZS0+dGltZTsKIAogICAgIGlmIChtYXJn
aW4gPCAwICYmCiAgICAgICAgIGRlY29kZXItPmJhc2UuY29kZWNfdHlwZSA9PSBTUElDRV9WSURF
T19DT0RFQ19UWVBFX01KUEVHKSB7CkBAIC03NzgsNyArNzc4LDcgQEAgVmlkZW9EZWNvZGVyKiBj
cmVhdGVfZ3N0cmVhbWVyX2RlY29kZXIoaW50IGNvZGVjX3R5cGUsIGRpc3BsYXlfc3RyZWFtICpz
dHJlYW0pCiAgICAgICAgIGRlY29kZXItPmJhc2UucXVldWVfZnJhbWUgPSBzcGljZV9nc3RfZGVj
b2Rlcl9xdWV1ZV9mcmFtZTsKICAgICAgICAgZGVjb2Rlci0+YmFzZS5jb2RlY190eXBlID0gY29k
ZWNfdHlwZTsKICAgICAgICAgZGVjb2Rlci0+YmFzZS5zdHJlYW0gPSBzdHJlYW07Ci0gICAgICAg
IGRlY29kZXItPmxhc3RfbW1fdGltZSA9IHN0cmVhbV9nZXRfdGltZShzdHJlYW0pOworICAgICAg
ICBkZWNvZGVyLT5sYXN0X2ZyYW1lX3RpbWUgPSBzdHJlYW1fZ2V0X3RpbWUoc3RyZWFtKTsKICAg
ICAgICAgZ19tdXRleF9pbml0KCZkZWNvZGVyLT5xdWV1ZXNfbXV0ZXgpOwogICAgICAgICBkZWNv
ZGVyLT5kZWNvZGluZ19xdWV1ZSA9IGdfcXVldWVfbmV3KCk7CiAKZGlmZiAtLWdpdCBhL3NyYy9j
aGFubmVsLWRpc3BsYXktbWpwZWcuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwppbmRl
eCA2NDdkMzFiMC4uZDNhYjc3YzggMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpw
ZWcuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKQEAgLTE4MSwxNiArMTgxLDE2
IEBAIHN0YXRpYyB2b2lkIG1qcGVnX2RlY29kZXJfc2NoZWR1bGUoTUpwZWdEZWNvZGVyICpkZWNv
ZGVyKQogICAgIGRlY29kZXItPmN1cl9mcmFtZSA9IE5VTEw7CiAgICAgZG8gewogICAgICAgICBp
ZiAoZnJhbWUpIHsKLSAgICAgICAgICAgIGlmIChzcGljZV9tbXRpbWVfZGlmZih0aW1lLCBmcmFt
ZS0+bW1fdGltZSkgPD0gMCkgewotICAgICAgICAgICAgICAgIGd1aW50MzIgZCA9IGZyYW1lLT5t
bV90aW1lIC0gdGltZTsKKyAgICAgICAgICAgIGlmIChzcGljZV9tbXRpbWVfZGlmZih0aW1lLCBm
cmFtZS0+dGltZSkgPD0gMCkgeworICAgICAgICAgICAgICAgIGd1aW50MzIgZCA9IGZyYW1lLT50
aW1lIC0gdGltZTsKICAgICAgICAgICAgICAgICBkZWNvZGVyLT5jdXJfZnJhbWUgPSBmcmFtZTsK
ICAgICAgICAgICAgICAgICBkZWNvZGVyLT50aW1lcl9pZCA9IGdfdGltZW91dF9hZGQoZCwgbWpw
ZWdfZGVjb2Rlcl9kZWNvZGVfZnJhbWUsIGRlY29kZXIpOwogICAgICAgICAgICAgICAgIGJyZWFr
OwogICAgICAgICAgICAgfQogCiAgICAgICAgICAgICBTUElDRV9ERUJVRygiJXM6IHJlbmRlcmlu
ZyB0b28gbGF0ZSBieSAldSBtcyAodHM6ICV1LCBtbXRpbWU6ICV1KSwgZHJvcHBpbmcgIiwKLSAg
ICAgICAgICAgICAgICAgICAgICAgIF9fRlVOQ1RJT05fXywgdGltZSAtIGZyYW1lLT5tbV90aW1l
LAotICAgICAgICAgICAgICAgICAgICAgICAgZnJhbWUtPm1tX3RpbWUsIHRpbWUpOworICAgICAg
ICAgICAgICAgICAgICAgICAgX19GVU5DVElPTl9fLCB0aW1lIC0gZnJhbWUtPnRpbWUsCisgICAg
ICAgICAgICAgICAgICAgICAgICBmcmFtZS0+dGltZSwgdGltZSk7CiAgICAgICAgICAgICBzdHJl
YW1fZHJvcHBlZF9mcmFtZV9vbl9wbGF5YmFjayhkZWNvZGVyLT5iYXNlLnN0cmVhbSk7CiAgICAg
ICAgICAgICBzcGljZV9mcmFtZV9mcmVlKGZyYW1lKTsKICAgICAgICAgfQpAQCAtMjI2LDEyICsy
MjYsMTIgQEAgc3RhdGljIGdib29sZWFuIG1qcGVnX2RlY29kZXJfcXVldWVfZnJhbWUoVmlkZW9E
ZWNvZGVyICp2aWRlb19kZWNvZGVyLAogCiAgICAgbGFzdF9mcmFtZSA9IGdfcXVldWVfcGVla190
YWlsKGRlY29kZXItPm1zZ3EpOwogICAgIGlmIChsYXN0X2ZyYW1lKSB7Ci0gICAgICAgIGlmIChz
cGljZV9tbXRpbWVfZGlmZihmcmFtZS0+bW1fdGltZSwgbGFzdF9mcmFtZS0+bW1fdGltZSkgPCAw
KSB7CisgICAgICAgIGlmIChzcGljZV9tbXRpbWVfZGlmZihmcmFtZS0+dGltZSwgbGFzdF9mcmFt
ZS0+dGltZSkgPCAwKSB7CiAgICAgICAgICAgICAvKiBUaGlzIHNob3VsZCByZWFsbHkgbm90IGhh
cHBlbiAqLwogICAgICAgICAgICAgU1BJQ0VfREVCVUcoIm5ldy1mcmFtZS10aW1lIDwgbGFzdC1m
cmFtZS10aW1lICgldSA8ICV1KToiCiAgICAgICAgICAgICAgICAgICAgICAgICAiIHJlc2V0dGlu
ZyBzdHJlYW0iLAotICAgICAgICAgICAgICAgICAgICAgICAgZnJhbWUtPm1tX3RpbWUsCi0gICAg
ICAgICAgICAgICAgICAgICAgICBsYXN0X2ZyYW1lLT5tbV90aW1lKTsKKyAgICAgICAgICAgICAg
ICAgICAgICAgIGZyYW1lLT50aW1lLAorICAgICAgICAgICAgICAgICAgICAgICAgbGFzdF9mcmFt
ZS0+dGltZSk7CiAgICAgICAgICAgICBtanBlZ19kZWNvZGVyX2Ryb3BfcXVldWUoZGVjb2Rlcik7
CiAgICAgICAgIH0KICAgICB9CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYu
aCBiL3NyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oCmluZGV4IDE2YzEyYzZlLi5hODk5NDY1NSAx
MDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmgKKysrIGIvc3JjL2NoYW5uZWwt
ZGlzcGxheS1wcml2LmgKQEAgLTM5LDE0ICszOSwxOCBAQCB0eXBlZGVmIHN0cnVjdCBkaXNwbGF5
X3N0cmVhbSBkaXNwbGF5X3N0cmVhbTsKIAogdHlwZWRlZiBzdHJ1Y3QgU3BpY2VGcmFtZSBTcGlj
ZUZyYW1lOwogc3RydWN0IFNwaWNlRnJhbWUgewotICAgIHVpbnQzMl90IG1tX3RpbWU7CisgICAg
LyogRGlzcGxheSB0aW1lLiBTZWUgc3RyZWFtX2dldF90aW1lKCkuICovCisgICAgdWludDMyX3Qg
dGltZTsKKwogICAgIFNwaWNlUmVjdCBkZXN0OwogCiAgICAgdWludDhfdCAqZGF0YTsKICAgICB1
aW50MzJfdCBzaXplOwogICAgIGdwb2ludGVyIGRhdGFfb3BhcXVlOwogCi0gICAgLyogc3RhdHMg
Ki8KKyAgICAvKiBGb3Igc3RhdGlzdGljcyBhbmQgdG8gY29ycmVsYXRlIHdpdGggdGhlIHNlcnZl
ciBsb2dzIGZvciBkZWJ1Z2dpbmcuICovCisgICAgdWludDMyX3QgbW1fdGltZTsKKyAgICAvKiBU
byBjb21wdXRlIGRlY29kaW5nIHRpbWUgZm9yIHN0YXRpc3RpY3MuICovCiAgICAgZ2ludDY0IGNy
ZWF0aW9uX3RpbWU7CiB9OwogCkBAIC0xMjQsNiArMTI4LDIyIEBAIHN0cnVjdCBkaXNwbGF5X3N0
cmVhbSB7CiAKICAgICBTcGljZUNoYW5uZWwgICAgICAgICAgICAgICAgKmNoYW5uZWw7CiAKKyAg
ICB1aW50MzJfdCAgICAgICAgICAgICBsYXN0X2ZyYW1lX21tX3RpbWU7CisgICAgdWludDMyX3Qg
ICAgICAgICAgICAgbGFzdF9mcmFtZV90aW1lOworCisgICAgLyogbGFnIG1hbmFnZW1lbnQgKHNl
ZSBkaXNwbGF5X2hhbmRsZV9zdHJlYW1fZGF0YSgpKSAqLworICAgIHVpbnQzMl90ICAgICAgICAg
ICAgIGRlbGF5OworICAgIGludDMyX3QgICAgICAgICAgICAgIG1pbl9tYXJnaW47CisgICAgZmxv
YXQgICAgICAgICAgICAgICAgYXZnX21hcmdpbjsKKyAgICB1aW50MzJfdCAgICAgICAgICAgICBt
YXJnaW5fc3ByZWFkOworCisgICAgLyogbWFyZ2luIGV2YWx1YXRpb24gKi8KKyAgICB1aW50MzJf
dCAgICAgICAgICAgICBtYXJnaW5fZXZhbF9zdGFydDsKKyAgICB1aW50MzJfdCAgICAgICAgICAg
ICBtYXJnaW5fZXZhbF9jb3VudDsKKyAgICBpbnQzMl90ICAgICAgICAgICAgICBtaW5fbWFyZ2lu
X25leHQ7CisgICAgaW50MzJfdCAgICAgICAgICAgICAgbWluX2F2Z19tYXJnaW47CisgICAgaW50
MzJfdCAgICAgICAgICAgICAgbWF4X2F2Z19tYXJnaW47CisKICAgICAvKiBzdGF0cyAqLwogICAg
IHVpbnQzMl90ICAgICAgICAgICAgIGZpcnN0X2ZyYW1lX21tX3RpbWU7CiAgICAgdWludDMyX3Qg
ICAgICAgICAgICAgYXJyaXZlX2xhdGVfY291bnQ7CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1k
aXNwbGF5LmMgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKaW5kZXggNDQ1NTVlM2YuLmFjYzY2ZGQx
IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlz
cGxheS5jCkBAIC0yMSw2ICsyMSw3IEBACiAjaW5jbHVkZSA8c3lzL3R5cGVzLmg+CiAjZW5kaWYK
ICNpbmNsdWRlIDxnbGliL2dpMThuLWxpYi5oPgorI2luY2x1ZGUgPG1hdGguaD4gLyogZm9yIGNl
aWxmKCkgKi8KIAogI2luY2x1ZGUgInNwaWNlLWNsaWVudC5oIgogI2luY2x1ZGUgInNwaWNlLWNv
bW1vbi5oIgpAQCAtMTQyOSw4ICsxNDMwLDcgQEAgc3RhdGljIHVpbnQzMl90IHNwaWNlX21zZ19p
bl9mcmFtZV9kYXRhKFNwaWNlTXNnSW4gKmZyYW1lX21zZywgdWludDhfdCAqKmRhdGEpCiBHX0dO
VUNfSU5URVJOQUwKIGd1aW50MzIgc3RyZWFtX2dldF90aW1lKGRpc3BsYXlfc3RyZWFtICpzdCkK
IHsKLSAgICBTcGljZVNlc3Npb24gKnNlc3Npb24gPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9u
KHN0LT5jaGFubmVsKTsKLSAgICByZXR1cm4gc2Vzc2lvbiA/IHNwaWNlX3Nlc3Npb25fZ2V0X21t
X3RpbWUoc2Vzc2lvbikgOiAwOworICAgIHJldHVybiBnX2dldF9tb25vdG9uaWNfdGltZSgpIC8g
MTAwMDsKIH0KIAogLyogY29yb3V0aW5lIG9yIG1haW4gY29udGV4dCAqLwpAQCAtMTY5NCw3ICsx
Njk0LDggQEAgc3RhdGljIHZvaWQgZGlzcGxheV9zdHJlYW1fc3RhdHNfc2F2ZShkaXNwbGF5X3N0
cmVhbSAqc3QsCiAKIHN0YXRpYyBTcGljZUZyYW1lICpzcGljZV9mcmFtZV9uZXcoZGlzcGxheV9z
dHJlYW0gKnN0LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZU1zZ0lu
ICppbiwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ3VpbnQzMiBmcmFtZV9t
bXRpbWUpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgbW1fdGlt
ZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ3VpbnQzMiBmcmFtZV90aW1l
KQogewogICAgIFNwaWNlRnJhbWUgKmZyYW1lOwogICAgIGd1aW50OCAqZGF0YV9wdHI7CkBAIC0x
NzAyLDcgKzE3MDMsOCBAQCBzdGF0aWMgU3BpY2VGcmFtZSAqc3BpY2VfZnJhbWVfbmV3KGRpc3Bs
YXlfc3RyZWFtICpzdCwKICAgICBndWludDMyIGRhdGFfc2l6ZSA9IHNwaWNlX21zZ19pbl9mcmFt
ZV9kYXRhKGluLCAmZGF0YV9wdHIpOwogCiAgICAgZnJhbWUgPSBnX25ldyhTcGljZUZyYW1lLCAx
KTsKLSAgICBmcmFtZS0+bW1fdGltZSA9IGZyYW1lX21tdGltZTsKKyAgICBmcmFtZS0+bW1fdGlt
ZSA9IG1tX3RpbWU7CisgICAgZnJhbWUtPnRpbWUgPSBmcmFtZV90aW1lOwogICAgIGZyYW1lLT5k
ZXN0ID0gKmRlc3RfcmVjdDsKICAgICBmcmFtZS0+ZGF0YSA9IGRhdGFfcHRyOwogICAgIGZyYW1l
LT5zaXplID0gZGF0YV9zaXplOwpAQCAtMTcyMyw0NCArMTcyNSwxODQgQEAgdm9pZCBzcGljZV9m
cmFtZV9mcmVlKFNwaWNlRnJhbWUgKmZyYW1lKQogICAgIGdfZnJlZShmcmFtZSk7CiB9CiAKKy8q
IFBpY2sgYW4gaW5pdGlhbCB2YWx1ZSBsaWtlbHkgdG8gY292ZXIgdGhlIG5ldHdvcmsgaml0dGVy
IGFuZCBub3QgdG8gY2F1c2UKKyAqIGEgc2lnbmlmaWNhbnQgbGFnLiBUaGUgZGVsYXkgd2lsbCBi
ZSBhZGp1c3RlZCBmcm9tIHRoZXJlLgorICovCisjZGVmaW5lIElOSVRJQUxfREVMQVkgNDAKKwor
LyogQ29sbGVjdCBkYXRhIG9uIGEgbG9uZyBlbm91Z2ggcGVyaW9kIHRvIGNhcHR1cmUgcmFyZSBl
dmVudHMsIGJ1dCBzaG9ydAorICogZW5vdWdoIHNvIHRoYXQgdGhlIGFsZ29yaXRobSBpcyBzdGls
bCByZXNwb25zaXZlIHRvIGNoYW5nZXMuCisgKi8KKyNkZWZpbmUgTUFSR0lOX0VWQUxfVElNRSAo
MSAqIDEwMDApCisKKy8qIE1ha2Ugc3VyZSB3ZSBoYXZlIGVub3VnaCBkYXRhIHBvaW50cyBldmVu
IGlmIHRoZSBmcmFtZXJhdGUgaXMgdmVyeSBsb3cuICovCisjZGVmaW5lIE1BUkdJTl9FVkFMX0NP
VU5UIDIwCisKIC8qIGNvcm91dGluZSBjb250ZXh0ICovCiBzdGF0aWMgdm9pZCBkaXNwbGF5X2hh
bmRsZV9zdHJlYW1fZGF0YShTcGljZUNoYW5uZWwgKmNoYW5uZWwsIFNwaWNlTXNnSW4gKmluKQog
eworICAgIFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiA9IHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24o
Y2hhbm5lbCk7CiAgICAgU3BpY2VEaXNwbGF5Q2hhbm5lbFByaXZhdGUgKmMgPSBTUElDRV9ESVNQ
TEFZX0NIQU5ORUwoY2hhbm5lbCktPnByaXY7CiAgICAgU3BpY2VTdHJlYW1EYXRhSGVhZGVyICpv
cCA9IHNwaWNlX21zZ19pbl9wYXJzZWQoaW4pOwogICAgIGRpc3BsYXlfc3RyZWFtICpzdCA9IGdl
dF9zdHJlYW1fYnlfaWQoY2hhbm5lbCwgb3AtPmlkKTsKLSAgICBndWludDMyIG1tdGltZTsKLSAg
ICBpbnQzMl90IG1hcmdpbiwgbWFyZ2luX3JlcG9ydDsKKyAgICBndWludDMyIGN1cnJlbnRfbW10
aW1lLCBmcmFtZV9pbnRlcnZhbDsKKyAgICBndWludDMyIHN0cmVhbV90aW1lLCBmcmFtZV90aW1l
OworICAgIGdpbnQzMiBtbXRpbWVfbWFyZ2luLCBtYXJnaW47CiAgICAgU3BpY2VGcmFtZSAqZnJh
bWU7CiAKICAgICBnX3JldHVybl9pZl9mYWlsKHN0ICE9IE5VTEwpOwotICAgIG1tdGltZSA9IHN0
cmVhbV9nZXRfdGltZShzdCk7CisKKyAgICBjdXJyZW50X21tdGltZSA9IHNwaWNlX3Nlc3Npb25f
Z2V0X21tX3RpbWUoc2Vzc2lvbik7CiAKICAgICBpZiAoc3BpY2VfbXNnX2luX3R5cGUoaW4pID09
IFNQSUNFX01TR19ESVNQTEFZX1NUUkVBTV9EQVRBX1NJWkVEKSB7CiAgICAgICAgIENIQU5ORUxf
REVCVUcoY2hhbm5lbCwgInN0cmVhbSAldSBjb250YWlucyBzaXplZCBkYXRhIiwgb3AtPmlkKTsK
ICAgICB9CiAKKyAgICBmcmFtZV9pbnRlcnZhbCA9IDA7CisgICAgbW10aW1lX21hcmdpbiA9IDQw
MDsgLyogc2VydmVyJ3MgZGVmYXVsdCBtbV90aW1lIG9mZnNldCAqLwogICAgIGlmIChvcC0+bXVs
dGlfbWVkaWFfdGltZSA9PSAwKSB7Ci0gICAgICAgIGdfY3JpdGljYWwoIlJlY2VpdmVkIGZyYW1l
IHdpdGggaW52YWxpZCAwIHRpbWVzdGFtcCEgcGVyaGFwcyB3cm9uZyBncmFwaGljIGRyaXZlcj8i
KTsKLSAgICAgICAgb3AtPm11bHRpX21lZGlhX3RpbWUgPSBtbXRpbWUgKyAxMDA7IC8qIHdvcmth
cm91bmQuLi4gKi8KLSAgICB9CisgICAgICAgIGdfY3JpdGljYWwoIlJlY2VpdmVkIGZyYW1lIHdp
dGggaW52YWxpZCAwIHRpbWVzdGFtcCEgUGVyaGFwcyB3cm9uZyBncmFwaGljIGRyaXZlcj8iKTsK
KyAgICAgICAgb3AtPm11bHRpX21lZGlhX3RpbWUgPSBjdXJyZW50X21tdGltZTsgLyogd29ya2Fy
b3VuZC4uLiAqLworICAgICAgICBmcmFtZV9pbnRlcnZhbCA9IHNwaWNlX21tdGltZV9kaWZmKG9w
LT5tdWx0aV9tZWRpYV90aW1lLCBzdC0+bGFzdF9mcmFtZV9tbV90aW1lKTsKKyAgICB9IGVsc2Ug
aWYgKHN0LT5sYXN0X2ZyYW1lX21tX3RpbWUgPT0gMCkgeworICAgICAgICAvKiBGaXJzdCBmcmFt
ZSBzbyBmcmFtZV9pbnRlcnZhbCBpcyB1bmtub3duICovCisgICAgICAgIG1tdGltZV9tYXJnaW4g
PSBzcGljZV9tbXRpbWVfZGlmZihvcC0+bXVsdGlfbWVkaWFfdGltZSwgY3VycmVudF9tbXRpbWUp
OworICAgIH0gZWxzZSBpZiAoc3BpY2VfbW10aW1lX2RpZmYob3AtPm11bHRpX21lZGlhX3RpbWUs
IHN0LT5sYXN0X2ZyYW1lX21tX3RpbWUpIDwgMCkgeworICAgICAgICAvKiBUaGlzIGNhbiBoYXBw
ZW4gd2hlbiBtaWdyYXRpbmcgZnJvbSBhIHNlcnZlciB3aXRoIGEgaGlnaCBtbV90aW1lCisgICAg
ICAgICAqIChpLmUuIGhpZ2ggdXB0aW1lKSB0byBvbmUgd2l0aCBhIGxvdyBtbV90aW1lOgorICAg
ICAgICAgKiAtIHNlcnZlciBBIHNlbmRzIGEgZnJhbWUgd2l0aCBBX21tX3RpbWUKKyAgICAgICAg
ICogLSBjbGllbnQgcmVjZWl2ZXMgdGhlIGZyYW1lIGFuZCBzZXRzIGxhc3RfZnJhbWVfbW1fdGlt
ZSA9IEFfbW1fdGltZQorICAgICAgICAgKiAtIHNlcnZlciBCIHNlbmRzIGEgZnJhbWUgd2l0aCBC
X21tX3RpbWUKKyAgICAgICAgICogLSBjbGllbnQgcmVjZWl2ZXMgc2VydmVyIEIncyBmcmFtZSB3
aXRoIEJfbW1fdGltZSA8PCBBX21tX3RpbWUKKyAgICAgICAgICogQWxzbyBub3RlIHRoYXQgYWx0
aG91Z2ggc2VydmVyIEIgd291bGQgbm9ybWFsbHkgc2VuZCBhbiBtbV90aW1lCisgICAgICAgICAq
IHJlc2V0IG1lc3NhZ2UsIHRoZXJlIGlzIG5vIGd1YXJhbnRlZSBpdCB3aWxsIGJlIHJlY2VpdmVk
IGJlZm9yZQorICAgICAgICAgKiBzZXJ2ZXIgQidzIGZpcnN0IGZyYW1lIHNvIGl0J3Mgbm90IG11
Y2ggaGVscC4KKyAgICAgICAgICovCisgICAgICAgIFNQSUNFX0RFQlVHKCIldSBnb3QgYW4gb3V0
IG9mIG9yZGVyIGZyYW1lIC0ldSIsIG9wLT5pZCwKKyAgICAgICAgICAgICAgICAgICAgc3QtPmxh
c3RfZnJhbWVfbW1fdGltZSAtIG9wLT5tdWx0aV9tZWRpYV90aW1lKTsKKyAgICAgICAgc3QtPmxh
c3RfZnJhbWVfbW1fdGltZSA9IG9wLT5tdWx0aV9tZWRpYV90aW1lOworICAgIH0gZWxzZSBpZiAo
c3BpY2VfbW10aW1lX2RpZmYob3AtPm11bHRpX21lZGlhX3RpbWUsIHN0LT5sYXN0X2ZyYW1lX21t
X3RpbWUpID4gMTAwMCkgeworICAgICAgICAvKiBTdHJlYW1zIGFyZSBzdXBwb3NlZCB0byBzZW5k
IGF0IGxlYXN0IDEgZnJhbWUgcGVyIHNlY29uZC4KKyAgICAgICAgICogU28gaXQncyBtb3JlIGxp
a2VseSB0aGF0IHdlIGdvdCBtaWdyYXRlZCBmcm9tIGEgc2VydmVyIHdpdGggYSBsb3cKKyAgICAg
ICAgICogbW1fdGltZSAoaS5lLiBsb3cgdXB0aW1lKSB0byBvbmUgd2l0aCBhIGhpZ2ggbW1fdGlt
ZS4gU2VlIHRoZSBjYXNlCisgICAgICAgICAqIGFib3ZlIGZvciBkZXRhaWxzLiBJbiBzdWNoIGEg
Y2FzZSBzaW1wbHkgcmVpbml0aWFsaXplIHRoZSBzdHJlYW0uCisgICAgICAgICAqLworICAgICAg
ICBTUElDRV9ERUJVRygiJXUgZ290IGFuIGFibm9ybWFsbHkgbG9uZyBtbV90aW1lIGZyYW1lIGlu
dGVydmFsICV1Iiwgb3AtPmlkLAorICAgICAgICAgICAgICAgICAgICBvcC0+bXVsdGlfbWVkaWFf
dGltZSAtIHN0LT5sYXN0X2ZyYW1lX21tX3RpbWUpOworICAgICAgICBzdC0+bGFzdF9mcmFtZV90
aW1lID0gMDsKKyAgICB9IGVsc2UgeworICAgICAgICBtbXRpbWVfbWFyZ2luID0gc3BpY2VfbW10
aW1lX2RpZmYob3AtPm11bHRpX21lZGlhX3RpbWUsIGN1cnJlbnRfbW10aW1lKTsKKyAgICAgICAg
ZnJhbWVfaW50ZXJ2YWwgPSBzcGljZV9tbXRpbWVfZGlmZihvcC0+bXVsdGlfbWVkaWFfdGltZSwg
c3QtPmxhc3RfZnJhbWVfbW1fdGltZSk7CisgICAgfQorICAgIGRpc3BsYXlfc3RyZWFtX3N0YXRz
X3NhdmUoc3QsIG9wLT5tdWx0aV9tZWRpYV90aW1lLCBjdXJyZW50X21tdGltZSk7CisgICAgc3Qt
Pmxhc3RfZnJhbWVfbW1fdGltZSA9IG9wLT5tdWx0aV9tZWRpYV90aW1lOworCisgICAgLyogQ29t
cHV0ZSB0aGUgbG9jYWwgZnJhbWUgbW10aW1lICovCisgICAgc3RyZWFtX3RpbWUgPSBzdHJlYW1f
Z2V0X3RpbWUoc3QpOworICAgIGZyYW1lX3RpbWUgPSBzcGljZV9zZXNzaW9uX21tdGltZTJjbGll
bnRfdGltZShzZXNzaW9uLCBvcC0+bXVsdGlfbWVkaWFfdGltZSk7CisgICAgZ3VpbnQzMiB0YXJn
ZXRfbGFnID0gc3BpY2Vfc2Vzc2lvbl9nZXRfcGxheWJhY2tfbGF0ZW5jeShzZXNzaW9uKTsKKyAg
ICBpZiAoc3QtPmxhc3RfZnJhbWVfdGltZSA9PSAwKSB7CisgICAgICAgIG1hcmdpbiA9IHNwaWNl
X21tdGltZV9kaWZmKGZyYW1lX3RpbWUsIHN0cmVhbV90aW1lKTsKKyAgICAgICAgc3QtPmRlbGF5
ID0gTUFYKHRhcmdldF9sYWcgLSBtYXJnaW4sIElOSVRJQUxfREVMQVkpOworICAgICAgICBmcmFt
ZV90aW1lICs9IHN0LT5kZWxheTsKKyAgICAgICAgbWFyZ2luICs9IHN0LT5kZWxheTsKKworICAg
ICAgICBzdC0+bWFyZ2luX2V2YWxfc3RhcnQgPSBzdHJlYW1fdGltZTsKKyAgICAgICAgc3QtPm1h
cmdpbl9ldmFsX2NvdW50ID0gMDsKKyAgICAgICAgc3QtPm1pbl9tYXJnaW4gPSAwOyAvKiBGb3Jj
ZSB3YWl0IGJlZm9yZSByZWR1Y2luZyB0aGUgZGVsYXkgKi8KKyAgICAgICAgc3QtPm1pbl9tYXJn
aW5fbmV4dCA9IG1hcmdpbjsKKyAgICAgICAgc3QtPmF2Z19tYXJnaW4gPSBtYXJnaW47CisgICAg
ICAgIHN0LT5tYXhfYXZnX21hcmdpbiA9IHN0LT5taW5fYXZnX21hcmdpbiA9IG1hcmdpbjsKKyAg
ICAgICAgc3QtPm1hcmdpbl9zcHJlYWQgPSBzdC0+ZGVsYXk7CisgICAgfSBlbHNlIHsKKyAgICAg
ICAgZnJhbWVfdGltZSA9IE1BWChmcmFtZV90aW1lICsgc3QtPmRlbGF5LAorICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0LT5sYXN0X2ZyYW1lX3RpbWUgKyAoZnJhbWVfaW50ZXJ2YWwgKyAzKSAv
IDQpOworICAgICAgICBtYXJnaW4gPSBzcGljZV9tbXRpbWVfZGlmZihmcmFtZV90aW1lLCBzdHJl
YW1fdGltZSk7CisKKyAgICAgICAgLyogTm90ZSB0aGF0IHdoZW4gdXNpbmcgaW50ZWdlcnMgdGhl
IG1vdmluZyBhdmVyYWdlIGNhbiBzdGFiaWxpemUgdXAgdG8KKyAgICAgICAgICogd2VpZ2h0LzIt
MSBhd2F5IGZyb20gdGhlIHRydWUgYXZlcmFnZSAod2hlcmUgd2VpZ2h0PTE2IGhlcmUpIGR1ZQor
ICAgICAgICAgKiB0byB0aGUgcm91bmRpbmcgZXJyb3JzIChlLmcuIGNvbnNpZGVyIDEgMTYgMTYu
Li4pLgorICAgICAgICAgKiBTbyB1c2UgYSBmbG9hdCBmb3IgYXZnX21hcmdpbi4KKyAgICAgICAg
ICovCisgICAgICAgIHN0LT5hdmdfbWFyZ2luID0gKHN0LT5hdmdfbWFyZ2luICogMTUgKyBtYXJn
aW4pIC8gMTY7CisgICAgICAgIGlmIChzdC0+YXZnX21hcmdpbiA8IHN0LT5taW5fYXZnX21hcmdp
bikgeworICAgICAgICAgICAgc3QtPm1pbl9hdmdfbWFyZ2luID0gc3QtPmF2Z19tYXJnaW47Cisg
ICAgICAgIH0gZWxzZSBpZiAoc3QtPmF2Z19tYXJnaW4gPiBzdC0+bWF4X2F2Z19tYXJnaW4pIHsK
KyAgICAgICAgICAgIHN0LT5tYXhfYXZnX21hcmdpbiA9IGNlaWxmKHN0LT5hdmdfbWFyZ2luKTsK
KyAgICAgICAgfQorCisgICAgICAgIGlmIChtYXJnaW4gPCBzdC0+bWluX21hcmdpbl9uZXh0KSB7
CisgICAgICAgICAgICBzdC0+bWluX21hcmdpbl9uZXh0ID0gbWFyZ2luOworICAgICAgICAgICAg
LyogVGFrZSBpbnRvIGFjY291bnQgc2lnbnMgdGhhdCB0aGUgc2l0dWF0aW9uIHdvcnNlbmVkIHdp
dGhvdXQKKyAgICAgICAgICAgICAqIGRlbGF5LgorICAgICAgICAgICAgICovCisgICAgICAgICAg
ICBzdC0+bWluX21hcmdpbiA9IE1JTihzdC0+bWluX21hcmdpbiwgc3QtPm1pbl9tYXJnaW5fbmV4
dCk7CisgICAgICAgIH0KIAotICAgIG1hcmdpbiA9IG1hcmdpbl9yZXBvcnQgPSBvcC0+bXVsdGlf
bWVkaWFfdGltZSAtIG1tdGltZTsKLSAgICBpZiAobWFyZ2luID4gMCkgewotICAgICAgICBTcGlj
ZVNlc3Npb24gKnMgPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKGNoYW5uZWwpOworICAgICAg
ICAvKiBPbmx5IHJlcGxhY2UgdGhlIGN1cnJlbnQgbWluX21hcmdpbiBhbmQgbWFyZ2luX3NwcmVh
ZCBlc3RpbWF0ZXMgb25jZQorICAgICAgICAgKiBlbm91Z2ggZGF0YSBoYXMgYmVlbiBjb2xsZWN0
ZWQgZm9yIHRoZSAqX25leHQgdmFsdWVzLCBib3RoIGluIHRlcm0KKyAgICAgICAgICogb2YgZWxh
cHNlZCB0aW1lIGFuZCBudW1iZXIgb2YgZnJhbWVzLgorICAgICAgICAgKi8KKyAgICAgICAgc3Qt
Pm1hcmdpbl9ldmFsX2NvdW50Kys7CisgICAgICAgIGlmIChzdHJlYW1fdGltZSAtIHN0LT5tYXJn
aW5fZXZhbF9zdGFydCA+IE1BUkdJTl9FVkFMX1RJTUUgJiYKKyAgICAgICAgICAgIHN0LT5tYXJn
aW5fZXZhbF9jb3VudCA+PSBNQVJHSU5fRVZBTF9DT1VOVCkgeworICAgICAgICAgICAgc3QtPm1p
bl9tYXJnaW4gPSBzdC0+bWluX21hcmdpbl9uZXh0OworCisgICAgICAgICAgICBzdC0+bWFyZ2lu
X2V2YWxfc3RhcnQgPSBzdHJlYW1fdGltZTsKKyAgICAgICAgICAgIHN0LT5tYXJnaW5fZXZhbF9j
b3VudCA9IDE7CisgICAgICAgICAgICBzdC0+bWluX21hcmdpbl9uZXh0ID0gbWFyZ2luOworCisg
ICAgICAgICAgICBzdC0+bWFyZ2luX3NwcmVhZCA9IChzdC0+bWF4X2F2Z19tYXJnaW4gLSBzdC0+
bWluX2F2Z19tYXJnaW4gKyAxKSAvIDI7CisgICAgICAgICAgICBzdC0+bWluX2F2Z19tYXJnaW4g
PSBzdC0+YXZnX21hcmdpbjsKKyAgICAgICAgICAgIHN0LT5tYXhfYXZnX21hcmdpbiA9IGNlaWxm
KHN0LT5hdmdfbWFyZ2luKTsKKyAgICAgICAgfQogCi0gICAgICAgIGlmIChzdC0+c3VyZmFjZS0+
c3RyZWFtaW5nX21vZGUgJiYgIXNwaWNlX3Nlc3Npb25faXNfcGxheWJhY2tfYWN0aXZlKHMpKSB7
Ci0gICAgICAgICAgICBDSEFOTkVMX0RFQlVHKGNoYW5uZWwsICJ2aWRlbyBtYXJnaW46ICVkLCBz
ZXQgdG8gMCBzaW5jZSB0aGVyZSBpcyBubyBwbGF5YmFjayIsIG1hcmdpbik7Ci0gICAgICAgICAg
ICBtYXJnaW4gPSAwOworICAgICAgICBpZiAobWFyZ2luIDwgMCkgeworICAgICAgICAgICAgZ2lu
dDMyIG51ZGdlID0gLW1hcmdpbjsKKyAgICAgICAgICAgIG1hcmdpbiArPSBudWRnZTsKKyAgICAg
ICAgICAgIHN0LT5kZWxheSArPSBudWRnZTsKKyAgICAgICAgICAgIGZyYW1lX3RpbWUgPSBzdHJl
YW1fdGltZSArIChmcmFtZV9pbnRlcnZhbCArIDMpIC8gNDsKKworICAgICAgICAgICAgLyogVGhl
IGRlbGF5IG51ZGdlIGFsc28gaW1wYWN0cyB0aGUgbWFyZ2luIGhpc3RvcnkgKi8KKyAgICAgICAg
ICAgIHN0LT5taW5fbWFyZ2luX25leHQgKz0gbnVkZ2U7CisgICAgICAgICAgICBzdC0+bWluX21h
cmdpbiA9IG1hcmdpbjsKKyAgICAgICAgICAgIHN0LT5hdmdfbWFyZ2luICs9IG51ZGdlOworICAg
ICAgICAgICAgc3QtPm1pbl9hdmdfbWFyZ2luICs9IG51ZGdlOworICAgICAgICAgICAgc3QtPm1h
eF9hdmdfbWFyZ2luICs9IG51ZGdlOworICAgICAgICB9IGVsc2UgeworICAgICAgICAgICAgLyog
VHJ5IHRvIG1hdGNoIHRoZSB0YXJnZXQgbGFnIHdpdGhvdXQgbWFraW5nIG5lZWRsZXNzIGFkanVz
dG1lbnRzCisgICAgICAgICAgICAgKiBmb3IgbWlub3Igb2Zmc2V0cy4KKyAgICAgICAgICAgICAq
LworICAgICAgICAgICAgZ2ludDMyIG51ZGdlID0gMDsKKyAgICAgICAgICAgIGlmIChzdC0+YXZn
X21hcmdpbiArIHN0LT5tYXJnaW5fc3ByZWFkIDwgdGFyZ2V0X2xhZykgeworICAgICAgICAgICAg
ICAgIG51ZGdlID0gTUlOKChmcmFtZV9pbnRlcnZhbCArIDMpIC8gNCwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB0YXJnZXRfbGFnIC0gc3QtPmF2Z19tYXJnaW4pOworICAgICAgICAgICAg
fSBlbHNlIGlmIChzdC0+bWluX21hcmdpbiA+IDAgJiYKKyAgICAgICAgICAgICAgICAgICAgICAg
c3QtPmF2Z19tYXJnaW4gID4gdGFyZ2V0X2xhZyArIHN0LT5tYXJnaW5fc3ByZWFkKSB7CisgICAg
ICAgICAgICAgICAgbnVkZ2UgPSAtTUlOKChmcmFtZV9pbnRlcnZhbCArIDMpIC8gNCwKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgTUlOKHN0LT5hdmdfbWFyZ2luIC0gdGFyZ2V0X2xhZywK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0LT5taW5fbWFyZ2luKSk7CisgICAg
ICAgICAgICB9CisgICAgICAgICAgICBpZiAobnVkZ2UpIHsKKyAgICAgICAgICAgICAgICBzdC0+
ZGVsYXkgKz0gbnVkZ2U7CisgICAgICAgICAgICAgICAgZnJhbWVfdGltZSArPSBudWRnZTsKKwor
ICAgICAgICAgICAgICAgIC8qIFRoZSBkZWxheSBudWRnZSBhbHNvIGltcGFjdHMgdGhlIG1hcmdp
biBoaXN0b3J5ICovCisgICAgICAgICAgICAgICAgc3QtPm1pbl9tYXJnaW5fbmV4dCArPSBudWRn
ZTsKKyAgICAgICAgICAgICAgICBzdC0+bWluX21hcmdpbiArPSBudWRnZTsKKyAgICAgICAgICAg
ICAgICBzdC0+YXZnX21hcmdpbiArPSBudWRnZTsKKyAgICAgICAgICAgICAgICBzdC0+bWluX2F2
Z19tYXJnaW4gKz0gbnVkZ2U7CisgICAgICAgICAgICAgICAgc3QtPm1heF9hdmdfbWFyZ2luICs9
IG51ZGdlOworICAgICAgICAgICAgfQogICAgICAgICB9CiAgICAgfQotICAgIGRpc3BsYXlfc3Ry
ZWFtX3N0YXRzX3NhdmUoc3QsIG9wLT5tdWx0aV9tZWRpYV90aW1lLCBtbXRpbWUpOworICAgIHN0
LT5sYXN0X2ZyYW1lX3RpbWUgPSBmcmFtZV90aW1lOwogCiAgICAgLyogTGV0IHRoZSB2aWRlbyBk
ZWNvZGVyIHF1ZXVlIHRoZSBmcmFtZXMgc28gaXQgY2FuIG9wdGltaXplIHRoZWlyCiAgICAgICog
ZGVjb2RpbmcgYW5kIGJlc3QgZGVjaWRlIGlmL3doZW4gdG8gZHJvcCB0aGVtIHdoZW4gdGhleSBh
cmUgbGF0ZSwKICAgICAgKiB0YWtpbmcgaW50byBhY2NvdW50IHRoZSBpbXBhY3Qgb24gbGF0ZXIg
ZnJhbWVzLgogICAgICAqLwotICAgIGZyYW1lID0gc3BpY2VfZnJhbWVfbmV3KHN0LCBpbiwgb3At
Pm11bHRpX21lZGlhX3RpbWUpOworICAgIGZyYW1lID0gc3BpY2VfZnJhbWVfbmV3KHN0LCBpbiwg
b3AtPm11bHRpX21lZGlhX3RpbWUsIGZyYW1lX3RpbWUpOwogICAgIGlmICghc3QtPnZpZGVvX2Rl
Y29kZXItPnF1ZXVlX2ZyYW1lKHN0LT52aWRlb19kZWNvZGVyLCBmcmFtZSwgbWFyZ2luKSkgewog
ICAgICAgICBkZXN0cm95X3N0cmVhbShjaGFubmVsLCBvcC0+aWQpOwogICAgICAgICByZXBvcnRf
aW52YWxpZF9zdHJlYW0oY2hhbm5lbCwgb3AtPmlkKTsKQEAgLTE3NjksNyArMTkxMSw3IEBAIHN0
YXRpYyB2b2lkIGRpc3BsYXlfaGFuZGxlX3N0cmVhbV9kYXRhKFNwaWNlQ2hhbm5lbCAqY2hhbm5l
bCwgU3BpY2VNc2dJbiAqaW4pCiAKICAgICBpZiAoYy0+ZW5hYmxlX2FkYXB0aXZlX3N0cmVhbWlu
ZykgewogICAgICAgICBkaXNwbGF5X3VwZGF0ZV9zdHJlYW1fcmVwb3J0KFNQSUNFX0RJU1BMQVlf
Q0hBTk5FTChjaGFubmVsKSwgb3AtPmlkLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG9wLT5tdWx0aV9tZWRpYV90aW1lLCBtYXJnaW5fcmVwb3J0KTsKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBvcC0+bXVsdGlfbWVkaWFfdGltZSwgbW10aW1lX21h
cmdpbik7CiAgICAgICAgIGlmIChzdC0+cGxheWJhY2tfc3luY19kcm9wc19zZXFfbGVuID49IFNU
UkVBTV9QTEFZQkFDS19TWU5DX0RST1BfU0VRX0xFTl9MSU1JVCkgewogICAgICAgICAgICAgc3Bp
Y2Vfc2Vzc2lvbl9zeW5jX3BsYXliYWNrX2xhdGVuY3koc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lv
bihjaGFubmVsKSk7CiAgICAgICAgICAgICBzdC0+cGxheWJhY2tfc3luY19kcm9wc19zZXFfbGVu
ID0gMDsKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaCBiL3NyYy9zcGljZS1z
ZXNzaW9uLXByaXYuaAppbmRleCA2ZWNlN2UwMS4uZDg4Mjc2ZjEgMTAwNjQ0Ci0tLSBhL3NyYy9z
cGljZS1zZXNzaW9uLXByaXYuaAorKysgYi9zcmMvc3BpY2Utc2Vzc2lvbi1wcml2LmgKQEAgLTUw
LDYgKzUwLDcgQEAgR1NvY2tldENvbm5lY3Rpb24qIHNwaWNlX3Nlc3Npb25fY2hhbm5lbF9vcGVu
X2hvc3QoU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBTcGljZUMKIHZvaWQgc3BpY2Vfc2Vzc2lvbl9j
aGFubmVsX25ldyhTcGljZVNlc3Npb24gKnNlc3Npb24sIFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCk7
CiB2b2lkIHNwaWNlX3Nlc3Npb25fY2hhbm5lbF9taWdyYXRlKFNwaWNlU2Vzc2lvbiAqc2Vzc2lv
biwgU3BpY2VDaGFubmVsICpjaGFubmVsKTsKIAorZ3VpbnQzMiBzcGljZV9zZXNzaW9uX21tdGlt
ZTJjbGllbnRfdGltZShTcGljZVNlc3Npb24gKnNlc3Npb24sIGd1aW50MzIgc3JjX3RpbWUpOwog
dm9pZCBzcGljZV9zZXNzaW9uX3NldF9tbV90aW1lKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwgZ3Vp
bnQzMiB0aW1lKTsKIGd1aW50MzIgc3BpY2Vfc2Vzc2lvbl9nZXRfbW1fdGltZShTcGljZVNlc3Np
b24gKnNlc3Npb24pOwogCmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5jIGIvc3JjL3Nw
aWNlLXNlc3Npb24uYwppbmRleCAwNGJhMTI0YS4uZTZhOTYxMzMgMTAwNjQ0Ci0tLSBhL3NyYy9z
cGljZS1zZXNzaW9uLmMKKysrIGIvc3JjL3NwaWNlLXNlc3Npb24uYwpAQCAtMTAyLDYgKzEwMiw3
IEBAIHN0cnVjdCBfU3BpY2VTZXNzaW9uUHJpdmF0ZSB7CiAgICAgZ3VpbnQgICAgICAgICAgICAg
Y2hhbm5lbHNfZGVzdHJveWluZzsKICAgICBnYm9vbGVhbiAgICAgICAgICBjbGllbnRfcHJvdmlk
ZWRfc29ja2V0czsKICAgICBndWludDY0ICAgICAgICAgICBtbV90aW1lX29mZnNldDsKKyAgICBn
dWludDMyICAgICAgICAgICBjbGllbnRfdGltZV9vZmZzZXQ7CiAgICAgU3BpY2VTZXNzaW9uICAg
ICAgKm1pZ3JhdGlvbjsKICAgICBHTGlzdCAgICAgICAgICAgICAqbWlncmF0aW9uX2xlZnQ7CiAg
ICAgU3BpY2VTZXNzaW9uTWlncmF0aW9uIG1pZ3JhdGlvbl9zdGF0ZTsKQEAgLTEyOSw2ICsxMzAs
MTAgQEAgc3RydWN0IF9TcGljZVNlc3Npb25Qcml2YXRlIHsKICAgICBQaG9kYXZTZXJ2ZXIgICAg
ICAqd2ViZGF2OwogfTsKIAorLyogSW5pdGlhbGl6ZSB0aGUgY2xpZW50X3RpbWVfb2Zmc2V0IHRv
IGFuIHVubGlrZWx5IHZhbHVlLgorICogU2VlIHNwaWNlX3Nlc3Npb25fZ2V0X2NsaWVudF90aW1l
KCkuCisgKi8KKyMgZGVmaW5lIFVOU0VUX0NMSUVOVF9USU1FX09GRlNFVCAweGQxY2VjYTVlCiAK
IC8qKgogICogU0VDVElPTjpzcGljZS1zZXNzaW9uCkBAIC0yOTIsNiArMjk3LDcgQEAgc3RhdGlj
IHZvaWQgc3BpY2Vfc2Vzc2lvbl9pbml0KFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKICAgICBTUElD
RV9ERUJVRygiU3VwcG9ydGVkIGNoYW5uZWxzOiAlcyIsIGNoYW5uZWxzKTsKICAgICBnX2ZyZWUo
Y2hhbm5lbHMpOwogCisgICAgcy0+Y2xpZW50X3RpbWVfb2Zmc2V0ID0gVU5TRVRfQ0xJRU5UX1RJ
TUVfT0ZGU0VUOwogICAgIHMtPmltYWdlcyA9IGNhY2hlX2ltYWdlX25ldygoR0Rlc3Ryb3lOb3Rp
ZnkpcGl4bWFuX2ltYWdlX3VucmVmKTsKICAgICBzLT5nbHpfd2luZG93ID0gZ2x6X2RlY29kZXJf
d2luZG93X25ldygpOwogICAgIHVwZGF0ZV9wcm94eShzZXNzaW9uLCBOVUxMKTsKQEAgLTIzODUs
NiArMjM5MSw0NiBAQCBpbnQgc3BpY2Vfc2Vzc2lvbl9nZXRfY29ubmVjdGlvbl9pZChTcGljZVNl
c3Npb24gKnNlc3Npb24pCiAgICAgcmV0dXJuIHMtPmNvbm5lY3Rpb25faWQ7CiB9CiAKK0dfR05V
Q19JTlRFUk5BTAorZ3VpbnQzMiBzcGljZV9zZXNzaW9uX21tdGltZTJjbGllbnRfdGltZShTcGlj
ZVNlc3Npb24gKnNlc3Npb24sIGd1aW50MzIgbW10aW1lKQoreworICAgIGdfcmV0dXJuX3ZhbF9p
Zl9mYWlsKFNQSUNFX0lTX1NFU1NJT04oc2Vzc2lvbiksIGdfZ2V0X21vbm90b25pY190aW1lKCkg
LyAxMDAwKTsKKworICAgIFNwaWNlU2Vzc2lvblByaXZhdGUgKnMgPSBzZXNzaW9uLT5wcml2Owor
CisgICAgZ3VpbnQzMiBub3cgPSBnX2dldF9tb25vdG9uaWNfdGltZSgpIC8gMTAwMDsKKyAgICBn
dWludDMyIG5ld19vZmZzZXQgPSBub3cgLSBtbXRpbWU7CisKKyAgICBpZiAocy0+Y2xpZW50X3Rp
bWVfb2Zmc2V0ID09IFVOU0VUX0NMSUVOVF9USU1FX09GRlNFVCkgeworICAgICAgICAvKiBJbml0
aWFsaXplIHRoZSB0aW1lIG9mZnNldC4KKyAgICAgICAgICogTm90ZSB0aGF0IFVOU0VUX0NMSUVO
VF9USU1FX09GRlNFVCBjYW4gYmUgYW55IHZhbHVlIGluY2x1ZGluZyAwCisgICAgICAgICAqIHdo
aWNoIGlzIGNvbW1vbiBvbiBsb3ctbGF0ZW5jeSBMQU5zLiBCdXQgYW4gdW5saWtlbHkgb25lIGhl
bHBzIHdoZW4KKyAgICAgICAgICogYWRkaW5nIGEgdHJhY2UgaW4gdGhpcyBjb2RlcGF0aC4KKyAg
ICAgICAgICovCisgICAgICAgIHMtPmNsaWVudF90aW1lX29mZnNldCA9IG5ld19vZmZzZXQ7Cisg
ICAgICAgIHJldHVybiBub3c7CisgICAgfQorICAgIGlmIChuZXdfb2Zmc2V0IDwgcy0+Y2xpZW50
X3RpbWVfb2Zmc2V0IC0gMTAwMCB8fAorICAgICAgICBuZXdfb2Zmc2V0ID4gcy0+Y2xpZW50X3Rp
bWVfb2Zmc2V0ICsgMTAwMCkgeworICAgICAgICAvKiBUaGUgY2hhbmdlIGluIG9mZnNldCB3YXMg
bGlrZWx5IGNhdXNlZCBieSBhIHNlcnZlciBtaWdyYXRpb24uCisgICAgICAgICAqIFJlc2V0IHRo
ZSB0aW1lIG9mZnNldC4KKyAgICAgICAgICovCisgICAgICAgIHMtPmNsaWVudF90aW1lX29mZnNl
dCA9IG5ld19vZmZzZXQ7CisgICAgICAgIHJldHVybiBub3c7CisgICAgfQorICAgIGlmIChuZXdf
b2Zmc2V0IDwgcy0+Y2xpZW50X3RpbWVfb2Zmc2V0KSB7CisgICAgICAgIC8qIFRoZSBwcmV2aW91
cyBtZXNzYWdlIHdlIHVzZWQgdG8gY29tcHV0ZSB0aGUgb2Zmc2V0IHdhcyBwcm9iYWJseQorICAg
ICAgICAgKiBkZWxheWVkIHJlc3VsdGluZyBpbiBhIHRvbyBsYXJnZSBvZmZzZXQuIEV2ZW50dWFs
bHkgdGhlIG9mZnNldAorICAgICAgICAgKiBzaG91bGQgc2V0dGxlIHRvIHRoZSB0cnVlIGNsb2Nr
IG9mZnNldCBwbHVzIHRoZSBuZXR3b3JrIGxhdGVuY3ksCisgICAgICAgICAqIGV4Y2x1ZGluZyB0
aGUgbmV0d29yayBqaXR0ZXIuCisgICAgICAgICAqLworICAgICAgICBzLT5jbGllbnRfdGltZV9v
ZmZzZXQgPSBuZXdfb2Zmc2V0OworICAgICAgICByZXR1cm4gbm93OworICAgIH0KKworICAgIHJl
dHVybiBtbXRpbWUgKyBzLT5jbGllbnRfdGltZV9vZmZzZXQ7Cit9CisKIEdfR05VQ19JTlRFUk5B
TAogZ3VpbnQzMiBzcGljZV9zZXNzaW9uX2dldF9tbV90aW1lKFNwaWNlU2Vzc2lvbiAqc2Vzc2lv
bikKIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
