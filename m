Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653FD34A453
	for <lists+spice-devel@lfdr.de>; Fri, 26 Mar 2021 10:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7327C6E18E;
	Fri, 26 Mar 2021 09:31:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160E96ED9C;
 Thu, 25 Mar 2021 15:00:10 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1lPRSx-0003iZ-Uo; Thu, 25 Mar 2021 15:00:07 +0000
From: Colin Ian King <colin.king@canonical.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <22ad0b20-b879-bcad-5c94-80c162a9da74@canonical.com>
Date: Thu, 25 Mar 2021 15:00:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Fri, 26 Mar 2021 09:31:04 +0000
Subject: Re: [Spice-devel] drm/ttm: switch to per device LRU lock
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
Cc: David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Huang Rui <ray.huang@amd.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpTdGF0aWMgYW5hbHlzaXMgd2l0aCBDb3Zlcml0eSBpbiBsaW51eC1uZXh0IGhhcyBkZXRl
Y3RlZCBhbiBpc3N1ZSBpbgpkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIHdpdGggdGhlIGZv
bGxvdyBjb21taXQ6Cgpjb21taXQgYTFmMDkxZjhlZjJiNjgwYTUxODRkYjA2NTUyNzYxMjI0N2Ni
NGNhZQpBdXRob3I6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
RGF0ZTogICBUdWUgT2N0IDYgMTc6MjY6NDIgMjAyMCArMDIwMAoKICAgIGRybS90dG06IHN3aXRj
aCB0byBwZXIgZGV2aWNlIExSVSBsb2NrCgogICAgSW5zdGVhZCBvZiBoYXZpbmcgYSBnbG9iYWwg
bG9jayBmb3IgcG90ZW50aWFsbHkgbGVzcyBjb250ZW50aW9uLgoKClRoZSBhbmFseXNpcyBpcyBh
cyBmb2xsb3dzOgoKNjE3IGludCB0dG1fbWVtX2V2aWN0X2ZpcnN0KHN0cnVjdCB0dG1fZGV2aWNl
ICpiZGV2LAo2MTggICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgdHRtX3Jlc291cmNlX21h
bmFnZXIgKm1hbiwKNjE5ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHR0bV9w
bGFjZSAqcGxhY2UsCjYyMCAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB0dG1fb3BlcmF0
aW9uX2N0eCAqY3R4LAo2MjEgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgd3dfYWNxdWly
ZV9jdHggKnRpY2tldCkKNjIyIHsKICAgMS4gYXNzaWduX3plcm86IEFzc2lnbmluZzogYm8gPSBO
VUxMLgoKNjIzICAgICAgICBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvID0gTlVMTCwgKmJ1
c3lfYm8gPSBOVUxMOwo2MjQgICAgICAgIGJvb2wgbG9ja2VkID0gZmFsc2U7CjYyNSAgICAgICAg
dW5zaWduZWQgaTsKNjI2ICAgICAgICBpbnQgcmV0Owo2MjcKCiAgIEV4cGxpY2l0IG51bGwgZGVy
ZWZlcmVuY2VkIChGT1JXQVJEX05VTEwpMi4gdmFyX2RlcmVmX29wOgpEZXJlZmVyZW5jaW5nIG51
bGwgcG9pbnRlciBiby4KCjYyOCAgICAgICAgc3Bpbl9sb2NrKCZiby0+YmRldi0+bHJ1X2xvY2sp
Owo2MjkgICAgICAgIGZvciAoaSA9IDA7IGkgPCBUVE1fTUFYX0JPX1BSSU9SSVRZOyArK2kpIHsK
ClRoZSBzcGluX2xvY2sgb24gYm8gaXMgZGVyZWZlcmVuY2luZyBhIG51bGwgYm8gcG9pbnRlci4K
CkNvbGluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo=
