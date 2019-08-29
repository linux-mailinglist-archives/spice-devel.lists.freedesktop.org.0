Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BB8A1C49
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 16:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101276E0C5;
	Thu, 29 Aug 2019 14:03:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4796E6E0C5
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 14:03:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6F9859455
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 14:03:17 +0000 (UTC)
Received: from [10.97.116.14] (ovpn-116-14.gru2.redhat.com [10.97.116.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0B88A19C4F;
 Thu, 29 Aug 2019 14:03:16 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190829040412.4648-1-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=etrunko@redhat.com; prefer-encrypt=mutual; keydata=
 xsFNBFcWiacBEAC5VA9Ib6b8n6f0VVZyIJlwSjXhDHD6LwOt9f033cjQuipgj+fD13vjIVdc
 NjEaV7KX+dyBwXfno01tVGm8dQVpMf5zJgNXQlWi/SxWIcFs0wsIQqPHvsbTxVGaXd7ezHuX
 3vOO4UqEYZX+m85uJXQq+bD33Amsdpn9k3fh3n3+mow9roDgNa3WxEVzWG2CAfPYlblYeKYK
 LWDCQlrzK7I++/KvU0cBUm3nNO6UiuZyk9zwuB3HOpIoxMvxfM74c71CmqqQw7/0Qr/nmQI1
 PX2zMb6rjhVGsKwjrqrqZdfP/MJYSM/EF0acGfB7KsXeLUd+J5bTQBBuoa1KrzOJ8YrdXnWF
 Y0NOzrKEapETaQ0G2b+fRR2Yb4vLZhF5oitoGaC3SERDxsb7GoIGpRYp464aFcHrj77Cy/zp
 Pgx4KoSGZY9JD2k+8Si/FVfPy45WMIkT8myHP12y23ROQoXXBBHwP60rs71xhJBP/5/lorCI
 2Ui6oOLAOwstKbsApTvvwgpTCRrxCM9dSiHjc31kwsrUfAc42JAVtzlcLYvgW+LpTAzCVxg0
 zhGExEfy0+yfjQDBwAHfBQ/GIxhJsqwqdCANFG3FI8NmxVgUSXmL19S9CnTBtV/FC31uSI7V
 lgXkUNxv+rP/vqBl9/pARYPmGQJR/O/zkQQ+Qv2y3tlny1WtxQARAQABzSlFZHVhcmRvIExp
 bWEgKEV0cnVua28pIDxlbGltYUByZWRoYXQuY29tPsLBkQQTAQgAOwIbAwULCQgHAgYVCAkK
 CwIEFgIDAQIeAQIXgBYhBOMab6D/hPkBAgGaE2Y46qxX4cEwBQJc5bOtAhkBAAoJEGY46qxX
 4cEw8AcQAKe1VK2gJMUwCMBnaPaZsxTZxWa69/MvG9yzdiKZ9wJjxKkedC7h9L6QvNqFxTmy
 0Pvt2+0bG7yq9u6Z2FQYxYcioYMAF9LnpjtLUmoGjBeraqYzKoaPsAUgoqdSKIOefo9gKWmS
 WrzrOHMj+xhQLITC1O/kuRfQfKF+NdeY1sOer4QZj4IBpqKzTBQMyVtCfo1EH0IqpGZdFT0i
 AMtrC5Hkv2rQJ+J5zF1+FNj/n2Q6Ke39tyRxIbaW7nBYhxrbuzix7tw5Q9PVmWHmysDAkZCm
 cIeITRi4SnvZp9oCCqjfmvT+Ul3+40FhohYBTFEfhcgynOnGOpmes9kSwx9c0GbZUMk35OHE
 tGUI9ku7JsMRvr3HjKPUiNNtyBje2ci1DRvpsIEcwVZ+G3WTOc9uxm2X5wMLlygOvgzKEUzi
 7XBjF8EXhq+eU07z03XJKby1KMvjmwcwksIeSe35b3mkvSTxMAYb8MVjA9F9E3czdrRTtnMu
 /7KVO94N8NljRjehZ289iu7fBfsDInd3WX6ny55OuKx4S5mAx4kEURe/yHgdazW003M898ec
 W7qVibJMZmb9pulYOowShLs84XZHeHldSDc1uybWZYYN/yEJ31E0NDuMsZw3CzCG2d4Wf9VO
 bUlF4+dBOECOunJvukp0XkqGHa3Cc9oWEs4DCprDy/2ZzsFNBFcWiacBEAC0oWsGn+ChNPoD
 jCAIbpNPyPuuAV3eveyv3sm6dFBtyZ96ww95ukDFoTQe+UQIRcK8adpd+58e10EPTSN3KpLi
 nQkIcBJicWFntl/Z6IywrgTVhn617erf5mjRJJX70ABAb7RJITli15ST9WIxSRHLqmrAwmHr
 ZC8Zpa1k4b0Z4f4IVeVkVOYwYCzx6NhX4khyVHjahRfyvbe7sUZijq0hq8WpObn456AUcPyC
 XLuslIMPf8i3Zj/vzQQUuLGnxZ2TnTEwATWF1xXMx4f2TZYWQc8ayF+tyG2jiPoy1efVGtay
 XkjgB3kfbXa5R9pfVlkIVDk3Xs8ahiSJtdACp0GWpCFpcu0r749Z+LGULBfVYj7cqdUG/iiM
 fVyhA5/AvyAO1B4F9F6KgN2J9LttN5RJ2UctaNy3oJUN2AoAcL22P6u0lhNF+ewL6o8Qx3dM
 41p4p8k9fjCqEpYLTMRJnmDNstFFtVd4qlIJnh7pqs2ouq7L/qQBrTmoXdtLLggHufSzma3M
 0gQKYtnzL/3xVY7jxjqxRgFJ0YKeOTpk6EytdaPXfD5rUjCX1P8+MysMDLvrjiDUiAmPg2a0
 T1vLe15PFxmEYL5QyQXaaIEl+PuykZjx/+gNrna1z/guQrnFiA/dGJOGDqd39/qCevGzcIZf
 UddKLXPKAm91yReSW2dMOwARAQABwsFfBBgBCAAJBQJXFomnAhsMAAoJEGY46qxX4cEwIhYQ
 AIP/MByYqJnrQeVaHuDWDvDuEp4JvoZVzvcmDIzrG5oSpw6GBM9ziiL3UlUIBPPjKui26CCn
 iIH8MdiL37IHtsCBZjQsrgMKrTPLlFFqV/HQUZR+0MyzLnrF/K45xOfJJLe65aL6RpCCFd7G
 ZEHOlfYEOSFmppeUlM3dsk2FIaULscnaL/SV0JaazRSlSrHbbGYaPMuUTvrgJO1Cko1Q4Zg/
 ztMxCKxNC9nw612zhQoPvlBCGzhjVtY0SeX8+qXd3fBdce5+fBMxavm5wfd4MDGvxn/jG2Cl
 qutOJRozmDbgRL1Gwhxs/Xy29IZvhxJY6LJ27XU6IfyPXWP+eBoxDmG6+/w30wtttpstQoqZ
 j9Pd0jqsCXanE4Q9meVXuXvUopIf1i2ysA/YuPABdTn2WlRmdFGQYbH42tV1Kjw+jW80VChN
 lUQCRQjDNVt0zAfTbKfq6leuOul/vwHmQK/NSAGu+P9adtuo98ZbsOEt/Yh4gu1lM8nIcZZM
 kY1xkV/w2/bWjgN623Yg6PECD3RfrU/puyOGxb1rBB7jhd7U+Oo7WH+X4C8ZHQmepS7/Q8F/
 KMcA/yvCWFGiLORJN3Zp6dOAWi6+JpxqSIYwsPLApHzorowIxzQykPWdjmZezO0km2p1zBgX
 6IfkTjG7nZWOduofQWKmvTyKPLm1M5t/i+nX
Organization: Red Hat
Message-ID: <782c7f60-aa94-1c17-001e-b5843dc93965@redhat.com>
Date: Thu, 29 Aug 2019 11:03:16 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829040412.4648-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 29 Aug 2019 14:03:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] build: Fix compatibility with
 Meson 0.49
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

T24gOC8yOS8xOSAxOjA0IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhlICJpbnN0YWxs
IiBhcmd1bWVudCBmb3IgY29uZmlndXJlX2ZpbGUgaXMgYXZhaWxhYmxlIHNpbmNlIDAuNTAuCj4g
SG93ZXZlciB0aGlzIGlzIGFscmVhZHkgImZhbHNlIiBpZiAiaW5zdGFsbF9kaXIiIGlzIG5vdCBw
cm92aWRlZC4KPiAKPiBVcGRhdGUgYWxzbyBzcGljZS1jb21tb24gc3VibW9kdWxlIHRvIGltcG9y
dCBhIHNpbWlsYXIgZml4IGZvcgo+IHNwaWNlLWNvbW1vbiBtb2R1bGUuIFRoaXMgYnJpbmdzIGlu
IHRoZSBmb2xsb3dpbmcgY2hhbmdlczoKPiAKPiBGcmVkaWFubyBaaWdsaW8gKDEwKToKPiAgICAg
ICBnaXRpZ25vcmU6IElnbm9yZSBhdXRvIGdlbmVyYXRlZCBnZW5lcmF0ZWRfbWVzc2FnZXMuaCBm
aWxlCj4gICAgICAgRG8gbm90IGNoZWNrIGZvciBIQVZFX0NPTkZJR19ICj4gICAgICAgYnVpbGQ6
IFJlbW92ZSB1bnVzZWQgZ2l0LXZlcnNpb24tZ2VuIGZpbGUKPiAgICAgICByZWNvcmRlcjogVXBk
YXRlCj4gICAgICAgYnVpbGQ6IERpc2FibGUgQ2VsdCBzdXBwb3J0IGJ5IGRlZmF1bHQKPiAgICAg
ICBjb2RlZ2VuOiBVc2UgaGFzX2VuZF9hdHRyIGluc3RlYWQgb2YgaGFzX2F0dHIoImVuZCIpCj4g
ICAgICAgY29kZWdlbjogRXhpdCB3aXRoIGVycm9yIG9uIGVycm9yIGdlbmVyYXRpbmcgQyBzdHJ1
Y3R1cmVzCj4gICAgICAgcHJvdG9jb2w6IFJlbW92ZWQgdW5uZWVkZWQgdHlwZSBzcGVjaWZpY2F0
aW9ucwo+ICAgICAgIGNvZGVnZW46IEFkZCBhIGNoZWNrIGZvciBDIHN0cnVjdHVyZSBmaWVsZHMK
PiAgICAgICBtZXNvbjogUmVtb3ZlICJpbnN0YWxsIiBhcmd1bWVudCBmcm9tIGNvbmZpZ3VyZV9m
aWxlCj4gCj4gVXJpIEx1YmxpbiAoMik6Cj4gICAgICAgcHR5cGVzLnB5OiByZW1vdmUgdXNlbGVz
cyBjb25kaXRpb24gbWVtYmVyICE9IE5vbmUKPiAgICAgICB0ZXN0LW1hcnNoYWxsZXJzLnByb3Rv
OiBBcnJheU1lc3NhZ2U6IG1ha2Ugc3BhY2UgZm9yIG5hbWUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgbWVzb24uYnVpbGQg
ICAgICAgICAgICAgIHwgMSAtCj4gIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbiB8IDIgKy0KPiAg
MiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZAo+IGluZGV4IDA3ZGJiNzAxLi4xNzFh
M2Y2NyAxMDA2NDQKPiAtLS0gYS9tZXNvbi5idWlsZAo+ICsrKyBiL21lc29uLmJ1aWxkCj4gQEAg
LTM2NSw3ICszNjUsNiBAQCBmb3JlYWNoIGtleSwgdmFsdWUgOiBjb25maWdfZGF0YQo+ICBlbmRm
b3JlYWNoCj4gIAo+ICBjb25maWd1cmVfZmlsZShvdXRwdXQgOiAnY29uZmlnLmgnLAo+IC0gICAg
ICAgICAgICAgICBpbnN0YWxsIDogZmFsc2UsCj4gICAgICAgICAgICAgICAgIGNvbmZpZ3VyYXRp
b24gOiBzcGljZV9ndGtfY29uZmlnX2RhdGEpCj4gIAo+ICAjCj4gZGlmZiAtLWdpdCBhL3N1YnBy
b2plY3RzL3NwaWNlLWNvbW1vbiBiL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbgo+IGluZGV4IDVi
Y2ZhNzExLi40NzI3YzE5ZCAxNjAwMDAKPiAtLS0gYS9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24K
PiArKysgYi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KPiBAQCAtMSArMSBAQAo+IC1TdWJwcm9q
ZWN0IGNvbW1pdCA1YmNmYTcxMWQ5MDgzOWM3YzRjNTAzMTBkYjY3ZjBkNTkxMmEzODI0Cj4gK1N1
YnByb2plY3QgY29tbWl0IDQ3MjdjMTlkMzZiMzMwNzE5Mjg1MDBhZGFhODMyZWNlZjZiZGQ5NDIK
PiAKQWNrZWQtYnk6IEVkdWFyZG8gTGltYSAoRXRydW5rbykgPGV0cnVua29AcmVkaGF0LmNvbT4K
Ci0tIApFZHVhcmRvIGRlIEJhcnJvcyBMaW1hIChFdHJ1bmtvKQpTb2Z0d2FyZSBFbmdpbmVlciAt
IFJlZCBIYXQKZXRydW5rb0ByZWRoYXQuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
