Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CC2712DA
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E136E162;
	Tue, 23 Jul 2019 07:27:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7E66E151
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:47 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id n4so42033703wrs.3
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Nh1ByEpMk9EAI8Reim2OEeSBFMJ+6Vt4aUZW0aNq5mY=;
 b=PET/zCSO4mtf6tTwb2IMfxxxOwNdZzu37WwRk8q3SUytydsUmX1Sep5O57MJ/RG3Am
 jkArLTY6i4t+5HHqAR20aSsr4lz4NLccwCX1s9lBZPS20J4f8979N8rVD70OMqD0cQ1f
 kV81nG/duiqTVi96TUYxG3URGyzqJ9HJTBSXOBArodVZCtNIt0bBewEzWxUdF+/CHqy5
 0EEz6nxYVu/1uE44AgbUOs1HHO8ajSdS5trdK4A72Jx7K7z/zmPNkNNvzS3JrJAs/4Hl
 SSIQTrOqBSyakGGiQPS8qx1I0qI9L/hzB+RvaOR3mxg62SHGGAuFkXVjlcBcJ8FeN5R7
 lGJw==
X-Gm-Message-State: APjAAAV6t4ABHJKMIYU35iEKIS4bfYL+HDvudkz/7DrQtPusBxZvzU1m
 By3SR4531AQwgO7Qjqx2gIhAXjQX
X-Google-Smtp-Source: APXvYqzKiMcwtyhq9qn8g9BcQa+wq21xQ57fE7rgFW0oLdX5pJhlkGoxwNzPPNQO1o6xw1Tvo7Xnjw==
X-Received: by 2002:adf:ab51:: with SMTP id r17mr52670568wrc.95.1563866865516; 
 Tue, 23 Jul 2019 00:27:45 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:45 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:07 +0300
Message-Id: <20190723072708.2575-9-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Nh1ByEpMk9EAI8Reim2OEeSBFMJ+6Vt4aUZW0aNq5mY=;
 b=pwLohEXm6bxtFf4A8TQ5DY6zoyUyHwAkdz7dbvD4ioFzTLUFGHZllYrmunrBh4QQnB
 wlmnnRHu+MUov/Tloal6nfXzOXEmRinN4HbANGAIl65dZlESpN7N/mEz7jgGFjF47++2
 Q7AVU7qcW6J/oyblixTAH01dY7oB2ZMievL3Kz04YDWQexm82zZR6eKXdNiN1coYcMzk
 VLCRR+FgQeE+lsmPFn7b4vTtlQmTp/w+RVDsEX3Nr1cuFAnfVYDj2tn7TRbgKVQv63W4
 Q592K336jGRvjUkXlDauTXlLnsjJTk58jUXdjkAszuq5xR6My+cQLMk4BtLn2qw0PJeL
 Cp4g==
Subject: [Spice-devel] [spice-gtk v2 8/9] usb-redir: move USB events
 handling to USB backend
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QmVmb3JlIHRoaXMgY29tbWl0Ogp1c2ItZGV2aWNlLW1hbmFnZXIgc3RhcnRzIHRocmVhZCBmb3Ig
aGFuZGxpbmcgbGlidXNiIGV2ZW50czoKb24gTGludXggLSBmcm9tIHRoZSBiZWdpbm5pbmcgKGFz
IGl0IGlzIG5lZWRlZCBmb3IgaG90cGx1ZwpjYWxsYmFja3MpLCBvbiBXaW5kb3dzIC0gc3RhcnRz
IGl0IG9uIGZpcnN0IHJlZGlyZWN0aW9uIGFuZApzdG9wcyB3aGVuIHRoZXJlIGFyZSBubyByZWRp
cmVjdGlvbnMgKGl0IGNhbid0IGtlZXAgdGhlIHRocmVhZAp3aGVuIHRoZXJlIGFyZSBubyByZWRp
cmVjdGlvbnMgYXMgd2l0aCBsaWJ1c2IgPCAxLjAuMjEgaXQgd2lsbApub3QgYmUgYWJsZSB0byBm
b3JjZSB0aGUgdGhyZWFkIHRvIGV4aXQgaWYgdGhlcmUgYXJlIG5vIGV2ZW50cykuCgpDdXJyZW50
IGNvbW1pdCBtb3ZlcyB0aGUgZXZlbnQgdGhyZWFkIGFuZCBoYW5kbGluZyBldmVudHMKY29tcGxl
dGVseSB0byB1c2IgYmFja2VuZDsgdXNiLWRldmljZS1tYW5hZ2VyIGFuZCBvdGhlcgphcmUgbm90
IGF3YXJlIG9mIGxpYnVzYiBhbmQgc2hvdWxkIG5vdCBhc3N1bWUgd2hhdCBpdCBuZWVkcwp0byB3
b3JrLiBXZSBzdGFydCB0aGUgZXZlbnQgdGhyZWFkIGZyb20gdGhlIGJlZ2lubmluZyBvbiBib3Ro
CkxpbnV4IGFuZCBXaW5kb3dzLiBPbiBMaW51eCBpdCB3b3JrcyBvbmx5IGZvciBob3RwbHVnIGNh
bGxiYWNrcywKb24gV2luZG93cyAtIGp1c3Qgd2FpdHMgdW50aWwgZGV2aWNlIHJlZGlyZWN0aW9u
IHN0YXJ0cy4KT24gZGlzcG9zZSBvZiB1c2ItZGV2aWNlLW1hbmFnZXIgKHdoZW4gaG90cGx1ZyBj
YWxsYmFja3MgYXJlCmRlcmVnaXN0ZXJlZCksIHdlIGludGVycnVwdCB0aGUgdGhyZWFkIG9uY2Ug
dG8gc3RvcCBpdC4KClRoaXMgcmVtb3ZlcyBtYW55IGxpbmVzIG9mIGNvZGUgYW5kIGFsc28gcmVt
b3ZlcyBhbGwgdGhlCmRpZmZlcmVuY2VzIGJldHdlZW4gTGludXggYW5kIFdpbmRvd3MgaW4gdXNi
LWRldmljZS1tYW5hZ2VyLgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5i
ZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgICAgICAg
IHwgMjggLS0tLS0tLS0tLS0tLQogc3JjL3VzYi1iYWNrZW5kLmMgICAgICAgICAgICAgfCA1NCAr
KysrKysrKysrKysrKysrKy0tLS0tLS0KIHNyYy91c2ItYmFja2VuZC5oICAgICAgICAgICAgIHwg
IDIgLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmggfCAgNiAtLS0KIHNyYy91c2ItZGV2
aWNlLW1hbmFnZXIuYyAgICAgIHwgNzkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KIDUgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTMwIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMgYi9zcmMvY2hhbm5lbC11c2JyZWRp
ci5jCmluZGV4IDA0YWNmMGIuLjhkNGNkNjYgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXVzYnJl
ZGlyLmMKKysrIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwpAQCAtNzIsNyArNzIsNiBAQCBzdHJ1
Y3QgX1NwaWNlVXNicmVkaXJDaGFubmVsUHJpdmF0ZSB7CiAgICAgU3BpY2VVc2JBY2xIZWxwZXIg
KmFjbF9oZWxwZXI7CiAjZW5kaWYKICAgICBHTXV0ZXggZGV2aWNlX2Nvbm5lY3RfbXV0ZXg7Ci0g
ICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICp1c2JfZGV2aWNlX21hbmFnZXI7CiB9OwogCiBzdGF0
aWMgdm9pZCBjaGFubmVsX3NldF9oYW5kbGVycyhTcGljZUNoYW5uZWxDbGFzcyAqa2xhc3MpOwpA
QCAtMTY5LDExICsxNjgsNiBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFubmVsX2Rp
c3Bvc2UoR09iamVjdCAqb2JqKQogICAgIFNwaWNlVXNicmVkaXJDaGFubmVsICpjaGFubmVsID0g
U1BJQ0VfVVNCUkVESVJfQ0hBTk5FTChvYmopOwogCiAgICAgc3BpY2VfdXNicmVkaXJfY2hhbm5l
bF9kaXNjb25uZWN0X2RldmljZShjaGFubmVsKTsKLSAgICAvKiBUaGlzIHNob3VsZCBoYXZlIGJl
ZW4gc2V0IHRvIE5VTEwgZHVyaW5nIGRldmljZSBkaXNjb25uZWN0aW9uLAotICAgICAqIGJ1dCBi
ZXR0ZXIgbm90IHRvIGxlYWsgaXQgaWYgdGhpcyBkb2VzIG5vdCBoYXBwZW4gZm9yIHNvbWUgcmVh
c29uCi0gICAgICovCi0gICAgZ193YXJuX2lmX2ZhaWwoY2hhbm5lbC0+cHJpdi0+dXNiX2Rldmlj
ZV9tYW5hZ2VyID09IE5VTEwpOwotICAgIGdfY2xlYXJfb2JqZWN0KCZjaGFubmVsLT5wcml2LT51
c2JfZGV2aWNlX21hbmFnZXIpOwogCiAgICAgLyogQ2hhaW4gdXAgdG8gdGhlIHBhcmVudCBjbGFz
cyAqLwogICAgIGlmIChHX09CSkVDVF9DTEFTUyhzcGljZV91c2JyZWRpcl9jaGFubmVsX3BhcmVu
dF9jbGFzcyktPmRpc3Bvc2UpCkBAIC0yNDgsOCArMjQyLDYgQEAgc3RhdGljIGdib29sZWFuIHNw
aWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9kZXZpY2UoCiAgICAgU3BpY2VVc2JyZWRpckNoYW5u
ZWwgKmNoYW5uZWwsIEdFcnJvciAqKmVycikKIHsKICAgICBTcGljZVVzYnJlZGlyQ2hhbm5lbFBy
aXZhdGUgKnByaXYgPSBjaGFubmVsLT5wcml2OwotICAgIFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbjsK
LSAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm1hbmFnZXI7CiAKICAgICBnX3JldHVybl92YWxf
aWZfZmFpbChwcml2LT5zdGF0ZSA9PSBTVEFURV9ESVNDT05ORUNURUQKICNpZmRlZiBVU0VfUE9M
S0lUCkBAIC0yNjUsMTYgKzI1Nyw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91c2JyZWRpcl9j
aGFubmVsX29wZW5fZGV2aWNlKAogICAgICAgICByZXR1cm4gRkFMU0U7CiAgICAgfQogCi0gICAg
c2Vzc2lvbiA9IHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChjaGFubmVs
KSk7Ci0gICAgbWFuYWdlciA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwg
TlVMTCk7Ci0gICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwobWFuYWdlciAhPSBOVUxMLCBGQUxTRSk7
Ci0KLSAgICBwcml2LT51c2JfZGV2aWNlX21hbmFnZXIgPSBnX29iamVjdF9yZWYobWFuYWdlcik7
Ci0gICAgaWYgKCFzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc3RhcnRfZXZlbnRfbGlzdGVuaW5n
KHByaXYtPnVzYl9kZXZpY2VfbWFuYWdlciwgZXJyKSkgewotICAgICAgICBzcGljZV91c2JfYmFj
a2VuZF9jaGFubmVsX2RldGFjaChwcml2LT5ob3N0KTsKLSAgICAgICAgcmV0dXJuIEZBTFNFOwot
ICAgIH0KLQogICAgIHByaXYtPnN0YXRlID0gU1RBVEVfQ09OTkVDVEVEOwogCiAgICAgcmV0dXJu
IFRSVUU7CkBAIC00NDUsMTYgKzQyNyw2IEBAIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9k
aXNjb25uZWN0X2RldmljZShTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCkKICAgICAgICAg
YnJlYWs7CiAjZW5kaWYKICAgICBjYXNlIFNUQVRFX0NPTk5FQ1RFRDoKLSAgICAgICAgLyoKLSAg
ICAgICAgICogVGhpcyBzZXRzIHRoZSB1c2IgZXZlbnQgdGhyZWFkIHJ1biBjb25kaXRpb24gdG8g
RkFMU0UsIHRoZXJlZm9yCi0gICAgICAgICAqIGl0IG11c3QgYmUgZG9uZSBiZWZvcmUgdXNicmVk
aXJob3N0X3NldF9kZXZpY2UgTlVMTCwgYXMKLSAgICAgICAgICogdXNicmVkaXJob3N0X3NldF9k
ZXZpY2UgTlVMTCB3aWxsIGludGVycnVwdCB0aGUKLSAgICAgICAgICogbGlidXNiX2hhbmRsZV9l
dmVudHMgY2FsbCBpbiB0aGUgdGhyZWFkLgotICAgICAgICAgKi8KLSAgICAgICAgZ193YXJuX2lm
X2ZhaWwocHJpdi0+dXNiX2RldmljZV9tYW5hZ2VyICE9IE5VTEwpOwotICAgICAgICBzcGljZV91
c2JfZGV2aWNlX21hbmFnZXJfc3RvcF9ldmVudF9saXN0ZW5pbmcocHJpdi0+dXNiX2RldmljZV9t
YW5hZ2VyKTsKLSAgICAgICAgZ19jbGVhcl9vYmplY3QoJnByaXYtPnVzYl9kZXZpY2VfbWFuYWdl
cik7Ci0KICAgICAgICAgLyogVGhpcyBhbHNvIGNsb3NlcyB0aGUgbGlidXNiIGhhbmRsZSB3ZSBw
YXNzZWQgZnJvbSBvcGVuX2RldmljZSAqLwogICAgICAgICBzcGljZV91c2JfYmFja2VuZF9jaGFu
bmVsX2RldGFjaChwcml2LT5ob3N0KTsKICAgICAgICAgZ19jbGVhcl9wb2ludGVyKCZwcml2LT5k
ZXZpY2UsIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZik7CmRpZmYgLS1naXQgYS9zcmMv
dXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDQ4Njg3NWUuLmJiZDNiNjcg
MTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBA
IC01OCw2ICs1OCw5IEBAIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kCiAgICAgdXNiX2hvdF9wbHVn
X2NhbGxiYWNrIGhvdHBsdWdfY2FsbGJhY2s7CiAgICAgdm9pZCAqaG90cGx1Z191c2VyX2RhdGE7
CiAgICAgbGlidXNiX2hvdHBsdWdfY2FsbGJhY2tfaGFuZGxlIGhvdHBsdWdfaGFuZGxlOworICAg
IEdUaHJlYWQgKmV2ZW50X3RocmVhZDsKKyAgICBnaW50IGV2ZW50X3RocmVhZF9ydW47CisKICNp
ZmRlZiBHX09TX1dJTjMyCiAgICAgSEFORExFIGhXbmQ7CiAgICAgbGlidXNiX2RldmljZSAqKmxp
YnVzYl9kZXZpY2VfbGlzdDsKQEAgLTQwNiwyOCArNDA5LDI1IEBAIFNwaWNlVXNiQmFja2VuZCAq
c3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvciAqKmVycm9yKQogICAgIHJldHVybiBiZTsKIH0K
IAotZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfaGFuZGxlX2V2ZW50cyhTcGljZVVzYkJhY2tl
bmQgKmJlKQorc3RhdGljIGdwb2ludGVyIGhhbmRsZV9saWJ1c2JfZXZlbnRzKGdwb2ludGVyIHVz
ZXJfZGF0YSkKIHsKKyAgICBTcGljZVVzYkJhY2tlbmQgKmJlID0gdXNlcl9kYXRhOwogICAgIFNQ
SUNFX0RFQlVHKCIlcyA+PiIsIF9fRlVOQ1RJT05fXyk7Ci0gICAgZ2Jvb2xlYW4gb2sgPSBGQUxT
RTsKLSAgICBpZiAoYmUtPmxpYnVzYl9jb250ZXh0KSB7Ci0gICAgICAgIGludCByZXMgPSBsaWJ1
c2JfaGFuZGxlX2V2ZW50cyhiZS0+bGlidXNiX2NvbnRleHQpOwotICAgICAgICBvayA9IHJlcyA9
PSAwOworICAgIGludCByZXMgPSAwOworICAgIGNvbnN0IGNoYXIgKmRlc2MgPSAiIjsKKyAgICB3
aGlsZSAoZ19hdG9taWNfaW50X2dldCgmYmUtPmV2ZW50X3RocmVhZF9ydW4pKSB7CisgICAgICAg
IHJlcyA9IGxpYnVzYl9oYW5kbGVfZXZlbnRzKGJlLT5saWJ1c2JfY29udGV4dCk7CiAgICAgICAg
IGlmIChyZXMgJiYgcmVzICE9IExJQlVTQl9FUlJPUl9JTlRFUlJVUFRFRCkgewotICAgICAgICAg
ICAgY29uc3QgY2hhciAqZGVzYyA9IGxpYnVzYl9zdHJlcnJvcihyZXMpOworICAgICAgICAgICAg
ZGVzYyA9IGxpYnVzYl9zdHJlcnJvcihyZXMpOwogICAgICAgICAgICAgZ193YXJuaW5nKCJFcnJv
ciBoYW5kbGluZyBVU0IgZXZlbnRzOiAlcyBbJWldIiwgZGVzYywgcmVzKTsKLSAgICAgICAgICAg
IG9rID0gRkFMU0U7CisgICAgICAgICAgICBicmVhazsKICAgICAgICAgfQogICAgIH0KLSAgICBT
UElDRV9ERUJVRygiJXMgPDwgJWQiLCBfX0ZVTkNUSU9OX18sIG9rKTsKLSAgICByZXR1cm4gb2s7
Ci19Ci0KLXZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfaW50ZXJydXB0X2V2ZW50X2hhbmRsZXIoU3Bp
Y2VVc2JCYWNrZW5kICpiZSkKLXsKLSAgICBpZiAoYmUtPmxpYnVzYl9jb250ZXh0KSB7Ci0gICAg
ICAgIGxpYnVzYl9pbnRlcnJ1cHRfZXZlbnRfaGFuZGxlcihiZS0+bGlidXNiX2NvbnRleHQpOwor
ICAgIGlmIChiZS0+ZXZlbnRfdGhyZWFkX3J1bikgeworICAgICAgICBTUElDRV9ERUJVRygiJXM6
IHRoZSB0aHJlYWQgYWJvcnRlZCwgJXMoJWQpIiwgX19GVU5DVElPTl9fLCBkZXNjLCByZXMpOwog
ICAgIH0KKyAgICBTUElDRV9ERUJVRygiJXMgPDwiLCBfX0ZVTkNUSU9OX18pOworICAgIHJldHVy
biBOVUxMOwogfQogCiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RlcmVnaXN0ZXJfaG90cGx1ZyhT
cGljZVVzYkJhY2tlbmQgKmJlKQpAQCAtNDM4LDYgKzQzOCwxMiBAQCB2b2lkIHNwaWNlX3VzYl9i
YWNrZW5kX2RlcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlKQogICAgICAgICBi
ZS0+aG90cGx1Z19oYW5kbGUgPSAwOwogICAgIH0KICAgICBiZS0+aG90cGx1Z19jYWxsYmFjayA9
IE5VTEw7CisgICAgZ19hdG9taWNfaW50X3NldCgmYmUtPmV2ZW50X3RocmVhZF9ydW4sIEZBTFNF
KTsKKyAgICBpZiAoYmUtPmV2ZW50X3RocmVhZCkgeworICAgICAgICBsaWJ1c2JfaW50ZXJydXB0
X2V2ZW50X2hhbmRsZXIoYmUtPmxpYnVzYl9jb250ZXh0KTsKKyAgICAgICAgZ190aHJlYWRfam9p
bihiZS0+ZXZlbnRfdGhyZWFkKTsKKyAgICAgICAgYmUtPmV2ZW50X3RocmVhZCA9IE5VTEw7Cisg
ICAgfQogfQogCiBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9yZWdpc3Rlcl9ob3RwbHVnKFNw
aWNlVXNiQmFja2VuZCAqYmUsCkBAIC00NjEsNiArNDY3LDE2IEBAIGdib29sZWFuIHNwaWNlX3Vz
Yl9iYWNrZW5kX3JlZ2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICAgICAg
ICAgICAgICAgICAgIkVycm9yIG9uIFVTQiBob3RwbHVnIGRldGVjdGlvbjogJXMgWyVpXSIsIGRl
c2MsIHJjKTsKICAgICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KKworICAgIGdfYXRvbWljX2lu
dF9zZXQoJmJlLT5ldmVudF90aHJlYWRfcnVuLCBUUlVFKTsKKyAgICBiZS0+ZXZlbnRfdGhyZWFk
ID0gZ190aHJlYWRfbmV3KCJ1c2JfZXZfdGhyZWFkIiwKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGhhbmRsZV9saWJ1c2JfZXZlbnRzLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYmUpOworICAgIGlmICghYmUtPmV2ZW50X3RocmVhZCkgeworICAgICAg
ICBnX3dhcm5pbmcoIkVycm9yIHN0YXJ0aW5nIGV2ZW50IHRocmVhZCIpOworICAgICAgICBzcGlj
ZV91c2JfYmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoYmUpOworICAgICAgICByZXR1cm4gRkFM
U0U7CisgICAgfQogICAgIHJldHVybiBUUlVFOwogfQogCkBAIC00NjgsNiArNDg0LDE0IEBAIHZv
aWQgc3BpY2VfdXNiX2JhY2tlbmRfZGVsZXRlKFNwaWNlVXNiQmFja2VuZCAqYmUpCiB7CiAgICAg
Z19yZXR1cm5faWZfZmFpbChiZSAhPSBOVUxMKTsKICAgICBTUElDRV9ERUJVRygiJXMgPj4iLCBf
X0ZVTkNUSU9OX18pOworICAgIC8qCisgICAgICAgIHdlIGV4cGVjdCBob3RwbHVnIGNhbGxiYWNr
cyBhcmUgZGVyZWdpc3RlcmVkCisgICAgICAgIGFuZCB0aGUgZXZlbnQgdGhyZWFkIGlzIHRlcm1p
bmF0ZWQuIElmIG5vdCwKKyAgICAgICAgd2UgZG8gdGhhdCBhbnl3YXkgYmVmb3JlIGRlbGV0ZSB0
aGUgYmFja2VuZAorICAgICovCisgICAgZ193YXJuX2lmX2ZhaWwoYmUtPmhvdHBsdWdfaGFuZGxl
ID09IDApOworICAgIGdfd2Fybl9pZl9mYWlsKGJlLT5ldmVudF90aHJlYWQgPT0gTlVMTCk7Cisg
ICAgc3BpY2VfdXNiX2JhY2tlbmRfZGVyZWdpc3Rlcl9ob3RwbHVnKGJlKTsKICAgICBpZiAoYmUt
PmxpYnVzYl9jb250ZXh0KSB7CiAgICAgICAgIGxpYnVzYl9leGl0KGJlLT5saWJ1c2JfY29udGV4
dCk7CiAgICAgfQpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmggYi9zcmMvdXNiLWJhY2tl
bmQuaAppbmRleCA4MTRkYTQ2Li42OWE0OTBiIDEwMDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQu
aAorKysgYi9zcmMvdXNiLWJhY2tlbmQuaApAQCAtNTYsOCArNTYsNiBAQCBlbnVtIHsKIFNwaWNl
VXNiQmFja2VuZCAqc3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvciAqKmVycm9yKTsKIHZvaWQg
c3BpY2VfdXNiX2JhY2tlbmRfZGVsZXRlKFNwaWNlVXNiQmFja2VuZCAqY29udGV4dCk7CiAKLWdi
b29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2hhbmRsZV9ldmVudHMoU3BpY2VVc2JCYWNrZW5kICpi
ZSk7Ci12b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2ludGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNl
VXNiQmFja2VuZCAqYmUpOwogZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90
cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVzYl9ob3RfcGx1Z19jYWxsYmFjayBwcm9jLApkaWZmIC0tZ2l0
IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmggYi9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LXByaXYuaAppbmRleCAzOWFhZjJmLi42NmFjZjZkIDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLXByaXYuaAorKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLXByaXYuaApAQCAt
MjUsMTIgKzI1LDYgQEAKIAogR19CRUdJTl9ERUNMUwogCi1nYm9vbGVhbiBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfc3RhcnRfZXZlbnRfbGlzdGVuaW5nKAotICAgIFNwaWNlVXNiRGV2aWNlTWFu
YWdlciAqbWFuYWdlciwgR0Vycm9yICoqZXJyKTsKLQotdm9pZCBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfc3RvcF9ldmVudF9saXN0ZW5pbmcoCi0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpt
YW5hZ2VyKTsKLQogI2lmZGVmIFVTRV9VU0JSRURJUgogdm9pZCBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfZGV2aWNlX2Vycm9yKAogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlciwg
U3BpY2VVc2JEZXZpY2UgKmRldmljZSwgR0Vycm9yICplcnIpOwpkaWZmIC0tZ2l0IGEvc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IDg1N2Qw
NTcuLmE1MzBiZTkgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9z
cmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTkzLDkgKzkzLDYgQEAgc3RydWN0IF9TcGljZVVz
YkRldmljZU1hbmFnZXJQcml2YXRlIHsKICAgICBnY2hhciAqcmVkaXJlY3Rfb25fY29ubmVjdDsK
ICNpZmRlZiBVU0VfVVNCUkVESVIKICAgICBTcGljZVVzYkJhY2tlbmQgKmNvbnRleHQ7Ci0gICAg
aW50IGV2ZW50X2xpc3RlbmVyczsKLSAgICBHVGhyZWFkICpldmVudF90aHJlYWQ7Ci0gICAgZ2lu
dCBldmVudF90aHJlYWRfcnVuOwogICAgIHN0cnVjdCB1c2JyZWRpcmZpbHRlcl9ydWxlICphdXRv
X2Nvbm5fZmlsdGVyX3J1bGVzOwogICAgIHN0cnVjdCB1c2JyZWRpcmZpbHRlcl9ydWxlICpyZWRp
cmVjdF9vbl9jb25uZWN0X3J1bGVzOwogICAgIGludCBhdXRvX2Nvbm5fZmlsdGVyX3J1bGVzX2Nv
dW50OwpAQCAtMjYxLDkgKzI1OCw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNl
X21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyKSkgewogICAgICAgICByZXR1cm4g
RkFMU0U7CiAgICAgfQotI2lmbmRlZiBHX09TX1dJTjMyCi0gICAgc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX3N0YXJ0X2V2ZW50X2xpc3RlbmluZyhzZWxmLCBOVUxMKTsKLSNlbmRpZgogCiAgICAg
LyogU3RhcnQgbGlzdGVuaW5nIGZvciB1c2IgY2hhbm5lbHMgY29ubmVjdC9kaXNjb25uZWN0ICov
CiAgICAgc3BpY2VfZ19zaWduYWxfY29ubmVjdF9vYmplY3QocHJpdi0+c2Vzc2lvbiwgImNoYW5u
ZWwtbmV3IiwgR19DQUxMQkFDSyhjaGFubmVsX25ldyksIHNlbGYsIEdfQ09OTkVDVF9BRlRFUik7
CkBAIC0yODUsMjcgKzI3OSw4IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9kaXNwb3NlKEdPYmplY3QgKmdvYmplY3QpCiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpz
ZWxmID0gU1BJQ0VfVVNCX0RFVklDRV9NQU5BR0VSKGdvYmplY3QpOwogICAgIFNwaWNlVXNiRGV2
aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBzZWxmLT5wcml2OwogCi0jaWZuZGVmIEdfT1NfV0lO
MzIKLSAgICBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc3RvcF9ldmVudF9saXN0ZW5pbmcoc2Vs
Zik7Ci0gICAgaWYgKGdfYXRvbWljX2ludF9nZXQoJnByaXYtPmV2ZW50X3RocmVhZF9ydW4pKSB7
Ci0gICAgICAgIC8qIEZvcmNlIHRlcm1pbmF0aW9uIG9mIHRoZSBldmVudCB0aHJlYWQgZXZlbiBp
ZiB0aGVyZSB3ZXJlIHNvbWUKLSAgICAgICAgICogbWlzbWF0Y2hlZCBzcGljZV91c2JfZGV2aWNl
X21hbmFnZXJfe3N0YXJ0LHN0b3B9X2V2ZW50X2xpc3RlbmluZwotICAgICAgICAgKiBjYWxscy4g
T3RoZXJ3aXNlLCB0aGUgdXNiIGV2ZW50IHRocmVhZCB3aWxsIGJlIGxlYWtlZCwgYW5kIHdpbGwK
LSAgICAgICAgICogdHJ5IHRvIHVzZSB0aGUgbGlidXNiIGNvbnRleHQgd2UgZGVzdHJveSBpbiBm
aW5hbGl6ZSgpLCB3aGljaCB3b3VsZAotICAgICAgICAgKiBjYXVzZSBhIGNyYXNoICovCi0gICAg
ICAgIGdfd2Fybl9pZl9yZWFjaGVkKCk7Ci0gICAgICAgIGdfYXRvbWljX2ludF9zZXQoJnByaXYt
PmV2ZW50X3RocmVhZF9ydW4sIEZBTFNFKTsKLSAgICB9Ci0jZW5kaWYKICAgICBzcGljZV91c2Jf
YmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcocHJpdi0+Y29udGV4dCk7CiAKLSAgICBpZiAocHJp
di0+ZXZlbnRfdGhyZWFkKSB7Ci0gICAgICAgIGdfd2Fybl9pZl9mYWlsKGdfYXRvbWljX2ludF9n
ZXQoJnByaXYtPmV2ZW50X3RocmVhZF9ydW4pID09IEZBTFNFKTsKLSAgICAgICAgZ19hdG9taWNf
aW50X3NldCgmcHJpdi0+ZXZlbnRfdGhyZWFkX3J1biwgRkFMU0UpOwotICAgICAgICBzcGljZV91
c2JfYmFja2VuZF9pbnRlcnJ1cHRfZXZlbnRfaGFuZGxlcihwcml2LT5jb250ZXh0KTsKLSAgICAg
ICAgZ190aHJlYWRfam9pbihwcml2LT5ldmVudF90aHJlYWQpOwotICAgICAgICBwcml2LT5ldmVu
dF90aHJlYWQgPSBOVUxMOwotICAgIH0KICNlbmRpZgogCiAgICAgLyogQ2hhaW4gdXAgdG8gdGhl
IHBhcmVudCBjbGFzcyAqLwpAQCAtMzIzLDcgKzI5OCw2IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3Vz
Yl9kZXZpY2VfbWFuYWdlcl9maW5hbGl6ZShHT2JqZWN0ICpnb2JqZWN0KQogICAgIGlmIChwcml2
LT5kZXZpY2VzKSB7CiAgICAgICAgIGdfcHRyX2FycmF5X3VucmVmKHByaXYtPmRldmljZXMpOwog
ICAgIH0KLSAgICBnX3JldHVybl9pZl9mYWlsKHByaXYtPmV2ZW50X3RocmVhZCA9PSBOVUxMKTsK
ICAgICBpZiAocHJpdi0+Y29udGV4dCkgewogICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZWxl
dGUocHJpdi0+Y29udGV4dCk7CiAgICAgfQpAQCAtOTE1LDU5ICs4ODksNiBAQCBzdGF0aWMgdm9p
ZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2hhbm5lbF9jb25uZWN0X2NiKAogLyogLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tICovCiAvKiBwcml2YXRlIGFwaSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKi8KIAotc3RhdGljIGdwb2ludGVyIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl91c2JfZXZfdGhyZWFkKGdwb2ludGVyIHVzZXJfZGF0YSkKLXsKLSAgICBTcGlj
ZVVzYkRldmljZU1hbmFnZXIgKnNlbGYgPSBTUElDRV9VU0JfREVWSUNFX01BTkFHRVIodXNlcl9k
YXRhKTsKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0gc2VsZi0+cHJp
djsKLQotICAgIHdoaWxlIChnX2F0b21pY19pbnRfZ2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVu
KSkgewotICAgICAgICBpZiAoIXNwaWNlX3VzYl9iYWNrZW5kX2hhbmRsZV9ldmVudHMocHJpdi0+
Y29udGV4dCkpIHsKLSAgICAgICAgICAgIGJyZWFrOwotICAgICAgICB9Ci0gICAgfQotCi0gICAg
cmV0dXJuIE5VTEw7Ci19Ci0KLWdib29sZWFuIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9zdGFy
dF9ldmVudF9saXN0ZW5pbmcoCi0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmLCBHRXJy
b3IgKiplcnIpCi17Ci0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9IHNl
bGYtPnByaXY7Ci0KLSAgICBnX3JldHVybl92YWxfaWZfZmFpbChlcnIgPT0gTlVMTCB8fCAqZXJy
ID09IE5VTEwsIEZBTFNFKTsKLQotICAgIHByaXYtPmV2ZW50X2xpc3RlbmVycysrOwotICAgIGlm
IChwcml2LT5ldmVudF9saXN0ZW5lcnMgPiAxKQotICAgICAgICByZXR1cm4gVFJVRTsKLQotICAg
IC8qIFdlIGRvbid0IGpvaW4gdGhlIHRocmVhZCB3aGVuIHdlIHN0b3AgZXZlbnQgbGlzdGVuaW5n
LCBhcyB0aGUKLSAgICAgICBsaWJ1c2JfaGFuZGxlX2V2ZW50cyBjYWxsIGluIHRoZSB0aHJlYWQg
d29uJ3QgZXhpdCB1bnRpbCB0aGUKLSAgICAgICBsaWJ1c2JfY2xvc2UgY2FsbCBmb3IgdGhlIGRl
dmljZSBpcyBtYWRlIGZyb20gdXNicmVkaXJob3N0X2Nsb3NlLiAqLwotICAgIGlmIChwcml2LT5l
dmVudF90aHJlYWQpIHsKLSAgICAgICAgZ19hdG9taWNfaW50X3NldCgmcHJpdi0+ZXZlbnRfdGhy
ZWFkX3J1biwgRkFMU0UpOwotICAgICAgICBzcGljZV91c2JfYmFja2VuZF9pbnRlcnJ1cHRfZXZl
bnRfaGFuZGxlcihwcml2LT5jb250ZXh0KTsKLSAgICAgICAgIGdfdGhyZWFkX2pvaW4ocHJpdi0+
ZXZlbnRfdGhyZWFkKTsKLSAgICAgICAgIHByaXYtPmV2ZW50X3RocmVhZCA9IE5VTEw7Ci0gICAg
fQotICAgIGdfYXRvbWljX2ludF9zZXQoJnByaXYtPmV2ZW50X3RocmVhZF9ydW4sIFRSVUUpOwot
ICAgIHByaXYtPmV2ZW50X3RocmVhZCA9IGdfdGhyZWFkX25ldygidXNiX2V2X3RocmVhZCIsCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl91c2JfZXZfdGhyZWFkLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzZWxmKTsKLSAgICByZXR1cm4gcHJpdi0+ZXZlbnRfdGhyZWFkICE9IE5VTEw7Ci19Ci0KLXZv
aWQgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3N0b3BfZXZlbnRfbGlzdGVuaW5nKAotICAgIFNw
aWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZikKLXsKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXJQ
cml2YXRlICpwcml2ID0gc2VsZi0+cHJpdjsKLQotICAgIGdfcmV0dXJuX2lmX2ZhaWwocHJpdi0+
ZXZlbnRfbGlzdGVuZXJzID4gMCk7Ci0KLSAgICBwcml2LT5ldmVudF9saXN0ZW5lcnMtLTsKLSAg
ICBpZiAocHJpdi0+ZXZlbnRfbGlzdGVuZXJzID09IDApCi0gICAgICAgIGdfYXRvbWljX2ludF9z
ZXQoJnByaXYtPmV2ZW50X3RocmVhZF9ydW4sIEZBTFNFKTsKLX0KLQogc3RhdGljIHZvaWQgc3Bp
Y2VfdXNiX2RldmljZV9tYW5hZ2VyX2NoZWNrX3JlZGlyX29uX2Nvbm5lY3QoCiAgICAgU3BpY2VV
c2JEZXZpY2VNYW5hZ2VyICpzZWxmLCBTcGljZUNoYW5uZWwgKmNoYW5uZWwpCiB7Ci0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
