Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427D2C9F79
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 15:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E6D6E9D2;
	Thu,  3 Oct 2019 13:33:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1176E9D1
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C106718C8933
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:08 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 312E95D9DC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:33:08 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  3 Oct 2019 16:33:02 +0300
Message-Id: <20191003133305.12645-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 03 Oct 2019 13:33:08 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH v2 0/3] Get ready for
 v0.3 release
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

djEgLT4gdjI6CiAtIE1vcmUgaW5mb3JtYXRpb24gaW4gZ2l0aWdub3JlIHBhdGNoIGNvbW1pdCBs
b2cgKEZyZWRpYW5vKQogLSBEcm9wcGVkIGEgLnNwZWMgcGF0Y2ggYWRkaW5nIEJ1aWxkUmVxdWly
ZXMgYXV0b2NvbmYgKEZyZWRpYW5vKQoKVXJpIEx1YmxpbiAoMyk6CiAgZ2l0aWdub3JlOiBpZ25v
cmUgdGFyLnh6CiAgQWRkIGEgbWFuIHBhZ2UKICBQcmVwYXJlIGZvciB2MC4zIHJlbGVhc2UKCiAu
Z2l0aWdub3JlICAgICAgICAgICAgICAgICAgICB8ICAxICsKIE1ha2VmaWxlLmFtICAgICAgICAg
ICAgICAgICAgIHwgIDIgKwogTkVXUyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxNyArKysr
KysrKwogY29uZmlndXJlLmFjICAgICAgICAgICAgICAgICAgfCAgMiArLQogc3BpY2Utc3RyZWFt
aW5nLWFnZW50LjEgICAgICAgfCA3OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwogc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4gfCAgNCArKwogNiBmaWxlcyBjaGFuZ2Vk
LCAxMDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNw
aWNlLXN0cmVhbWluZy1hZ2VudC4xCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
