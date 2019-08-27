Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C289E574
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0EA897D0;
	Tue, 27 Aug 2019 10:11:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE8C897D0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:11:35 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z11so18202101wrt.4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 03:11:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=K8FdlfuMGyR+FfuRrhlHkr/s789aMKRBvjNwMZK+6+E=;
 b=gjCHmnoJyJTMPuVK9skbgtNEYdIX9GHxRJ2kuheId+6xnvrACe8HxvZn4RHSto/vIt
 HBiaQ/X/D9NdLraeGsbeKR1tgoEAkBX4lFbC+Rw5V+rcUI69u1FZ9MqyOadIPus0d8xW
 cRX2DExglGMwHlZyc0f+ey81DXLfhy3z5O532TE4cewpZbr7RUuHeF/2FpndgqXdpAOe
 onsITMqu11oQN1NO3nqJwc9iaEAUUQPw5ZwI2NIIqjor1P9PW3vPq4TJlc6CvUbN13cv
 cH7M3wa0SjnYvLQN0x/pJ1P3MKtZlm6XyZuvzN4JWmLZaN9LUfX/IQ4n4To/a+UYplTi
 SuTw==
X-Gm-Message-State: APjAAAV6fhJAouLc8ypDqA8rBPOxFnkfekZHmyemqGjurmK0gVRt9892
 rK0S4Qy2Pt54uD/cRXABoHW7kz/F
X-Google-Smtp-Source: APXvYqzEzi8KAFqBmoBP2XE9Zt5nuHJfDY4o7JZMLPgJL/JDE8i5r7cJBPBqqbOCvnXg4DAExqSCBA==
X-Received: by 2002:a5d:66c5:: with SMTP id k5mr29236425wrw.304.1566900694172; 
 Tue, 27 Aug 2019 03:11:34 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:95:eb51:474b:ae6b])
 by smtp.gmail.com with ESMTPSA id d16sm14871355wrj.47.2019.08.27.03.11.33
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:11:33 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-27-fziglio@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190827092246.10276-27-fziglio@redhat.com>
Date: Tue, 27 Aug 2019 12:11:30 +0200
Message-ID: <m1v9uiex4d.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:subject:in-reply-to:date:message-id
 :mime-version;
 bh=K8FdlfuMGyR+FfuRrhlHkr/s789aMKRBvjNwMZK+6+E=;
 b=RHp7ZwEhqoYohUrbn+xA8bh9nI5ChjiHO4F9z2o7uYtknJ67bvdx7pJfIU+waXDCLY
 yxqTOBc6adkf/jYBz9ODvNZyrbe5JuLH47uQHCg/3GBUKDiXmqW+/VTZ6PV8G2lYolCm
 YvVJrn3cZfe78uAElUyxYRPrKjwI+E7Gl/sq9JCY1xgIT4IF4Il8S8tnUm0MFdB/fTSG
 /aEDEZxVk4fBPhTSgymeHHP/eMv01AVX+yEpQMY/UUSqoWH9eCKzLMyi2fJLmKLmkPwE
 6867bj3Wiv3V5w5hyDUW5kQ7X7QcvFGUMKEKJIHnOwWd3WEOsnB5wkO85CHAAi8p4CAi
 4qOA==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 26/29] test-cd-emu: Test
 attach/detach emulated device
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

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+IE1vY2sgc29tZSB1c2ItYmFja2VuZCBmdW5jdGlv
bnMgdG8gYmUgYWJsZSB0byBzaW11bGF0ZSBkZXZpY2UKPiBhdHRhY2htZW50IGFuZCBkZXRhY2ht
ZW50Lgo+ICsKPiArICAgIC8vIHRoaXMgaXQncyB0aGUgY29ycmVjdCBzZXF1ZW5jZSB0byBmcmVl
IHNlc3Npb24hCj4gKyAgICAvLyBnX29iamVjdF91bnJlZiBpcyBub3QgZW5vdWdoLCBjYXVzaW5n
IHdyb25nIHJlZmVyZW5jZSBjb3VudGluZ3MKPiArICAgIHNwaWNlX3Nlc3Npb25fZGlzY29ubmVj
dChzZXNzaW9uKTsKPiArICAgIGdfb2JqZWN0X3VucmVmKHNlc3Npb24pOwo+ICsgICAgd2hpbGUg
KGdfbWFpbl9jb250ZXh0X2l0ZXJhdGlvbihOVUxMLCBGQUxTRSkpIHsKPiArICAgICAgICBjb250
aW51ZTsKPiArICAgIH0KClRoaXMgbG9va3Mgc28gcGVjdWxpYXIgdGhhdCBpdCBtaWdodCBiZSB3
b3J0aCBwdXR0aW5nIGluIGl0cwpvd24gZnVuY3Rpb24sIGluIG9yZGVyIHRvIGZhY2lsaXRhdGUg
cmV1c2UuCgo+ICsKPiArICAgIGdfYXNzZXJ0X2NtcGludChnb2JqZWN0c19hbGxvY2F0ZWQsID09
LCAwKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAgd3JpdGVfdGVzdF9pc28odm9pZCkKPiAg
ewo+IEBAIC04Nyw2ICsyMzQsOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciogYXJndltdKQo+
Cj4gICAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9zaW1wbGUiLCBHVUlOVF9UT19Q
T0lOVEVSKDEpLCBtdWx0aXBsZSk7Cj4gICAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVt
dS9tdWx0aXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMTI4KSwgbXVsdGlwbGUpOwo+ICsgICAgZ190
ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX25vX2F1dG8iLCBHVUlOVF9UT19QT0lO
VEVSKDApLCBhdHRhY2gpOwo+ICsgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0
YWNoX2F1dG8iLCBHVUlOVF9UT19QT0lOVEVSKDEpLCBhdHRhY2gpOwo+Cj4gICAgICByZXR1cm4g
Z190ZXN0X3J1bigpOwo+ICB9CgoKLS0KQ2hlZXJzLApDaHJpc3RvcGhlIGRlIERpbmVjaGluIChJ
UkMgYzNkKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
