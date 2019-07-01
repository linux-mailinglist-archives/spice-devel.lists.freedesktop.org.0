Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE3B5BB38
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 14:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40998808E;
	Mon,  1 Jul 2019 12:06:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A958808E
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:06:43 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id c27so5857877wrb.2
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 05:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TOZJFwihW3Mbb0V7n9Hg8ZqB7FXL33TJIjUbZ6vRmdg=;
 b=mV8Na/b+UUoFfTPQxLjInKQ43z7+xPsJzs0OFolvcJWrl0IwL9Y48/oaXVs+1DfVtg
 tjSuN3BlHuXjwkzUuqpSeZGwPeYfl7DNkeEPKpB094I4uQJZjE/yfojZPucF/THrlcZn
 0D/ncsIhUuzIbHnu05C4xCMyFIm7VqF0LPNmHpCoq+3hS0fM40cDjZ6yo/YEndBp6T7V
 d26DC8gG9ii+k2GPyn2/Q+9wGVUIiAKMCpT+6XmKaY7OXf83FMv3+Mgc1AYUFCqMdqpG
 w+Fw+AKr0cKzxASO2BCCcqWt5iEn8xs0k244UNBxNYd1Qp2avj9Qc3MN7KG6McMW8REt
 0G0A==
X-Gm-Message-State: APjAAAVOZP7Bebyp08ANDLuJ94irjXbyxCDoJGHqauEyM3QXhd6HwQ8K
 f8t8V3P+LXR+ZgMY1nT5KrVncH3R3nk=
X-Google-Smtp-Source: APXvYqz9faMiVf2rlfXRzDXwi+accucZxMzvPoAdfiMf4pjx0siIBTDmLlDXirqdYlgEQUzlh5JgIg==
X-Received: by 2002:a5d:6089:: with SMTP id w9mr9175372wrt.166.1561982801564; 
 Mon, 01 Jul 2019 05:06:41 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id v4sm11453465wmg.22.2019.07.01.05.06.40
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 05:06:41 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  1 Jul 2019 14:06:39 +0200
Message-Id: <20190701120639.31441-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
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

dGhpcyB3YXJuaW5nIGlzIGZhaWxpbmcgbXkgYnVpbGQsIEkgYXNzdW1lIGl0IGNvbWVzIGZyb20g
YSBuZXcgdmVyc2lvbgpvZiB0aGUgY29tcGlsZXIgY2F0Y2hpbmcgdGhlIHVzZWxlc3MgY2FsbCB0
byBhYnMoKS4KCi0tLQoKPiBlcnJvcjogdGFraW5nIHRoZSBhYnNvbHV0ZSB2YWx1ZSBvZiB1bnNp
Z25lZCB0eXBlICd1aW50NjRfdCcKPiB7YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBubyBl
ZmZlY3QgWy1XZXJyb3I9YWJzb2x1dGUtdmFsdWVdCi0tLQogc2VydmVyL2dzdHJlYW1lci1lbmNv
ZGVyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3Ry
ZWFtZXItZW5jb2Rlci5jCmluZGV4IDY0MTZiNjg4Li5kYmQ0YjExZCAxMDA2NDQKLS0tIGEvc2Vy
dmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMK
QEAgLTUxNSw3ICs1MTUsNyBAQCBzdGF0aWMgdm9pZCBzZXRfdmlkZW9fYml0X3JhdGUoU3BpY2VH
c3RFbmNvZGVyICplbmNvZGVyLCB1aW50NjRfdCBiaXRfcmF0ZSkKICAgICAgICAgZW5jb2Rlci0+
dmlkZW9fYml0X3JhdGUgPSBiaXRfcmF0ZTsKICAgICAgICAgc2V0X2dzdGVuY19iaXRyYXRlKGVu
Y29kZXIpOwoKLSAgICB9IGVsc2UgIGlmIChhYnMoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19i
aXRfcmF0ZSkgPiBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRS
QVRFX01BUkdJTikgeworICAgIH0gZWxzZSAgaWYgKChiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVv
X2JpdF9yYXRlKSA+IGVuY29kZXItPnZpZGVvX2JpdF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJ
VFJBVEVfTUFSR0lOKSB7CiAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3Jh
dGU7CiAgICAgICAgIHNldF9waXBlbGluZV9jaGFuZ2VzKGVuY29kZXIsIFNQSUNFX0dTVF9WSURF
T19QSVBFTElORV9CSVRSQVRFKTsKICAgICB9Ci0tCjIuMjEuMApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
