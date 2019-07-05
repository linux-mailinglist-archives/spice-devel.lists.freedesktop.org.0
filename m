Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECFA6020D
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 10:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186286E420;
	Fri,  5 Jul 2019 08:23:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9B36E41F
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 08:23:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BA50C308FC4A
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 08:23:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D1E161ADD3;
 Fri,  5 Jul 2019 08:23:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  5 Jul 2019 09:22:58 +0100
Message-Id: <20190705082259.10991-2-fziglio@redhat.com>
In-Reply-To: <CADJ1XR1ufJx6xGGRiDmNz8db5-_MRMox_YrdnVBgSjjQyOE9dA@mail.gmail.com>
References: <CADJ1XR1ufJx6xGGRiDmNz8db5-_MRMox_YrdnVBgSjjQyOE9dA@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 05 Jul 2019 08:23:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/3] fixup! reds: Add ability to
 query the video-codecs currently enabled
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

TWlub3Igc3R5bGUgdXBkYXRlcwotLS0KIHNlcnZlci9zcGljZS1zZXJ2ZXIuaCB8IDE0ICsrKysr
KysrKy0tLS0tCiBzZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgfCAgMyArKy0KIDIgZmlsZXMgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIv
c3BpY2Utc2VydmVyLmggYi9zZXJ2ZXIvc3BpY2Utc2VydmVyLmgKaW5kZXggMjRkZjhlNjUxLi5j
NmM4NjQ2YWUgMTAwNjQ0Ci0tLSBhL3NlcnZlci9zcGljZS1zZXJ2ZXIuaAorKysgYi9zZXJ2ZXIv
c3BpY2Utc2VydmVyLmgKQEAgLTEzNiwxOCArMTM2LDIyIEBAIGVudW0gewogfTsKIAogaW50IHNw
aWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzKFNwaWNlU2VydmVyICpzLCBjb25zdCBjaGFyKiB2
aWRlb19jb2RlY3MpOwotLyogUmV0dXJucyBhIG5ld2x5IGFsbG9jYXRlZCBzdHJpbmcgZGVzY3Jp
YmluZyB2aWRlbyBlbmNvZGVycy9jb2RlY3MKLSAqIGN1cnJlbnRseSBhbGxvd2VkIGluIEByZWRz
IFNwaWNlIHNlcnZlci4gVGhlIHN0cmluZyByZXR1cm5lZCBieQorCisvKioKKyAqIFJldHVybnMg
YSBuZXdseSBhbGxvY2F0ZWQgc3RyaW5nIGRlc2NyaWJpbmcgdmlkZW8gZW5jb2RlcnMvY29kZWNz
CisgKiBjdXJyZW50bHkgYWxsb3dlZCBpbiBAcyBTcGljZSBzZXJ2ZXIuIFRoZSBzdHJpbmcgcmV0
dXJuZWQgYnkKICAqIHRoaXMgZnVuY3Rpb24gbXVzdCBiZSByZWxlYXNlZCB3aXRoIHNwaWNlX3Nl
cnZlcl9mcmVlX3ZpZGVvX2NvZGVjcy4KICAqCi0gKiBAcmVkczogdGhlIFNwaWNlIHNlcnZlciB0
byBxdWVyeQorICogQHM6IHRoZSBTcGljZSBzZXJ2ZXIgdG8gcXVlcnkKICAqIEByZXR1cm4gdGhl
IHN0cmluZyBkZXNjcmliaW5nIHRoZSB2aWRlbyBlbmNvZGVycy9jb2RlY3MgY3VycmVudGx5IGVu
YWJsZWQKICAqLwogY29uc3QgY2hhciAqc3BpY2Vfc2VydmVyX2dldF92aWRlb19jb2RlY3MoU3Bp
Y2VTZXJ2ZXIgKnMpOwotLyogUmVsZWFzZXMgdGhlIG1lbW9yeSBvZiB0aGUgdmlkZW8tY29kZWMg
c3RyaW5nIHJldHVybmVkIGJ5CisKKy8qKgorICogUmVsZWFzZXMgdGhlIG1lbW9yeSBvZiB0aGUg
dmlkZW8tY29kZWMgc3RyaW5nIHJldHVybmVkIGJ5CiAgKiBzcGljZV9zZXJ2ZXJfZ2V0X3ZpZGVv
X2NvZGVjcy4KICAqLwotdm9pZCBzcGljZV9zZXJ2ZXJfZnJlZV92aWRlb19jb2RlY3MoU3BpY2VT
ZXJ2ZXIgKnJlZHMsIGNvbnN0IGNoYXIgKnZpZGVvX2NvZGVjcyk7Cit2b2lkIHNwaWNlX3NlcnZl
cl9mcmVlX3ZpZGVvX2NvZGVjcyhTcGljZVNlcnZlciAqcywgY29uc3QgY2hhciAqdmlkZW9fY29k
ZWNzKTsKIGludCBzcGljZV9zZXJ2ZXJfc2V0X3BsYXliYWNrX2NvbXByZXNzaW9uKFNwaWNlU2Vy
dmVyICpzLCBpbnQgZW5hYmxlKTsKIGludCBzcGljZV9zZXJ2ZXJfc2V0X2FnZW50X21vdXNlKFNw
aWNlU2VydmVyICpzLCBpbnQgZW5hYmxlKTsKIGludCBzcGljZV9zZXJ2ZXJfc2V0X2FnZW50X2Nv
cHlwYXN0ZShTcGljZVNlcnZlciAqcywgaW50IGVuYWJsZSk7CmRpZmYgLS1naXQgYS9zZXJ2ZXIv
dmlkZW8tc3RyZWFtLmMgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMKaW5kZXggYTM5MjYyZDU1Li5k
MjI3ODRmNWYgMTAwNjQ0Ci0tLSBhL3NlcnZlci92aWRlby1zdHJlYW0uYworKysgYi9zZXJ2ZXIv
dmlkZW8tc3RyZWFtLmMKQEAgLTk3OCw3ICs5NzgsOCBAQCB2b2lkIHZpZGVvX3N0cmVhbV90cmFj
ZV9hZGRfZHJhd2FibGUoRGlzcGxheUNoYW5uZWwgKmRpc3BsYXksCiAgKiByZXR1cm5zIGEgc3Ry
aW5nIG9mICJlbmM6Y29kZWM8c2VwPiIqIHRoYXQgbXVzdCBiZSByZWxlYXNlZAogICogICAgICAg
ICB3aXRoIGdfZnJlZS4KICAqLwotY2hhciAqdmlkZW9fY29kZWNzX3RvX3N0cmluZyhHQXJyYXkg
KnZpZGVvX2NvZGVjcywgY29uc3QgY2hhciAqc2VwKSB7CitjaGFyICp2aWRlb19jb2RlY3NfdG9f
c3RyaW5nKEdBcnJheSAqdmlkZW9fY29kZWNzLCBjb25zdCBjaGFyICpzZXApCit7CiAgICAgaW50
IGk7CiAgICAgR1N0cmluZyAqbXNnID0gZ19zdHJpbmdfbmV3KCIiKTsKIAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
