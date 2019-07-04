Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA985F67A
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 12:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB3D6E314;
	Thu,  4 Jul 2019 10:18:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3A86E313
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 10:18:44 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id v19so5496674wmj.5
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Jul 2019 03:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YZTfdK317SBLFj43dhSRC1IgrTJgfEp40hX2t1D4TPc=;
 b=XzEnqNVb/paNjQwYL/ctQcLn/t+SEPw5JgXYi/Gwj21ibwAz857j3y+R5hrHVHG/os
 lblxs94qY2USh04VzmuGVGaY6hc88rty3uHMRr1xC6fBWz2q6PAptCD26ydp5b/oaM2s
 s9XWcd13q84aHZ4H10VlLJzSBAyFBhJVo3rVcD8cwahPBpLWZNAumTgcsPpop2/OZvw9
 wnnk6QnxcbATKeFpYtMXxfESQ8bJ0WFfU0fHWoTZodBbphRTuFwl0QTUa88ocfUL6rHD
 BkRUCXCGIE9BVdv7OLVbGyA/3MXyQGfetH1KNbHd3vFMBylrECB+THZaUmBKi/52gWPo
 wx1w==
X-Gm-Message-State: APjAAAVBHkuU+MZEBYRxC4/DrYl5Y+YZhx9TMIPsu7sFd79HXZKcQJ9y
 X++ssI1/bQ68bjk07WchwX/G3hvYtec=
X-Google-Smtp-Source: APXvYqz6SDCYgrore5dgarm7DY5pV62vqfD1+lJdPN20W4B9YoP61pxCWhFxn3Uzbk4XvTQbPs40FA==
X-Received: by 2002:a05:600c:2245:: with SMTP id
 a5mr2541805wmm.121.1562235523170; 
 Thu, 04 Jul 2019 03:18:43 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id d7sm899742wrw.0.2019.07.04.03.18.42
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 03:18:42 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  4 Jul 2019 12:18:41 +0200
Message-Id: <20190704101841.10581-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-server] manual: document host-side video
 streaming
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

U2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Ci0tLQoKSSBy
ZW1vdmVkIHRoZSBjb2RlYy1zZWxlY3Rpb24gcGFydCBmcm9tIHRoaXMgcGF0Y2gsIEknbGwgc2Vu
ZCBpdCBhZ2Fpbgp3aGVuIFFlbXUvTGlidmlydCBwYXRjaGVzIGFyZSBhY2NlcHRlZC4KCi0tLQog
ZG9jcy9tYW51YWwvbWFudWFsLnR4dCB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZG9jcy9tYW51YWwvbWFudWFsLnR4dCBiL2RvY3MvbWFudWFs
L21hbnVhbC50eHQKaW5kZXggZGRiN2MwZjIuLmU5NWE1NjNlIDEwMDY0NAotLS0gYS9kb2NzL21h
bnVhbC9tYW51YWwudHh0CisrKyBiL2RvY3MvbWFudWFsL21hbnVhbC50eHQKQEAgLTU0NCwxMiAr
NTQ0LDE0IEBAIHdoaWNoIGFyZSBkZXNjcmliZWQgd2hlbiBydW5uaW5nIHJlbW90ZS12aWV3ZXIg
d2l0aCBgLS1oZWxwLXNwaWNlYC4KIFRvIGdldCBVU0IgcmVkaXJlY3Rpb24gd29ya2luZyBvbiBX
aW5kb3dzIGNsaWVudHMsIHlvdSBuZWVkIHRvIGluc3RhbGwKIGh0dHA6Ly93d3cuc3BpY2Utc3Bh
Y2Uub3JnL2Rvd25sb2FkL3dpbmRvd3MvdXNiZGsvW1VzYkRrXQoKLVtbc3RyZWFtaW5nYWdlbnRd
XQotU3RyZWFtaW5nIEFnZW50CitbW3ZpZGVvc3RyZWFtaW5nXV0KK1ZpZGVvIFN0cmVhbWluZwog
PT09PT09PT09PT09PT09CgotVGhlIFNQSUNFIHN0cmVhbWluZyBhZ2VudCBhbGxvd3MgdG8gc2Vu
ZCBhbiBlbmNvZGVkIHZpZGVvIHN0cmVhbSBvZiB0aGUgZ3Vlc3QKLWRlc2t0b3AgdG8gdGhlIGNs
aWVudC4KK1NQSUNFIHN0cmVhbWluZyBhbGxvd3Mgc2VuZGluZyBhbiBlbmNvZGVkIHZpZGVvIHN0
cmVhbSBvZiB0aGUgZ3Vlc3QKK2Rlc2t0b3AgdG8gdGhlIGNsaWVudC4gVGhlIGVuY29kaW5nIGNh
biBiZSBkb25lIGZyb20gdGhlIGhvc3QgKGluc2lkZQorU1BJQ0Ugc2VydmVyKSBvciBmcm9tIHRo
ZSBndWVzdCwgd2l0aCB0aGUgaGVscCBvZiB0aGUgU1BJQ0Ugc3RyZWFtaW5nCithZ2VudC4KCiBU
aGUgc3RyZWFtaW5nIGFnZW50IGlzIGEgZGFlbW9uL3NlcnZpY2UgcnVubmluZyBpbiB0aGUgZ3Vl
c3QgT1Mgc28gaXQgbXVzdCBiZQogaW5zdGFsbGVkIGlmIGl0IGRvZXMgbm90IHlldCBleGlzdCBv
biB0aGUgZ3Vlc3Qgc3lzdGVtLiAgSXQgcmVsaWVzIG9uIGEKQEAgLTU1Nyw4ICs1NTksOCBAQCBk
ZWRpY2F0ZWQgc3BpY2Vwb3J0IGNoYXIgZGV2aWNlIHRvIGFjaGlldmUgY29tbXVuaWNhdGlvbiBi
ZXR3ZWVuIHRoZSBndWVzdCBhbmQKIHRoZSBob3N0LiAgVGhpcyBkZXZpY2UgbXVzdCBiZSBhZGRl
ZCB0byB0aGUgdmlydHVhbCBtYWNoaW5lIGFzIGRlc2NyaWJlZCBiZWxvdwogZm9yIHRoZSBzdHJl
YW1pbmcgYWdlbnQgdG8gd29yayBpbiB0aGUgZ3Vlc3QuCgotQ29uZmlndXJhdGlvbgotLS0tLS0t
LS0tLS0tLQorR3Vlc3QgVmlkZW8gRW5jb2Rpbmc6IEFnZW50IENvbmZpZ3VyYXRpb24KKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAuVXNpbmcgdmlydC1tYW5h
Z2VyCgpAQCAtNTk1LDYgKzU5Nyw0MSBAQCB0aGUgbmVlZGVkIGRldmljZXMgZm9yIGFnZW50IHN1
cHBvcnQgaW4gdGhlIGd1ZXN0IE9TOgogLWNoYXJkZXYgc3BpY2Vwb3J0LG5hbWU9b3JnLnNwaWNl
LXNwYWNlLnN0cmVhbS4wLGlkPWNoYXJjaGFubmVsMQoKCitIb3N0IFZpZGVvIEVuY29kaW5nCist
LS0tLS0tLS0tLS0tLS0tLS0tCisKK0ZvciBob3N0IHZpZGVvIGVuY29kaW5nLCBTUElDRSBuYXRp
dmVseSBzdXBwb3J0cyBNSlBFRyBlbmNvZGluZy4gRm9yCit1c2luZyBmdXJ0aGVyIGNvZGVjcywg
U1BJQ0Ugc2VydmVyIG11c3QgYmUgY29tcGlsZWQgd2l0aCBHU3RyZWFtZXIKK3N1cHBvcnQuCisK
Ky5TZXR0aW5nCisKK1NQSUNFIHZpZGVvIHN0cmVhbWluZyBwYXJhbWV0ZXIgY2FuIHRha2UgdGhy
ZWUgdmFsdWVzOgorCistIGBvZmZgOiBubyB2aWRlbyBkZXRlY3Rpb24gaXMgcGVyZm9ybWVkLAor
LSBgYWxsYDogYW55IGZhc3QtcmVmcmVzaGluZyB3aW5kb3cgY2FuIGJlIGVuY29kZWQgaW50byBh
IHZpZGVvIHN0cmVhbSwKKy0gYGZpbHRlcmA6IFNQSUNFIHNlcnZlciBhZGRzIGFkZGl0aW9uYWwg
ZmlsdGVycyB0byBkZWNpZGUgaWYgdmlkZW8KKyAgc3RyZWFtaW5nIHNob3VsZCBiZSBhY3RpdmF0
ZWQgKGF0IHRoZSBtb21lbnQsIG9ubHkgc21hbGwgd2luZG93CisgIHN1cmZhY2VzIGFyZSBza2lw
cGVkKSwKKworLlVzaW5nIGxpYnZpcnQKKworVGhlIGBzdHJlYW1pbmdgIHRhZyBtdXN0IGJlIGFk
ZGVkIHRvIFNwaWNlIGBncmFwaGljc2A6CisKK1tzb3VyY2UseG1sXQorCis8Z3JhcGhpY3MgdHlw
ZT0nc3BpY2UnIGF1dG9wb3J0PSd5ZXMnPgorICAgIDxzdHJlYW1pbmcgbW9kZT0nb2ZmfGFsbHxm
aWx0ZXInLz4KKzwvZ3JhcGhpY3M+CisKKy5Vc2luZyBRRU1VCisKK0FkZGluZyB0aGUgZm9sbG93
aW5nIHBhcmFtZXRlcnMgdG8geW91ciBRRU1VIGNvbW1hbmQgbGluZSB3aWxsIGVuYWJsZQorU1BJ
Q0Ugc2VydmVyIHZpZGVvIGVuY29kaW5nOgorCitbc291cmNlLHNoXQorLXNwaWNlIC4uLixzdHJl
YW1pbmctdmlkZW89b2ZmfGFsbHxmaWx0ZXIsLi4uCisKIENBQyBzbWFydGNhcmQgcmVkaXJlY3Rp
b24KID09PT09PT09PT09PT09PT09PT09PT09PT0KCi0tCjIuMjEuMApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
