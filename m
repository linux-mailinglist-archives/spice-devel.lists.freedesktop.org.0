Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19802DFF7A
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F24E6E450;
	Tue, 22 Oct 2019 08:34:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D6E6E450
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-kqZ-7n8COJSIGTbxuROrBg-1; Tue, 22 Oct 2019 04:34:10 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B39AB80183E
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:09 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D436F5C1D4;
 Tue, 22 Oct 2019 08:34:08 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 22 Oct 2019 09:33:58 +0100
Message-Id: <20191022083358.14214-5-fziglio@redhat.com>
In-Reply-To: <20191022083358.14214-1-fziglio@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: kqZ-7n8COJSIGTbxuROrBg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571733252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oRcXrbS/3wP/gnBVNrXjje1sTcVx+vF0lD/nDB5kUzg=;
 b=QE1JGCEIqjao2PeldAeBGaPQDWzZpzqoAcymTShNkOm/uvNkkOQ1Epih0eHtiNe4XxCijO
 iY8/ppBpAk5E2/w2lyuxiUOB219XWUWC9KhMeZnOF6MXgJlS/ZBnOcM96rz7R5a8D1/SCO
 mipjOq1i4AzPKQ3K6rwi804sOSKj4a8=
Subject: [Spice-devel] [PATCH spice-protocol v3 5/5] build-sys: Requires
 proper pkg-config for MingW
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

LnBjIGZpbGVzIHJlcXVpcmVzIE1pbmdXIHZlcnNpb24sIG5vdCBzeXN0ZW0gb25lLgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3BpY2Ut
cHJvdG9jb2wuc3BlYy5pbiB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGlj
ZS1wcm90b2NvbC5zcGVjLmluCmluZGV4IDU0YWFjZmQuLjJmZTk0MGIgMTAwNjQ0Ci0tLSBhL3Nw
aWNlLXByb3RvY29sLnNwZWMuaW4KKysrIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgpAQCAtMTks
NyArMTksNyBAQCBhbmQgdGhlIHBhcmEtdmlydHVhbCBncmFwaGljcyBjYXJkIFFYTC4KICVkZWZp
bmUgbWluZ3dfZmlsZXMoKSBcCiAlcGFja2FnZSAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKIFN1
bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMgXAotUmVxdWlyZXM6ICAg
ICAgIHBrZ2NvbmZpZyBcCitSZXF1aXJlczogICAgICAgJXsxfS1wa2ctY29uZmlnIFwKIFwKICVk
ZXNjcmlwdGlvbiAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKIEhlYWRlciBmaWxlcyBkZXNjcmli
aW5nIHRoZSBzcGljZSBwcm90b2NvbCBcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
