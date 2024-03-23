Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E980D889834
	for <lists+spice-devel@lfdr.de>; Mon, 25 Mar 2024 10:31:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F3B10E3D7;
	Mon, 25 Mar 2024 09:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=proton.me header.i=@proton.me header.b="VJyE1WgV";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB8F10E8B2
 for <spice-devel@lists.freedesktop.org>; Sat, 23 Mar 2024 17:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=protonmail; t=1711213803; x=1711473003;
 bh=ryKEviaNredmFQJXopu4Jc2HY3PQIcS9VfGWBGjlvZA=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=VJyE1WgVuU7MIE3CEnOIUmFtVRHNODbyiBXaY418HHcgeVvcLlGbs0zZU+n4RpsEk
 5qhms1CxbtFiJ4jT3g/GYi0otSAEVmK9CEw+eFzCbUUgZuI51uFFu6KEOLZ4k99Pev
 WcEFb/3dNqPK9Rwwtfss4uosEuzIbAhaQagA61bl/3URo1vemCPOmIYgYB/NMoqhgv
 L1mDedmRgv3eKzbD0uCq3A8mnT4X1erviK7jJKAxuFWw0aOl7LEySo34Eq0N+0e3fh
 kcfMFqrQ26HK1giSHZBIQ4Uhf7Mlce+fujKvdBvzkZEgAgv+B9eYWRJbmrZ6FDcza2
 ljzay5ec9symQ==
Date: Sat, 23 Mar 2024 17:09:50 +0000
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: presi300work <presi300work@proton.me>
Subject: The OSX Spice client is in a horrible state.
Message-ID: <886Bd_iZ_IAFax3kBixdEnBZlHJ27EU9hxVi4MvWzxMUUyBwMuwSJbEuW3t32uXgpUUf0H_-VeBMQKnF2gSMN82kbA1-9Lkxqqv2n0HJuYc=@proton.me>
Feedback-ID: 102926166:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_iCSa2G4fCdnUUTwOhaBr6h0En0y77k8JohzNOkg"
X-Mailman-Approved-At: Mon, 25 Mar 2024 09:31:16 +0000
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

--b1_iCSa2G4fCdnUUTwOhaBr6h0En0y77k8JohzNOkg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SSBhbSBzb3JyeSBpZiB0aGlzIHNvdW5kcyBhIGJpdCBydWRlLCBidXQgaXQgcmVhbGx5IGlzIGlu
IGEgaG9ycmlibGUgc3RhdGUuIEl0J3MgVUkgaXMgb2xkIGFuZCBzbG93LCBpdCBkb2Vzbid0IHVz
ZSB0aGUgZ2xvYmFsIG1lbnUgc3lzdGVtIGFuZCBpdCBsZWFrcyBtZW1vcnkgYWxsIG92ZXIgdGhl
IHBsYWNlLiBJJ20gc2VuZGluZyB0aGlzIGUtbWFpbCB3aXRoIHRoZSBob3BlIG9mIHNvbWVvbmUg
c2VlaW5nIGl0IGFuZCBlaXRoZXIgdGFraW5nIGEgY2xvc2VyIGxvb2sgYXQgdGhlIE9TWCBzcGlj
ZSBjbGllbnQgb3IgZ2V0dGluZyBiYWNrIHRvIG1lIHRvIGFzayBmb3IgbW9yZSBkZXRhaWxzLgoK
QWx0ZXJuYXRpdmVseSwgaWYgaXQncyBubyBsb25nZXIgc3VwcG9ydGVkLCBJIHJlcXVlc3QgdGhh
dCBzb21lIHNvcnQgb2YgaW5kaWNhdGlvbiBiZSBwdXQgYWJvdXQgaXQgb24gdGhlIHNwaWNlIHdl
YnNpdGUuCgotIEtpbmQgcmVnYXJkcywgcHJlc2kzMDAu

--b1_iCSa2G4fCdnUUTwOhaBr6h0En0y77k8JohzNOkg
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwg
MjU1KTsiPkkgYW0gc29ycnkgaWYgdGhpcyBzb3VuZHMgYSBiaXQgcnVkZSwgYnV0IGl0IHJlYWxs
eSBpcyBpbiBhIGhvcnJpYmxlIHN0YXRlLiBJdCdzIFVJIGlzIG9sZCBhbmQgc2xvdywgaXQgZG9l
c24ndCB1c2UgdGhlIGdsb2JhbCBtZW51IHN5c3RlbSBhbmQgaXQgbGVha3MgbWVtb3J5IGFsbCBv
dmVyIHRoZSBwbGFjZS4gSSdtIHNlbmRpbmcgdGhpcyBlLW1haWwgd2l0aCB0aGUgaG9wZSBvZiBz
b21lb25lIHNlZWluZyBpdCBhbmQgZWl0aGVyIHRha2luZyBhIGNsb3NlciBsb29rIGF0IHRoZSBP
U1ggc3BpY2UgY2xpZW50IG9yIGdldHRpbmcgYmFjayB0byBtZSB0byBhc2sgZm9yIG1vcmUgZGV0
YWlscy48YnI+PC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlm
OyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPjxicj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTog
QXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgY29sb3I6IHJnYigwLCAwLCAwKTsg
YmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+QWx0ZXJuYXRpdmVseSwgaWYg
aXQncyBubyBsb25nZXIgc3VwcG9ydGVkLCBJIHJlcXVlc3QgdGhhdCBzb21lIHNvcnQgb2YgaW5k
aWNhdGlvbiBiZSBwdXQgYWJvdXQgaXQgb24gdGhlIHNwaWNlIHdlYnNpdGUuPGJyPjwvZGl2Pjxk
aXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4
OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1
NSk7Ij48c3Bhbj48YnI+PC9zcGFuPjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlh
bCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNr
Z3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1NSk7Ij48c3Bhbj48YnI+PC9zcGFuPjwvZGl2
PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
NHB4OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUs
IDI1NSk7Ij48c3Bhbj48YnI+PC9zcGFuPjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBjb2xvcjogcmdiKDAsIDAsIDApOyBi
YWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1NSk7Ij48c3Bhbj4tIEtpbmQgcmVnYXJk
cywgcHJlc2kzMDAuPGJyPjwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJp
YWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgY29sb3I6IHJnYigwLCAwLCAwKTsgYmFj
a2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+PGJyPjwvZGl2Pg==


--b1_iCSa2G4fCdnUUTwOhaBr6h0En0y77k8JohzNOkg--

