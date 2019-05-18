Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E6022225
	for <lists+spice-devel@lfdr.de>; Sat, 18 May 2019 09:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C0089243;
	Sat, 18 May 2019 07:55:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95E489243
 for <spice-devel@lists.freedesktop.org>; Sat, 18 May 2019 07:55:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2ED9C64123
 for <spice-devel@lists.freedesktop.org>; Sat, 18 May 2019 07:55:55 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1355D60F9C;
 Sat, 18 May 2019 07:55:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 18 May 2019 08:55:49 +0100
Message-Id: <20190518075549.7003-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Sat, 18 May 2019 07:55:55 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] spice-experimental: Remove
 obsolete file
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

VGhpcyBoZWFkZXIgd2FzIHJlbW92ZWQgaW4gMjAxNCAoM2M2YjRlNDE1KSBhcyBkZXByZWNhdGVk
IGFuZCBhZGRlZCBhZ2FpbgppbiAyMDE1ICgyZTg4ZWI3MDUpIGFzIGNhdXNpbmcgc29tZSBpc3N1
ZSB3aXRoIGZvcm1lciBRZW11IHZlcnNpb25zLgpBZnRlciA0IHllYXJzIHJlbW92ZSBhZ2Fpbiwg
bm93IHRoZXJlIHNob3VsZCBub3QgYmUgYW55IHVzYWdlIG9mIGl0LgoKU2lnbmVkLW9mZi1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL01ha2VmaWxl
LmFtICAgICAgICAgIHwgIDEgLQogc2VydmVyL21lc29uLmJ1aWxkICAgICAgICAgIHwgIDEgLQog
c2VydmVyL3NwaWNlLWV4cGVyaW1lbnRhbC5oIHwgMjQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAzIGZpbGVzIGNoYW5nZWQsIDI2IGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IHNl
cnZlci9zcGljZS1leHBlcmltZW50YWwuaAoKQ0kgcmVzdWx0cyBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS9waXBlbGluZXMvMzc2MDcKCmRpZmYgLS1naXQgYS9z
ZXJ2ZXIvTWFrZWZpbGUuYW0gYi9zZXJ2ZXIvTWFrZWZpbGUuYW0KaW5kZXggN2YyNjA2MTIuLjIw
YWRmNjVmIDEwMDY0NAotLS0gYS9zZXJ2ZXIvTWFrZWZpbGUuYW0KKysrIGIvc2VydmVyL01ha2Vm
aWxlLmFtCkBAIC02NCw3ICs2NCw2IEBAIGxpYnNwaWNlX3NlcnZlcmluY2x1ZGVfSEVBREVSUyA9
CQlcCiAJc3BpY2UtYXVkaW8uaAkJCQlcCiAJc3BpY2UtY2hhci5oCQkJCVwKIAlzcGljZS1jb3Jl
LmgJCQkJXAotCXNwaWNlLWV4cGVyaW1lbnRhbC5oCQkJXAogCXNwaWNlLWlucHV0LmgJCQkJXAog
CXNwaWNlLW1pZ3JhdGlvbi5oCQkJXAogCXNwaWNlLXF4bC5oCQkJCVwKZGlmZiAtLWdpdCBhL3Nl
cnZlci9tZXNvbi5idWlsZCBiL3NlcnZlci9tZXNvbi5idWlsZAppbmRleCAzNGQ4ZWVmMS4uMmNh
NDNlOWMgMTAwNjQ0Ci0tLSBhL3NlcnZlci9tZXNvbi5idWlsZAorKysgYi9zZXJ2ZXIvbWVzb24u
YnVpbGQKQEAgLTI2LDcgKzI2LDYgQEAgc3BpY2Vfc2VydmVyX2hlYWRlcnMgPSBbCiAgICdzcGlj
ZS1hdWRpby5oJywKICAgJ3NwaWNlLWNoYXIuaCcsCiAgICdzcGljZS1jb3JlLmgnLAotICAnc3Bp
Y2UtZXhwZXJpbWVudGFsLmgnLAogICAnc3BpY2UtaW5wdXQuaCcsCiAgICdzcGljZS1taWdyYXRp
b24uaCcsCiAgICdzcGljZS1xeGwuaCcsCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2UtZXhwZXJp
bWVudGFsLmggYi9zZXJ2ZXIvc3BpY2UtZXhwZXJpbWVudGFsLmgKZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDU4OWUyOWJmLi4wMDAwMDAwMAotLS0gYS9zZXJ2ZXIvc3BpY2UtZXhwZXJp
bWVudGFsLmgKKysrIC9kZXYvbnVsbApAQCAtMSwyNCArMCwwIEBACi0vKiAtKi0gTW9kZTogQzsg
Yy1iYXNpYy1vZmZzZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6IG5pbCAtKi0gKi8KLS8qCi0gICBD
b3B5cmlnaHQgKEMpIDIwMDktMjAxNSBSZWQgSGF0LCBJbmMuCi0KLSAgIFRoaXMgbGlicmFyeSBp
cyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IKLSAgIG1vZGlm
eSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKLSAg
IExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVp
dGhlcgotICAgdmVyc2lvbiAyLjEgb2YgdGhlIExpY2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikg
YW55IGxhdGVyIHZlcnNpb24uCi0KLSAgIFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0
aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAotICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKLSAgIE1FUkNIQU5UQUJJ
TElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCi0g
ICBMZXNzZXIgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgotCi0gICBZ
b3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwg
UHVibGljCi0gICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8
aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCi0qLwotCi0jaWZuZGVmIFNQSUNFX0VYUEVS
SU1FTlRBTF9IXwotI2RlZmluZSBTUElDRV9FWFBFUklNRU5UQUxfSF8KLQotI3dhcm5pbmcgc3Bp
Y2UtZXhwZXJpbWVudGFsLmggaXMgZGVwcmVjYXRlZAotCi0jZW5kaWYgLyogU1BJQ0VfRVhQRVJJ
TUVOVEFMX0hfICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
