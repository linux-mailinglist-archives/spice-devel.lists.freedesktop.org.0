Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 738532E34A6
	for <lists+spice-devel@lfdr.de>; Mon, 28 Dec 2020 08:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAD9899BC;
	Mon, 28 Dec 2020 07:11:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 457 seconds by postgrey-1.36 at gabe;
 Mon, 28 Dec 2020 07:11:23 UTC
Received: from mail.linx-info.com (unknown [121.69.130.50])
 by gabe.freedesktop.org (Postfix) with ESMTP id D322A899BC
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Dec 2020 07:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.linx-info.com (Postfix) with ESMTP id 185B02E400D4
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Dec 2020 15:03:32 +0800 (CST)
X-Virus-Scanned: Debian amavisd-new at linx-info.com
Received: from mail.linx-info.com ([127.0.0.1])
 by localhost (mail.linx-info.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtOGocYZ-fuI for <spice-devel@lists.freedesktop.org>;
 Mon, 28 Dec 2020 15:03:31 +0800 (CST)
Received: from ha.cluster.master1 (unknown [116.169.13.192])
 by mail.linx-info.com (Postfix) with ESMTPSA id 6D8232E4007E
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Dec 2020 15:03:31 +0800 (CST)
To: spice-devel@lists.freedesktop.org
From: "wjduan@linx-info.com" <wjduan@linx-info.com>
Message-ID: <a627c793-7810-34f0-85f2-ef4c5399ab81@linx-info.com>
Date: Mon, 28 Dec 2020 15:03:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Spice-devel] Spice gtk the memory will auto increase
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2UgdXNlIHRoZSBzcGljZS1ndGsgdG8gb3BlbiB2aXJ0dWFsIG1hY2hpbmXCoMKgIGFuZMKgIG1v
dmUgdGhlIHdpbmRvdyBpbiAKdGhlIHZtICzCoCB0aGUgc3BpY3kgcHJvY2VzcydzIG1lbW9yeSB3
aWxsIGF1dG8gaW5jcmVhc2UgYnV0IHN0b3AgbW92ZSAKd2luZG93cyB0aGUgdGhlIG1lbW9yeSB3
aWxsIG5vdCBkZWNyZWFzZQoKCgotLSAK5q615q2m5p2wIO+8miDpmYTliqDkuqflk4Hnu4QKCuWM
l+S6rOWHneaAnei9r+S7tuWbm+W3neWIhuWFrOWPuArmiYvmnLrvvJoxMzg4MDU4ODgxMwrlhazl
j7jlnLDlnYDvvJrmiJDpg73luILmrabkvq/ljLrlpKnlupzlpKfpgZPkuK3mrrU1MzDkuJzmlrnl
uIzmnJvlpKnnpaXlub/lnLpBLTM0MDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbAo=
