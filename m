Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387029E5F6
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0888999A;
	Tue, 27 Aug 2019 10:43:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A905D8999A
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:43:41 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id d16so2485910wme.2
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 03:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Z0FT7qTk3rh/oFJNFRc/JTLxF9aw2/l1g/A/N2ZWnew=;
 b=JtjDZDFeutLm/Enz8OcHefwSfuHgdUefAMmFcF8d+7vbcvBzEqiEB398+99Y/i6ObQ
 X27y+VDMW+jkzU1FEu3zU4GjKi+fVrO2/8jcOhWsQ2FzgS1fw6svRCOHrzxkbH1btA3g
 Th5jNAYWh7oeXho+wDHrJTDfAh5WxgqHIOZXhHnXDd0VjUgcTKhzZ5q6yTjsaEAQcqgH
 KfRGduj31E6CwpDvUOoggSJeoKjqvYHzcF33zDWM+zxdS/jZmXahpSCGJ8m6xkBjN6J8
 tISDC/fAJ3YJ4x9nzLZ08qEaHT+ixJs7DaSr/xJTLl7UYRFKXAfg1E2oyjU/5mbsDtVz
 VFPg==
X-Gm-Message-State: APjAAAUg63dPSrLTsODJnLVW+ciRREicqTxPiIYCza16jXsBbY+DFoD3
 FrH+O6sqMmCtEowFAssN6y512I5T
X-Google-Smtp-Source: APXvYqyPBiWgyeQdRkaY7vv8tBt7tG3cT7vIwYF2Yb+9zkpCDHLGmyx5GgYhNOuDR3FVNcAHIfASjw==
X-Received: by 2002:a05:600c:2102:: with SMTP id
 u2mr28400142wml.105.1566902619604; 
 Tue, 27 Aug 2019 03:43:39 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:95:eb51:474b:ae6b])
 by smtp.gmail.com with ESMTPSA id d69sm3441948wmd.4.2019.08.27.03.43.38
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:43:38 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-22-fziglio@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190827092246.10276-22-fziglio@redhat.com>
Date: Tue, 27 Aug 2019 12:43:36 +0200
Message-ID: <m1sgpmevmv.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:subject:in-reply-to:date:message-id
 :mime-version;
 bh=Z0FT7qTk3rh/oFJNFRc/JTLxF9aw2/l1g/A/N2ZWnew=;
 b=Mr7eFS1rjJ8WcDcJ/tBOYR5bMX0w26kRamfznqUuyG2D8Yl+Vt6LbPSOFe7n8CFOsQ
 0Mj4TtoHiH5I4MB02OzXT9uilhj6A1PkrSJ9ZX4wHrFJXIV3HQ4ytIX3t1ZkvaDy9PxF
 tCihC1S4bzuvQ/qjethFWz1sHZdEjLILObbu49tyYbW6r0RppUTEg9TTOk2bP6Gi6XgO
 KqfyZj8l+fTHip8JL1+vAYO8J1hX8mu9QUqPGR3T8829Op4jaiRQM/Fe5kMZxeeLxw0+
 Z4Nfie9IyK7dH3j/9eRwHZ1ZBQbLBlr59wiZG/AhIW12vsyNbbSoYDZ64hA1NogZzbAt
 Is2w==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 21/29] CI: Add --werror
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

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+IEdpdmUgZXJyb3JzIG9uIHdhcm5pbmdzLCB3ZSB3
YW50IHRoZSBjb2RlIHRvIGNvbXBpbGUgd2l0aG91dAo+IHdhcm5pbmdzLCBhdCBsZWFzdCB3aXRo
IENJLgoKTG9va3MgZ29vZCB0byBtZSwgYnV0IGZyb20gZXhwZXJpZW5jZSB3aXRoIG90aGVyIHBy
b2plY3RzLApuZXcgY29tcGlsZXIgcmVsZWFzZXMgdGVuZCB0byBhZGQgbmV3IHdhcm5pbmdzIHRo
YXQgd2lsbCBicmVhawp5b3VyIGJ1aWxkcy4gWW91IGRvbid0IGNvbnRyb2wgdGhlIHJlbGVhc2Ug
dGltZWxpbmUgb2YgY29tcGlsZXJzCmluIHlvdXIgQ0kgZW52aXJvbm1lbnQuIFNvIGp1c3QgYmUg
cmVhZHkgdG8gc2NyYW1ibGUtZml4Cm5ldyBjb21waWxlci1pbnRyb2R1Y2VkICJlcnJvcnMiLgoK
Pgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+
IC0tLQo+ICAuZ2l0bGFiLWNpLnltbCB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS8uZ2l0bGFi
LWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gaW5kZXggZmE3MGY3YWQuLjhiY2VmNjVkIDEwMDY0
NAo+IC0tLSBhLy5naXRsYWItY2kueW1sCj4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiBAQCAtMjgs
MTEgKzI4LDExIEBAIGZlZG9yYToKPiAgICBiZWZvcmVfc2NyaXB0Ogo+ICAgICAgLSBkbmYgaW5z
dGFsbCAteSAkREVQU19DT01NT04gJERFUFNfRkVET1JBCj4gICAgICAtIGdpdCBjbG9uZSAke0NJ
X1JFUE9TSVRPUllfVVJML3NwaWNlLWd0ay9zcGljZS1wcm90b2NvbH0KPiAtICAgIC0gbWVzb24g
LS1idWlsZHR5cGU9cmVsZWFzZSBzcGljZS1wcm90b2NvbCBidWlsZC1zcGljZS1wcm90b2NvbCAt
LXByZWZpeD0vdXNyCj4gKyAgICAtIG1lc29uIC0tYnVpbGR0eXBlPXJlbGVhc2Ugc3BpY2UtcHJv
dG9jb2wgYnVpbGQtc3BpY2UtcHJvdG9jb2wgLS1wcmVmaXg9L3VzciAtLXdlcnJvcgo+ICAgICAg
LSBuaW5qYSAtQyBidWlsZC1zcGljZS1wcm90b2NvbCBpbnN0YWxsCj4KPiAgICBzY3JpcHQ6Cj4g
LSAgICAtIG1lc29uIC0tYnVpbGR0eXBlPXJlbGVhc2UgYnVpbGQtZGVmYXVsdAo+ICsgICAgLSBt
ZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkLWRlZmF1bHQgLS13ZXJyb3IKPiAgICAgICMg
TWVzb24gZG9lcyBub3QgdXBkYXRlIHN1Ym1vZHVsZXMgcmVjdXJzaXZlbHkKPiAgICAgIC0gZ2l0
IHN1Ym1vZHVsZSB1cGRhdGUgLS1pbml0IC0tcmVjdXJzaXZlCj4gICAgICAjIHRoaXMgZml4IGFu
IGlzc3VlIHdpdGggTWVzb24gZGlzdAo+IEBAIC00Miw3ICs0Miw3IEBAIGZlZG9yYToKPiAgICAg
IC0gbmluamEgLUMgYnVpbGQtZGVmYXVsdAo+ICAgICAgLSBuaW5qYSAtQyBidWlsZC1kZWZhdWx0
IHRlc3QKPgo+IC0gICAgLSBtZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkLWZlYXQtZGlz
YWJsZWQgLURhdXRvX2ZlYXR1cmVzPWRpc2FibGVkCj4gKyAgICAtIG1lc29uIC0tYnVpbGR0eXBl
PXJlbGVhc2UgYnVpbGQtZmVhdC1kaXNhYmxlZCAtRGF1dG9fZmVhdHVyZXM9ZGlzYWJsZWQgLS13
ZXJyb3IKPiAgICAgIC0gbmluamEgLUMgYnVpbGQtZmVhdC1kaXNhYmxlZAo+ICAgICAgLSBuaW5q
YSAtQyBidWlsZC1mZWF0LWRpc2FibGVkIHRlc3QKPgo+IEBAIC01OCwxMSArNTgsMTEgQEAgd2lu
ZG93czoKPiAgICAgIC0gZG5mIGluc3RhbGwgLXkgJERFUFNfQ09NTU9OICRERVBTX01JTkdXCj4g
ICAgICAtIGdpdCBjbG9uZSAke0NJX1JFUE9TSVRPUllfVVJML3NwaWNlLWd0ay9zcGljZS1wcm90
b2NvbH0KPiAgICAgIC0gbWtkaXIgc3BpY2UtcHJvdG9jb2wvYnVpbGQtc3BpY2UtcHJvdG9jb2wg
JiYgY2Qgc3BpY2UtcHJvdG9jb2wvYnVpbGQtc3BpY2UtcHJvdG9jb2wKPiAtICAgIC0gbWluZ3c2
NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC0tcHJlZml4PS91c3IKPiArICAgIC0gbWluZ3c2
NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC0tcHJlZml4PS91c3IgLS13ZXJyb3IKPiAgICAg
IC0gbmluamEgaW5zdGFsbAo+Cj4gICAgc2NyaXB0Ogo+ICAgICAgLSBjZCAkQ0lfUFJPSkVDVF9E
SVIKPiAgICAgIC0gbWtkaXIgYnVpbGQtd2luNjQgJiYgY2QgYnVpbGQtd2luNjQKPiAtICAgIC0g
bWluZ3c2NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC1EZ3RrX2RvYz1kaXNhYmxlZAo+ICsg
ICAgLSBtaW5ndzY0LW1lc29uIC0tYnVpbGR0eXBlPXJlbGVhc2UgLURndGtfZG9jPWRpc2FibGVk
IC0td2Vycm9yCj4gICAgICAtIG5pbmphIGluc3RhbGwKCgotLQpDaGVlcnMsCkNocmlzdG9waGUg
ZGUgRGluZWNoaW4gKElSQyBjM2QpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
