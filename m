Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 064802FDA7
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9450E6E36D;
	Thu, 30 May 2019 14:23:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF086E36D
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4472730BC577
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:13 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1990210027B6;
 Thu, 30 May 2019 14:23:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:51 +0100
Message-Id: <20190530142254.28937-10-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 30 May 2019 14:23:13 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 10/13] inputs-channel-client:
 Remove unused declarations
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL2lucHV0cy1jaGFubmVsLWNsaWVudC5oIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9pbnB1dHMtY2hhbm5lbC1jbGllbnQu
aCBiL3NlcnZlci9pbnB1dHMtY2hhbm5lbC1jbGllbnQuaAppbmRleCBjMjIyODg5ODAuLjFhZmMy
MmJkNCAxMDA2NDQKLS0tIGEvc2VydmVyL2lucHV0cy1jaGFubmVsLWNsaWVudC5oCisrKyBiL3Nl
cnZlci9pbnB1dHMtY2hhbm5lbC1jbGllbnQuaApAQCAtNjEsOSArNjEsNiBAQCBSZWRDaGFubmVs
Q2xpZW50KiBpbnB1dHNfY2hhbm5lbF9jbGllbnRfY3JlYXRlKFJlZENoYW5uZWwgKmNoYW5uZWws
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZFN0cmVh
bSAqc3RyZWFtLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBSZWRDaGFubmVsQ2FwYWJpbGl0aWVzICpjYXBzKTsKIAotdWludDE2X3QgaW5wdXRzX2NoYW5u
ZWxfY2xpZW50X2dldF9tb3Rpb25fY291bnQoSW5wdXRzQ2hhbm5lbENsaWVudCogc2VsZik7Ci0v
KiBvbmx5IGZvciBtaWdyYXRpb24gKi8KLXZvaWQgaW5wdXRzX2NoYW5uZWxfY2xpZW50X3NldF9t
b3Rpb25fY291bnQoSW5wdXRzQ2hhbm5lbENsaWVudCogc2VsZiwgdWludDE2X3QgY291bnQpOwog
dm9pZCBpbnB1dHNfY2hhbm5lbF9jbGllbnRfb25fbW91c2VfbW90aW9uKElucHV0c0NoYW5uZWxD
bGllbnQqIHNlbGYpOwogdm9pZCBpbnB1dHNfY2hhbm5lbF9jbGllbnRfc2VuZF9taWdyYXRlX2Rh
dGEoUmVkQ2hhbm5lbENsaWVudCAqcmNjLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgU3BpY2VNYXJzaGFsbGVyICptLCBSZWRQaXBlSXRlbSAqaXRlbSk7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
