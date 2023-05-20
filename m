Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 902B970AAEE
	for <lists+spice-devel@lfdr.de>; Sat, 20 May 2023 22:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3846410E1A2;
	Sat, 20 May 2023 20:31:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C5210E1A2
 for <spice-devel@lists.freedesktop.org>; Sat, 20 May 2023 20:27:48 +0000 (UTC)
Date: Sat, 20 May 2023 20:27:28 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.b="eTMTSWSH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1684614459; x=1684873659;
 bh=nT1AzwDdAxzzkFYO4cAwf9ZLeNf7z9s7CzOppRBBexc=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=eTMTSWSHUbKxlZINURHwluLRS1ZCeLAwkg16JOEILqkcRYx/ba+g1DIZ1LWmECE9E
 /+v96Cg7OhMhe9myuwCdyjrdjUNOXkTPGvE8wr2KAg5Q8w//yYQCIfqZs2jpj/DO9e
 4xhbOwZBlhLQUHrltN5/y/Ul011yXGcPidE9dRRiGMthxUb8RqJzcM5wt601OAZEQt
 Om9i7+kRpoqI6uHhvgSbf7LUBnWdgFMD2+mupRdymtx0yq0UwjTPRn8ZM7h2dTO8Zc
 OvKqbxdB1gsIKdAcB2ns6rKQJSgdnV4/gjayS2O07T/O4I9MFRvqaAqBTqhuWnvUMn
 Ga7yDh3KxNAAg==
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: J <schnrl@protonmail.com>
Message-ID: <B6iK_fWf6k29gy_UxX4eCdTzgV8_uEuTAVi-mDEji_rn_MFAYNMoK1VJpnpGLnTMKrtxhl96Gp3JmVKygNqW3b1cwqREhiIWn89QEvTw7HM=@protonmail.com>
Feedback-ID: 20396031:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_tiBntzgfn4PXd0fl3DxjnVvVWTUjHLucd2xcOrW6MZ4"
X-Mailman-Approved-At: Sat, 20 May 2023 20:31:12 +0000
Subject: [Spice-devel] [Spice on QEMU] password-secret
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--b1_tiBntzgfn4PXd0fl3DxjnVvVWTUjHLucd2xcOrW6MZ4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGkgdGhlcmUsCkkgaGF2ZSBnb3QgYSBxdWVzdGlvbiBjb25jZXJuaW5nIHRoZSBzcGljZSB0aWNr
ZXRpbmcgZmVhdHVyZSBpbiBRRU1VIHZpcnR1YWwgbWFjaGluZXMuIFRoZSB1c2VyIG1hbnVhbCBv
bmx5IGxpc3RzIHRoZSBvcHRpb24gb2YgcGFzc2luZyB0aGUgcGFzc3dvcmQgZGlyZWN0bHkgd2l0
aCB0aGUgInBhc3N3b3JkPS4uLiIgb3B0aW9uLiBUaGlzIHNlZW1zIHRvIGJlIGluc2VjdXJlIGFu
ZCBxZW11IGdpdmVzIG1lIHRoZSB3YXJuaW5nICJwYXNzd29yZCBpcyBkZXByZWNhdGVkLiB1c2Ug
cGFzc3dvcmQtc2VjcmV0IGluc3RlYWQiLiBXaGVuIEkgc2VhcmNoZWQgdGhlIG1hbiBwYWdlIGZv
ciBzcGljZSB0aWNrZXRpbmcgSSBnb3QgdGhlIGZvbGxvd2luZyByZXN1bHQ6ICJwYXNzd29yZC1z
ZWNyZXQ9PHNlY3JldC1pZD46IFNldCB0aGUgSUQgb2YgdGhlIHNlY3JldCBvYmplY3QgY29udGFp
bmluZyB0aGUgcGFzc3dvcmQgeW91IG5lZWQgdG8gYXV0aGVudGljYXRlLiIuIE5vdyBJIHdvbmRl
ciB3aGF0IHRoaXMgSUQgaXMuIFdoZXJlIGNhbiBJIGZpbmQgaXQ/IEFuZCB3aGF0IGRvIEkgbmVl
ZCB0byBkbyBpbiBvcmRlciB0byBjcmVhdGUgc3VjaCBhIHNlY3JldCBwYXNzd29yZD8KQ2hlZXJz
LApKb2hhbm5lcw==

--b1_tiBntzgfn4PXd0fl3DxjnVvVWTUjHLucd2xcOrW6MZ4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij5IaSB0aGVyZSw8L2Rpdj48ZGl2IHN0eWxlPSJmb250
LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgY29sb3I6IHJnYigw
LCAwLCAwKTsiPkkgaGF2ZSBnb3QgYSBxdWVzdGlvbiBjb25jZXJuaW5nIHRoZSBzcGljZSB0aWNr
ZXRpbmcgZmVhdHVyZSBpbiBRRU1VIHZpcnR1YWwgbWFjaGluZXMuIFRoZSB1c2VyIG1hbnVhbCBv
bmx5IGxpc3RzIHRoZSBvcHRpb24gb2YgcGFzc2luZyB0aGUgcGFzc3dvcmQgZGlyZWN0bHkgd2l0
aCB0aGUgInBhc3N3b3JkPS4uLiIgb3B0aW9uLiBUaGlzIHNlZW1zIHRvIGJlIGluc2VjdXJlIGFu
ZCBxZW11IGdpdmVzIG1lIHRoZSB3YXJuaW5nICJwYXNzd29yZCBpcyBkZXByZWNhdGVkLiB1c2Ug
cGFzc3dvcmQtc2VjcmV0IGluc3RlYWQiLiBXaGVuIEkgc2VhcmNoZWQgdGhlIG1hbiBwYWdlIGZv
ciBzcGljZSB0aWNrZXRpbmcgSSBnb3QgdGhlIGZvbGxvd2luZyByZXN1bHQ6ICJwYXNzd29yZC1z
ZWNyZXQ9Jmx0O3NlY3JldC1pZCZndDs6IDxzcGFuPlNldCB0aGUgSUQgb2YgdGhlIHNlY3JldCBv
YmplY3QgY29udGFpbmluZyB0aGUgcGFzc3dvcmQ8L3NwYW4+PHNwYW4+IHlvdSBuZWVkIHRvIGF1
dGhlbnRpY2F0ZS4iLiBOb3cgSSB3b25kZXIgd2hhdCB0aGlzIElEIGlzLiBXaGVyZSBjYW4gSSBm
aW5kIGl0PyBBbmQgd2hhdCBkbyBJIG5lZWQgdG8gZG8gaW4gb3JkZXIgdG8gY3JlYXRlIHN1Y2gg
YSBzZWNyZXQgcGFzc3dvcmQ/PC9zcGFuPjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+
PHNwYW4+Q2hlZXJzLDwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWws
IHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPjxzcGFu
PkpvaGFubmVzPGJyPjwvc3Bhbj48L2Rpdj4=


--b1_tiBntzgfn4PXd0fl3DxjnVvVWTUjHLucd2xcOrW6MZ4--

