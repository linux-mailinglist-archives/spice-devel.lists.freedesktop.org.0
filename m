Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A747BDC9C6
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 17:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315DC6EB6F;
	Fri, 18 Oct 2019 15:51:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84646EB6F
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 15:51:51 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-OjxadF7vPRWvZkUym9-Uhg-1; Fri, 18 Oct 2019 11:51:49 -0400
Received: by mail-wr1-f72.google.com with SMTP id 67so2852976wrm.18
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 08:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YTReKBjgzuUJAWJwbSecS/XscIYhDhCpOH1w46uz/7Y=;
 b=hYQfM25eAKQ8hClyOBPn7pilbO1D+uazqpLYvGQH24YmJHa1/NxiecshP55oMons7m
 18OT9e6SNN4ttmteEvS95yANQj5dAapRY94uAVdghPCQtIB7MWDf8vmeVKy/C85gbzrR
 QsdMA6gcI3pNgOCjAJyQ6EeYJxJhyi11bIrafdjo8WZrZy6IYQ7o1tnUj6hhPbOtnQKU
 7Iw01r/fXvCiSRqoJgLY5bxK/8llQgYOP3Qo+ZXh7jS/lb3/Y0oiH6ptqAGUlMSZMbT0
 w15PLwbxkFUKlsY+5Ikih5APecnNt0gjnOuoBDcSt8tr1VPr/xrduzV/By5R4fdOndU6
 j8mA==
X-Gm-Message-State: APjAAAW1jan7kOGOC5AUs7v8cgMS0dMheFdc5ZDKvVA/lxWsJlEdVsPx
 sQlED2+6epTw4eVhyXy+dWauiksL+IIA6ZXyGoiH2F5fM6wwHDXUEEa50LlevZBymb4NxI97wNG
 gKOUG693W+ip0cNTVO8+Gdrzh4utP94I=
X-Received: by 2002:adf:ed43:: with SMTP id u3mr8412755wro.236.1571413907475; 
 Fri, 18 Oct 2019 08:51:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz64e+/AYSOvkBO8Jmmo/pnLn8Hghyr63/yP6weZAjw90MyRzEnHxfZR6iFTwUV0eG1HA8sxw==
X-Received: by 2002:adf:ed43:: with SMTP id u3mr8412740wro.236.1571413907202; 
 Fri, 18 Oct 2019 08:51:47 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id o19sm6650179wmh.27.2019.10.18.08.51.45
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 08:51:46 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 17:51:18 +0200
Message-Id: <20191018155119.19188-2-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018155119.19188-1-kpouget@redhat.com>
References: <20191018155119.19188-1-kpouget@redhat.com>
MIME-Version: 1.0
X-MC-Unique: OjxadF7vPRWvZkUym9-Uhg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571413910;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lH5G6xC45aIZQ/54+T6yuKJN/3DY1/V2blqFQEPqmeo=;
 b=OTPsb5vYDT5ECPiGB6dFRJNhu5JHW/6+8rcKWBCbIryFQh2EGmrm2aEjYy37C1HHWVc5c1
 ZtNkquMMhpYyYad2ckqUQDQwrCZAG4MmVh2uOL5zAvcRP7AqDUoaNQIqHgFKIM0QSkNznD
 8s35JvvD8a0eeaELKXR9F/rvzPR0nPA=
Subject: [Spice-devel] [PATCH spice-common v3 2/3] agent-interface: add
 configuration functions
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

YWdlbnRfaW50ZXJmYWNlX3N0YXJ0OiB0aGlzIGZ1bmN0aW9uIGFsbG93cyBsYXVuY2hpbmcgdGhl
IGFnZW50CmludGVyZmFjZSAoaWUsIGl0cyBsaXN0ZW5pbmcgc29ja2V0KSBvbiBhIGdpdmVuIHBv
cnQuCgphZ2VudF9pbnRlcmZhY2Vfc2V0X29uX2Nvbm5lY3RfY2I6IHRoaXMgZnVuY3Rpb24gYWxs
b3dzIHBhc3NpbmcgYQpjYWxsYmFjayBmdW5jdGlvbiB0aGF0IHdpbGwgYmUgdHJpZ2dlcmVkIHdo
ZW4gYSBjbGllbnQgKGEgTG9jYWwgQWdlbnQpCmNvbm5lY3RzIHRvIHRoZSBBZ2VudCBJbnRlcmZh
Y2Ugc29ja2V0LgoKYWdlbnRfaW50ZXJmYWNlX3NldF9mb3J3YXJkX3F1YWxpdHlfY2I6IHRoaXMg
ZnVuY3Rpb24gYWxsb3dzIFNQSUNFIHRvCnByb3ZpZGUgYSBmdW5jdGlvbiB0aGF0IHdpbGwgZm9y
d2FyZCBRdWFsaXR5IG1lc3NhZ2VzIHJlY2VpdmVkIGJ5IHRoZQpBZ2VudCBJbnRlcmZhY2UgdG93
YXJkcyBTUElDRSBzZXJ2ZXIsIGZvciBhIGNlbnRyYWxpemVkIHByb2Nlc3Npbmcgb2YKdGhlIG1l
c3NhZ2VzLgoKU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+
Ci0tLQp2Mi0+djM6IHVuY2hhbmdlZAotLS0KIGNvbW1vbi9hZ2VudF9pbnRlcmZhY2UuYyB8IDQ1
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIGNvbW1vbi9hZ2VudF9p
bnRlcmZhY2UuaCB8IDIyICsrKysrKysrKysrKysrKysrKysrCiBjb21tb24vcmVjb3JkZXIuaCAg
ICAgICAgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgOTMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9hZ2VudF9p
bnRlcmZhY2UuYyBiL2NvbW1vbi9hZ2VudF9pbnRlcmZhY2UuYwppbmRleCA3NjhiNmE5Li5lYWMw
NzFjIDEwMDY0NAotLS0gYS9jb21tb24vYWdlbnRfaW50ZXJmYWNlLmMKKysrIGIvY29tbW9uL2Fn
ZW50X2ludGVyZmFjZS5jCkBAIC00Myw2ICs0MywxMiBAQCBzdGF0aWMgRklMRSAqY29tbXVuaWNh
dGlvbl9mID0gTlVMTDsKIHN0YXRpYyByZWNvcmRlcl9pbmZvICpyZWNvcmRlcnNbTkJfTUFYX1JF
Q09SREVSU107CiBzdGF0aWMgdWludDMyX3QgbmJfcmVjb3JkZXJzID0gMDsKCitzdGF0aWMgZm9y
d2FyZF9xdWFsaXR5X2NiX3QgZm9yd2FyZF9xdWFsaXR5X2NiOworc3RhdGljIHZvaWQgKmZvcndh
cmRfcXVhbGl0eV9jYl9kYXRhOworCitzdGF0aWMgb25fY29ubmVjdF9jYl90IG9uX2Nvbm5lY3Rf
Y2I7CitzdGF0aWMgdm9pZCAqb25fY29ubmVjdF9jYl9kYXRhOworCiBzdGF0aWMgdWludHB0cl90
IHJlY29yZGVyX3RpY2sodm9pZCk7CgogI2lmbmRlZiBSRUNPUkRFUl9IWgpAQCAtOTgsNiArMTA0
LDEwIEBAIHN0YXRpYyBpbnQgYWdlbnRfaW5pdGlhbGl6ZV9jb21tdW5pY2F0aW9uKGludCBzb2Nr
ZXQpCiAgICAgICAgIGdfaW5mbygiRW5hYmxlIHJlY29yZGVyICclcyciLCByZWNvcmRlcnNbaV0t
Pm5hbWUpOwogICAgIH0KCisgICAgaWYgKG9uX2Nvbm5lY3RfY2IgJiYgb25fY29ubmVjdF9jYihv
bl9jb25uZWN0X2NiX2RhdGEpKSB7CisgICAgICAgIGdvdG8gdW5sb2NrOworICAgIH0KKwogICAg
IGNvbW11bmljYXRpb25fZiA9IHNvY2tldF9mOwogICAgIHJldCA9IDA7CgpAQCAtMTI0LDYgKzEz
NCwxOCBAQCBzdGF0aWMgdm9pZCBhZ2VudF9maW5hbGl6ZV9jb21tdW5pY2F0aW9uKGludCBzb2Nr
ZXQpCiAgICAgZ19tdXRleF91bmxvY2soJm11dGV4X3NvY2tldCk7CiB9Cgorc3RhdGljIHZvaWQg
Zm9yd2FyZF9xdWFsaXR5KGNvbnN0IGNoYXIgKnF1YWxpdHkpCit7CisgICAgaWYgKCFmb3J3YXJk
X3F1YWxpdHlfY2IpIHsKKyAgICAgICAgZ193YXJuaW5nKCJRdWFsaXR5OiBObyBjYWxsYmFjayBz
ZXQsIGRyb3BwaW5nIHRoZSBtZXNzYWdlICglcykuIiwgcXVhbGl0eSk7CisgICAgICAgIHJldHVy
bjsKKyAgICB9CisKKyAgICBnX2luZm8oIlF1YWxpdHk6IEZvcndhcmRpbmcgJyVzJyIsIHF1YWxp
dHkpOworCisgICAgZm9yd2FyZF9xdWFsaXR5X2NiKGZvcndhcmRfcXVhbGl0eV9jYl9kYXRhLCBx
dWFsaXR5KTsKK30KKwogc3RhdGljIGludCBhZ2VudF9wcm9jZXNzX2NvbW11bmljYXRpb24oaW50
IHNvY2tldCkKIHsKICAgICBzdGF0aWMgY2hhciBtc2dfaW5bMTI4XTsKQEAgLTE0NCw3ICsxNjYs
OCBAQCBzdGF0aWMgaW50IGFnZW50X3Byb2Nlc3NfY29tbXVuaWNhdGlvbihpbnQgc29ja2V0KQog
ICAgIH0KCiAgICAgaWYgKG1zZ19pbltsZW5dID09ICdcMCcpIHsKLSAgICAgICAgLy8gVE9ETzog
cHJvY2VzcyBxdWFsaXR5IGluZGljYXRvcgorICAgICAgICAvLyBwcm9jZXNzIHF1YWxpdHkgaW5k
aWNhdG9yCisgICAgICAgIGZvcndhcmRfcXVhbGl0eShtc2dfaW4pOwogICAgICAgICBsZW4gPSAw
OwogICAgICAgICByZXR1cm4gMDsKICAgICB9CkBAIC0zOTYsNiArNDE5LDI2IEBAIHN0YXRpYyB2
b2lkIHJlY29yZGVyX3RyYWNlX2VudHJ5KHJlY29yZGVyX2luZm8gKmluZm8sIHJlY29yZGVyX2Vu
dHJ5ICplbnRyeSwgLi4uCiAgICAgZ19tdXRleF91bmxvY2soJm11dGV4X3NvY2tldCk7CiB9Cgor
dm9pZCBhZ2VudF9pbnRlcmZhY2Vfc3RhcnQodW5zaWduZWQgaW50IHBvcnQpCit7CisgICAgZ19p
bmZvKCJMYXVuY2ggb24gcG9ydCAldSIsIHBvcnQpOworICAgIHJlY29yZGVyX2luaXRpYWxpemF0
aW9uKHBvcnQpOworfQorCit2b2lkIGFnZW50X2ludGVyZmFjZV9zZXRfZm9yd2FyZF9xdWFsaXR5
X2NiKGZvcndhcmRfcXVhbGl0eV9jYl90IGNiLCB2b2lkICpkYXRhKQoreworICAgIGdfZGVidWco
IlJlY2VpdmVkIGZvcndhcmRfcXVhbGl0eSBjYWxsYmFjayIpOworICAgIGZvcndhcmRfcXVhbGl0
eV9jYiA9IGNiOworICAgIGZvcndhcmRfcXVhbGl0eV9jYl9kYXRhID0gZGF0YTsKK30KKwordm9p
ZCBhZ2VudF9pbnRlcmZhY2Vfc2V0X29uX2Nvbm5lY3RfY2Iob25fY29ubmVjdF9jYl90IGNiLCB2
b2lkICpkYXRhKQoreworICAgIGdfZGVidWcoIlJlY2VpdmVkIG9uX2Nvbm5lY3QgY2FsbGJhY2si
KTsKKyAgICBvbl9jb25uZWN0X2NiID0gY2I7CisgICAgb25fY29ubmVjdF9jYl9kYXRhID0gZGF0
YTsKK30KKwogdm9pZCByZWNvcmRlcl9hcHBlbmQocmVjb3JkZXJfaW5mbyAqcmVjLAogICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgY2hhciAqd2hlcmUsCiAgICAgICAgICAgICAgICAgICAgICBj
b25zdCBjaGFyICpmb3JtYXQsCmRpZmYgLS1naXQgYS9jb21tb24vYWdlbnRfaW50ZXJmYWNlLmgg
Yi9jb21tb24vYWdlbnRfaW50ZXJmYWNlLmgKaW5kZXggMDQyMTIwZS4uY2U1YjhkOSAxMDA2NDQK
LS0tIGEvY29tbW9uL2FnZW50X2ludGVyZmFjZS5oCisrKyBiL2NvbW1vbi9hZ2VudF9pbnRlcmZh
Y2UuaApAQCAtNTQwLDMgKzU0MCwyNSBAQCBzdGF0aWMgaW5saW5lIHVpbnRwdHJfdCBfcmVjb3Jk
ZXJfZG91YmxlKGRvdWJsZSBkKQogICAgICAgICByZXR1cm4gdS5pOwogICAgIH0KIH0KKworLy8g
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQorLy8gICBBZ2VudC1JbnRlcmZhY2Ugc3BlY2lmaWMgZGVmaW5p
dGlvbnMKKy8vID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KKworI2lmZGVmIF9fY3BsdXNwbHVzCitleHRl
cm4gIkMiIHsKKyNlbmRpZiAvLyBfX2NwbHVzcGx1cworCisvLyBsYXVuY2ggdGhlIEFnZW50LUlu
dGVyZmFjZSBzZXJ2ZXIgc29ja2V0CitleHRlcm4gdm9pZCBhZ2VudF9pbnRlcmZhY2Vfc3RhcnQo
dW5zaWduZWQgaW50IHBvcnQpOworCisvLwordHlwZWRlZiB2b2lkICgqZm9yd2FyZF9xdWFsaXR5
X2NiX3QpKHZvaWQgKiwgY29uc3QgY2hhciAqKTsKK2V4dGVybiB2b2lkIGFnZW50X2ludGVyZmFj
ZV9zZXRfZm9yd2FyZF9xdWFsaXR5X2NiKGZvcndhcmRfcXVhbGl0eV9jYl90IGNiLCB2b2lkICpk
YXRhKTsKKworLy8gc2V0IGEgY2FsbGJhY2sgZnVuY3Rpb24gdHJpZ2dlcmVkIHdoZW4gYSBuZXcg
Y2xpZW50IGNvbm5lY3RzIHRvIHRoZSBzb2NrZXQKK3R5cGVkZWYgaW50ICgqb25fY29ubmVjdF9j
Yl90KSh2b2lkICopOworZXh0ZXJuIHZvaWQgYWdlbnRfaW50ZXJmYWNlX3NldF9vbl9jb25uZWN0
X2NiKG9uX2Nvbm5lY3RfY2JfdCBjYiwgdm9pZCAqZGF0YSk7CisjaWZkZWYgX19jcGx1c3BsdXMK
K30KKyNlbmRpZiAvLyBfX2NwbHVzcGx1cwpkaWZmIC0tZ2l0IGEvY29tbW9uL3JlY29yZGVyLmgg
Yi9jb21tb24vcmVjb3JkZXIuaAppbmRleCA4NDQ4ZTAyLi43MTk0YWI1IDEwMDY0NAotLS0gYS9j
b21tb24vcmVjb3JkZXIuaAorKysgYi9jb21tb24vcmVjb3JkZXIuaApAQCAtNzMsMyArNzMsMzAg
QEAgcmVjb3JkZXJfZHVtcF9vbl9jb21tb25fc2lnbmFscyh1bnNpZ25lZCBhZGQsIHVuc2lnbmVk
IHJlbW92ZSkKICNlbHNlCiAjaW5jbHVkZSA8Y29tbW9uL3JlY29yZGVyL3JlY29yZGVyLmg+CiAj
ZW5kaWYKKworI2lmICFkZWZpbmVkKEVOQUJMRV9BR0VOVF9JTlRFUkZBQ0UpCisjaWZkZWYgX19j
cGx1c3BsdXMKK2V4dGVybiAiQyIgeworI2VuZGlmIC8vIF9fY3BsdXNwbHVzCisKKy8qIFN0dWJz
IGZvciBBZ2VudC1JbnRlcmZhY2Ugc3BlY2lmaWMgZGVmaW5pdGlvbnMgKi8KK3N0YXRpYyBpbmxp
bmUgdm9pZAorYWdlbnRfaW50ZXJmYWNlX3N0YXJ0KHVuc2lnbmVkIGludCBwb3J0KQoreworfQor
Cit0eXBlZGVmIHZvaWQgKCpmb3J3YXJkX3F1YWxpdHlfY2JfdCkodm9pZCAqLCBjb25zdCBjaGFy
ICopOworc3RhdGljIGlubGluZSB2b2lkCithZ2VudF9pbnRlcmZhY2Vfc2V0X2ZvcndhcmRfcXVh
bGl0eV9jYihmb3J3YXJkX3F1YWxpdHlfY2JfdCBjYiwgdm9pZCAqZGF0YSkKK3sKK30KKwordHlw
ZWRlZiBpbnQgKCpvbl9jb25uZWN0X2NiX3QpKHZvaWQgKik7CitzdGF0aWMgaW5saW5lIHZvaWQK
K2FnZW50X2ludGVyZmFjZV9zZXRfb25fY29ubmVjdF9jYihvbl9jb25uZWN0X2NiX3QgY2IsIHZv
aWQgKmRhdGEpCit7Cit9CisjaWZkZWYgX19jcGx1c3BsdXMKK30KKyNlbmRpZiAvLyBfX2NwbHVz
cGx1cworI2VuZGlmCi0tCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
