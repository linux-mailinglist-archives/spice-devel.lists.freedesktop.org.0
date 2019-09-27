Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C614C03BD
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 12:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493FE6EF02;
	Fri, 27 Sep 2019 10:53:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 400 seconds by postgrey-1.36 at gabe;
 Fri, 27 Sep 2019 10:34:19 UTC
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2656EEFF
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 10:34:18 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 386fb00d
 for <spice-devel@lists.freedesktop.org>;
 Fri, 27 Sep 2019 09:41:38 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id e4f9b719
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <spice-devel@lists.freedesktop.org>;
 Fri, 27 Sep 2019 09:41:38 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id e11so1801920otl.5
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 03:27:37 -0700 (PDT)
X-Gm-Message-State: APjAAAUdAIl7/cAuQq2VTdokjMjGKGShqd3mVLY+zWkhlsoTm2zsCa1c
 CFy1bffY99bpWgOKNstNzgQtWNOKRgqMt5JLB0Y=
X-Google-Smtp-Source: APXvYqwVXnUACY8YXIoXjZwdM5rYGId4npscBvrBY1ov8pOPLtqkUrDmgoEnzKI2eQAVfpkmqpDiovy+FGHLh86ZbxQ=
X-Received: by 2002:a05:6830:20cd:: with SMTP id
 z13mr2645989otq.243.1569580056528; 
 Fri, 27 Sep 2019 03:27:36 -0700 (PDT)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 27 Sep 2019 12:27:25 +0200
X-Gmail-Original-Message-ID: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
Message-ID: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Fri, 27 Sep 2019 10:53:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com;
 h=mime-version
 :from:date:message-id:subject:to:content-type; s=mail; bh=zAvMSY
 PHlUWuvcUDIuXfn9/5iXU=; b=EooVSShX41jH7CZjKuhPmqpa2T5ZmQI2QVGYAi
 0e/8yZp+76wcEIFwuo/IcnMi0+EnF5Ja3JkpsNwjix4lgv2qcQMCrVrU/Ueas0Jd
 TypU/0tf9Fqty2z1khUt7vD4EnhsVDCVnX695oAbYoDnDQM3BlYpivxj9WfQbTAv
 H7kHC3FQY7JrefZTBrRn59yxnSR1v3/Nr0gkQmTc74IqlD8CR7o2C2k70qS9gXWE
 GsFtjJkLsIlljGDYFi8RxA5Q+DDxm5hEl8ktznyejf5SogZwZMw4X52JiZau5OgH
 SwkyX5Q8xuRjHMtHOPP5w5kV+0DQKpCSVZeTgpx0Fju12CyQ==
Subject: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen resizing
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

SGksCgpNeSBkaXN0cm8gdXBncmFkZWQgc3BpY2UgZnJvbSAwLjE0LjAgdG8gMC4xNC4yLiBUaGlz
IGhhcyBjYXVzZWQgc2NyZWVuCnJlc2l6aW5nIGdlb21ldHJ5IHByb2JsZW1zIGZvciBteSBXaW5k
b3dzIGd1ZXN0LgoKSW4gc3BpY3ksIEkgZXhwZXJpZW5jZSBhIG1hc3NpdmUgYmxhY2sgYm9yZGVy
IGFyb3VuZCB0aGUgc2NyZWVuLCBhcwp0aG91Z2ggaXQncyBnZXR0aW5nIHRoZSBpbnRlcm5hbCBj
b29yZGluYXRlcyBhbmQgZXh0ZXJuYWwgY29vcmRpbmF0ZXMKb3V0IG9mIHN5bmMuIFRoaXMgc2Vl
bXMgdG8gZ28gYXdheSBpbiBsby1kcGkgbW9kZS4KCkluIHJlbW90ZS12aWV3ZXIsIEkgZXhwZXJp
ZW5jZSBvbmx5IH5zcXVhcmUgc2NyZWVuIHJlc29sdXRpb25zIGFuZCBiaWcKcGVyZm9ybWFuY2Ug
cmVncmVzc2lvbnMuCgpSZXZlcnRpbmcgdG8gMC4xNC4wIChhbmQgcmVidWlsZGluZyBxZW11IHRv
IHVzZSBpdCkgbWFrZXMgdGhpbmdzIHdvcmsKYWdhaW4sIHdpdGggYWxsIGd1ZXN0IHNjcmVlbiBy
ZXNvbHV0aW9ucyBiZWluZyBwb3NzaWJsZSBhbmQgcmVzaXppbmcKd29ya2luZyB3ZWxsLgoKUGxl
YXNlIGxldCBtZSBrbm93IGlmIHlvdSByZXF1aXJlIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gb3Ig
d291bGQgbGlrZQptZSB0byB0cnkgd2l0aCBzb21lIGNvbW1pdHMgcmV2ZXJ0ZWQuCgpUaGFua3Ms
Ckphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
