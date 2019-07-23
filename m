Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418EE71496
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 11:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DC16E2BF;
	Tue, 23 Jul 2019 09:07:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558BA6E2BD;
 Tue, 23 Jul 2019 09:07:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E1BF5C18B2D2;
 Tue, 23 Jul 2019 09:07:22 +0000 (UTC)
Received: from t470s.jjelen.redhat.com (unknown [10.43.21.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 438F56012D;
 Tue, 23 Jul 2019 09:07:22 +0000 (UTC)
Message-ID: <e1f6db2501b3cc8231d76cb78b348ee6a6e8457d.camel@redhat.com>
From: Jakub Jelen <jjelen@redhat.com>
To: spice-devel@lists.freedesktop.org, spice-announce@lists.freedesktop.org
Date: Tue, 23 Jul 2019 11:07:20 +0200
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 23 Jul 2019 09:07:22 +0000 (UTC)
Subject: [Spice-devel] [ANNOUNCE] libcacard 2.7.0 release
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

SGVsbG8sCgpJIGp1c3QgcmVsZWFzZWQgbGliY2FjYXJkIDIuNy4wLiBJdCBpcyBiYXNlZCBvbiBy
ZWNlbnQgd29yayB0byBpbXByb3ZlCmNvbXBhdGliaWxpdHkgd2l0aCBXaW5kb3dzIGd1ZXN0cyAo
cGFydGljdWxhcmx5IEFjdGl2Q2xpZW50IGRyaXZlcnMpCmZvciBzbWFydCBjYXJkIHNoYXJpbmcg
dXNpbmcgc2V2ZXJhbCBtZXRob2RzOgoKICogSW1wbGVtZW50YXRpb24gb2YgTWljcm9zb2Z0IFBu
UCBhcHBsZXQgdXNlZCBmb3IgY2FyZCBkZXRlY3Rpb24gaW4KV2luZG93cwogKiBJbXBsZW1lbnRh
dGlvbiBvZiBBUEkgdG8gZ2VuZXJhdGUgdW5pcXVlIHNlcmlhbCBudW1iZXIgZnJvbQpjZXJ0aWZp
Y2F0ZXMsIHdoaWNoIGlzIHVzZWQgaW4gdGhlIGxvdy1sZXZlbCBkZXRlY3Rpb24gc3RydWN0dXJl
cwogKiBNb3JlIHZlcmJvc2UgZGVidWcgbG9ncyBtb3N0bHkgYXJvdW5kIGFwcGxldCBzZWxlY3Rp
b24KICogRml4IG9mIFZFUklGWSBBUERVIHNlbWFudGljcyB0byBhbGxvdyBjaGVjayBmb3IgbG9n
aW4gc3RhdHVzCiAqIEltcHJvdmVkIENJIHdpdGggY2xhbmcgdGFyZ2V0cwogKiBVc2Ugb2ZmaWNp
YWxseSBkb2N1bWVudGVkIEFUUiBhcyBpdCBpcyB1c2VkIGFzIHBhcnQgb2YgdGhlCmRldGVjdGlv
biBwcm9jZXNzIGluIFdpbmRvd3MuCgpUaGlzIHJlbGVhc2UgY2FuIGJlIGZvdW5kIGF0IHRoZSBm
b2xsb3dpbmcgbG9jYXRpb25zOgpodHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcvZG93bmxvYWQv
bGliY2FjYXJkLwpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2UvbGliY2FjYXJk
Ly0vcmVsZWFzZXMKCkl0IGlzIHNpZ25lZCB3aXRoIG15IEdQRyBrZXk6CkY3REMgNTBBNSA3REZE
IDUyQjkgNDI1MyAgMjk1RSBGNjQ5IDA3QUMgMTVCNSBDMzNECgpKYWt1YiBKZWxlbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
