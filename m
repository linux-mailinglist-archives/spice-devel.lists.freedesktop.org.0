Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D36A5ACA
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 17:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A32789A67;
	Mon,  2 Sep 2019 15:50:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CEE89A67
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 15:50:24 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 344A9C010921
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 15:50:24 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id x12so8998875wrw.0
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Sep 2019 08:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lkyG/1IXNky+DQ9kP3w3YyFZeZRW/hTBibiZ7xJanXU=;
 b=cgHaR8YaUwlgsMo/fRkDdGFNzW+Dhfm8fQWK8lnbmuzQdkEIb4iSlr/DZJxMi8E7e2
 w/l8DzNDxJn7lADPoACcHl+jbNCaOPOh75xgSI3EzJVopnp3kL6LHPnDWpfNwDbnDT0t
 GdDTJS4Q0b7edrF/3x8bowfqLzmXI06g4yn287emXYMphir65CbUKfp45Jgb+Gtgq0bx
 TEDGjsFeoEippEH4w6fCQgTKpf9O0nQITz/zNB8J4EWDB7LAu1/bNjfhD+eGIgurGvOr
 uzi3qoyOkZ1m2MbdQZDfDnzp9UQlQD2j4EkS9uJGCqNflW/jGbcnHpsfbhG9IMJ6qNwN
 9c4g==
X-Gm-Message-State: APjAAAVuaH9aDArG1WJ80+takGtvdKA6TKOBXj/NEumiKucMDbEVlB0M
 GDuoTywt0F1Ch6L5jtZJ8Nq8QOhhCtn1DK4t4OFmOdZ5RxHyAdhADF3D8Wt+H9AUZcoopVJ2DKg
 oUlauAg+IvgB+tL02LeLtElCE0LbWFv4=
X-Received: by 2002:a7b:c187:: with SMTP id y7mr36752716wmi.155.1567439422701; 
 Mon, 02 Sep 2019 08:50:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcuTli4hnkuZGF/bkE7Aqr8DAiO1EOm13LBL0GbsUC/Y/NNf+fJjz2U7cLMTV7sipOnUEzCA==
X-Received: by 2002:a7b:c187:: with SMTP id y7mr36752669wmi.155.1567439422283; 
 Mon, 02 Sep 2019 08:50:22 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id n7sm10419147wrx.42.2019.09.02.08.50.21
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 08:50:21 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 17:50:02 +0200
Message-Id: <20190902155002.18766-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <683621ff-a450-c516-f619-a32bf46ad9fb@redhat.com>
References: <683621ff-a450-c516-f619-a32bf46ad9fb@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-gtk v3] streaming: make draw-area
 visible on MJPEG encoder creation
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

VGhpcyBwYXRjaCBhbGxvd3MgdGhlIE1KUEVHIGVuY29kZXIgdG8gaW5mb3JtIHRoZSBzcGljZS13
aWRnZXQgdGhhdAppdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBt
YWRlIHZpc2libGUgb24gc2NyZWVuLgoKVGhpcyBpcyByZXF1aXJlZCB0byBzd2l0Y2ggZnJvbSBH
U1QgdmlkZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1KUEVHCmRlY29kaW5nLCBvdGhlcndpc2UgdGhl
IGdzdC1hcmVhIHJlbWFpbmVkIG9uIHRvcCBhbmQgdGhlIE1KUEVHIHZpZGVvCnN0cmVhbSB3YXMg
bmV2ZXIgc2hvd24uCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0
LmNvbT4KLS0tCnYyIC0+IHYzOiBhZGRyZXNzIFNuaXIgY29tbWVudHM6CgotIGNvbW1lbnQgYWJv
dXQgTlVMTCBpbiB0aGUgc2lnbmFsIGRlc2NyaXB0aW9uCi0gbW92ZSAnaWYgKHBpcGVsaW5lX3B0
ciA9PSBOVUxMKSAuLi4nIG91dHNpZGUgIG9mICdpZiBkZWZpbmVkKEdES19XSU5ET1dJTkdfWDEx
KScKCnJlZ2FyZGluZyBFR0wgbm90ZSwgaXQgbWlnaHQgYmUgc29tZXRoaW5nIGxpa2UgdGhpczoK
Cj4gZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssIGVnbF9lbmFibGVk
KGQpID8KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImdsLWFy
ZWEiIDogImRyYXctYXJlYSIpOwoKYnV0IGl0J3MganVzdCBhIHdpbGQgZ3Vlc3MhCgotLS0KIHNy
Yy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYyB8ICAzICsrKwogc3JjL2NoYW5uZWwtZGlzcGxheS5j
ICAgICAgIHwgIDQgKysrLQogc3JjL3NwaWNlLXdpZGdldC5jICAgICAgICAgIHwgMTEgKysrKysr
KysrLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgYi9zcmMvY2hhbm5lbC1k
aXNwbGF5LW1qcGVnLmMKaW5kZXggNjQ3ZDMxYi4uNjM2YTk4YiAxMDA2NDQKLS0tIGEvc3JjL2No
YW5uZWwtZGlzcGxheS1tanBlZy5jCisrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwpA
QCAtMzAwLDUgKzMwMCw4IEBAIFZpZGVvRGVjb2RlciogY3JlYXRlX21qcGVnX2RlY29kZXIoaW50
IGNvZGVjX3R5cGUsIGRpc3BsYXlfc3RyZWFtICpzdHJlYW0pCgogICAgIC8qIEFsbCB0aGUgb3Ro
ZXIgZmllbGRzIGFyZSBpbml0aWFsaXplZCB0byB6ZXJvIGJ5IGdfbmV3MCgpLiAqLwoKKyAgICAv
KiBtYWtlcyB0aGUgZHJhdy1hcmVhIHZpc2libGUgKi8KKyAgICBoYW5kX3BpcGVsaW5lX3RvX3dp
ZGdldChzdHJlYW0sIE5VTEwpOworCiAgICAgcmV0dXJuIChWaWRlb0RlY29kZXIqKWRlY29kZXI7
CiB9CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LmMgYi9zcmMvY2hhbm5lbC1kaXNw
bGF5LmMKaW5kZXggNTljODA5ZC4uY2Q4N2M3YyAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtZGlz
cGxheS5jCisrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXkuYwpAQCAtNDg1LDcgKzQ4NSw5IEBAIHN0
YXRpYyB2b2lkIHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jbGFzc19pbml0KFNwaWNlRGlzcGxheUNo
YW5uZWxDbGFzcyAqa2xhc3MpCiAgICAgICoKICAgICAgKiBUaGUgI1NwaWNlRGlzcGxheUNoYW5u
ZWw6OmdzdC12aWRlby1vdmVybGF5IHNpZ25hbCBpcyBlbWl0dGVkIHdoZW4KICAgICAgKiBwaXBl
bGluZSBpcyByZWFkeSBhbmQgY2FuIGJlIHBhc3NlZCB0byB3aWRnZXQgdG8gcmVnaXN0ZXIgR1N0
cmVhbWVyCi0gICAgICogb3ZlcmxheSBpbnRlcmZhY2UgYW5kIG90aGVyIEdTdHJlYW1lciBjYWxs
YmFja3MuCisgICAgICogb3ZlcmxheSBpbnRlcmZhY2UgYW5kIG90aGVyIEdTdHJlYW1lciBjYWxs
YmFja3MuIElmIHRoZSBwaXBlbGluZQorICAgICAqIHBvaW50ZXIgaXMgTlVMTCwgdGhlIGRyYXdp
bmcgYXJlYSBvZiB0aGUgbmF0aXZlIHJlbmRlcmVyIGlzIHNldAorICAgICAqIHZpc2libGUuCiAg
ICAgICoKICAgICAgKiBSZXR1cm5zOiAlVFJVRSBpZiB0aGUgb3ZlcmxheSBpcyBiZWluZyBzZXQK
ICAgICAgKgpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXdpZGdldC5jIGIvc3JjL3NwaWNlLXdpZGdl
dC5jCmluZGV4IGE5YmExZjEuLmQ3M2UwMmYgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS13aWRnZXQu
YworKysgYi9zcmMvc3BpY2Utd2lkZ2V0LmMKQEAgLTI3ODAsMTQgKzI3ODAsMjAgQEAgc3RhdGlj
IHZvaWQgZ3N0X3NpemVfYWxsb2NhdGUoR3RrV2lkZ2V0ICp3aWRnZXQsIEdka1JlY3RhbmdsZSAq
YSwgZ3BvaW50ZXIgZGF0YSkKIH0KCiAvKiBUaGlzIGNhbGxiYWNrIHNob3VsZCBwYXNzIHRvIHRo
ZSB3aWRnZXQgYSBwb2ludGVyIG9mIHRoZSBwaXBlbGluZQotICogc28gdGhhdCB3ZSBjYW4gc2V0
IHBpcGVsaW5lIGFuZCBvdmVybGF5IHJlbGF0ZWQgY2FsbHMgZnJvbSBoZXJlLgorICogc28gdGhh
dCB3ZSBjYW4gdGhlIHNldCBHU1QgcGlwZWxpbmUgYW5kIG92ZXJsYXkgcmVsYXRlZCBjYWxscyBm
cm9tCisgKiBoZXJlLiAgSWYgdGhlIHBpcGVsaW5lIHBvaW50ZXIgaXMgTlVMTCwgdGhlIGRyYXdp
bmcgYXJlYSBvZiB0aGUKKyAqIG5hdGl2ZSByZW5kZXJlciBpcyBzZXQgdmlzaWJsZS4KICAqLwog
c3RhdGljIGdib29sZWFuIHNldF9vdmVybGF5KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgdm9pZCog
cGlwZWxpbmVfcHRyLCBTcGljZURpc3BsYXkgKmRpc3BsYXkpCiB7Ci0jaWYgZGVmaW5lZChHREtf
V0lORE9XSU5HX1gxMSkKICAgICBTcGljZURpc3BsYXlQcml2YXRlICpkID0gZGlzcGxheS0+cHJp
djsKCisgICAgaWYgKHBpcGVsaW5lX3B0ciA9PSBOVUxMZzApIHsKKyAgICAgICAgZ3RrX3N0YWNr
X3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssICJkcmF3LWFyZWEiKTsKKyAgICAgICAg
cmV0dXJuIHRydWU7CisgICAgfQorCisjaWYgZGVmaW5lZChHREtfV0lORE9XSU5HX1gxMSkKICAg
ICAvKiBHc3RWaWRlb092ZXJsYXkgaXMgY3VycmVudGx5IHVzZWQgb25seSB1bmRlciB4ICovCiAg
ICAgaWYgKCFnX2dldGVudigiRElTQUJMRV9HU1RWSURFT09WRVJMQVkiKSAmJgogICAgICAgICBH
REtfSVNfWDExX0RJU1BMQVkoZ2RrX2Rpc3BsYXlfZ2V0X2RlZmF1bHQoKSkpIHsKLS0KMi4yMS4w
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
