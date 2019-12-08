Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2610111621F
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C4F6E0D4;
	Sun,  8 Dec 2019 13:57:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C596E03E
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:56 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t2so13092961wrr.1
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ib4U6vhSsvlZX/AqgyjU0sFAtYFa1Kfy3+YMUHH798o=;
 b=jGFVnDh6CGHmQ3Eh5cmErI5VuE/8Qm2oLLek1KtxxqWnVH8b6rXBHIx00PwLuAYaE2
 qmJ7fbDU8aVtJliJU+atnWt7cX1ZMZSyaGDrlwwi7A0iTFlmH7c6pc9i0nv0mOD7KHO0
 TkHfHhjxbrGeq3RKf//4m3/IHoqLySI2FrJ1p5Lvv0thALDmTkKvBP2cLW2zpufnJiDc
 mwiUuaADZmrM8rjEP6t8tpS0Ba7VQuXQlhuedTOxnI2Tnl3cb9gEm2s0TyOrXXXNpYej
 dhN94eonnpcdY9Hz7vroHc3Y5bJF+SUtgAxMdZk3X7i5Xhjj64iLHAh4TjLuJrPKR70/
 Pzrw==
X-Gm-Message-State: APjAAAUuNwdNPFg8N06nGDsdnx3wC+QA5ZirQ6LBMkmlpqkk48QylQPO
 hSSTt6WQz5tTURqvl+Ry5+7eIUfGTuQfoA==
X-Google-Smtp-Source: APXvYqxalTnd/LJfpN9jZsiVnv/sA44qcT3rQTA8lrst65lbsFFArGGvp/dEw01RsEKtuEh0FfAgfA==
X-Received: by 2002:adf:f244:: with SMTP id b4mr25470746wrp.88.1575813474786; 
 Sun, 08 Dec 2019 05:57:54 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:54 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:13 +0200
Message-Id: <20191208140319.22172-4-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ib4U6vhSsvlZX/AqgyjU0sFAtYFa1Kfy3+YMUHH798o=;
 b=ePDaXU0P9Uh5IrXMvHQHBFL0OfR9Y6tJa7u7wdNXVTyXTue3jYAJ7crBLKll+dOcye
 +ZIHs8iFf4GHHXTSc4UVtKHa41q/6ppZOBx9J29rN4i6iaqON0K+PxO6NlOEDGFdzpsf
 CkefMBbZoVwb9mjIHg4ZK9+DjPdUZSj9dAHa0CHRtgLvgwJdkEBhtN9zOhDlytalcLBE
 2VQrsOajkaxruhJNyMYW+HfYtSlsLg/W4ujzQIC8IgJVDdslHnhQ2s0sg2GuJjkVaV+n
 sjZlvCZsxI2N2Iy6F4FFXGpC0FiIZSaIOPZfY8uobAYo1GkGl0e/EelJigMYIJBaY4T0
 /A0g==
Subject: [Spice-devel] [PATCH shared-cd v1 3/9] Add --spice-share-cd command
 line option
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
Cc: Yan Vugenfirer <yan@daynix.com>, Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3NwaWNlLW9wdGlvbi5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utb3B0aW9u
LmMgYi9zcmMvc3BpY2Utb3B0aW9uLmMKaW5kZXggOGM0ZTcwNy4uNjIzN2JjOSAxMDA2NDQKLS0t
IGEvc3JjL3NwaWNlLW9wdGlvbi5jCisrKyBiL3NyYy9zcGljZS1vcHRpb24uYwpAQCAtMzksNiAr
MzksNyBAQCBzdGF0aWMgZ2ludCBjYWNoZV9zaXplID0gMDsKIHN0YXRpYyBnaW50IGdsel93aW5k
b3dfc2l6ZSA9IDA7CiBzdGF0aWMgZ2NoYXIgKnNlY3VyZV9jaGFubmVscyA9IE5VTEw7CiBzdGF0
aWMgZ2NoYXIgKnNoYXJlZF9kaXIgPSBOVUxMOworc3RhdGljIGdjaGFyICoqY2Rfc2hhcmVfZmls
ZXMgPSBOVUxMOwogc3RhdGljIFNwaWNlSW1hZ2VDb21wcmVzc2lvbiBwcmVmZXJyZWRfY29tcHJl
c3Npb24gPSBTUElDRV9JTUFHRV9DT01QUkVTU0lPTl9JTlZBTElEOwogCiBHX0dOVUNfTk9SRVRV
Uk4KQEAgLTE4Myw2ICsxODQsOCBAQCBHT3B0aW9uR3JvdXAqIHNwaWNlX2dldF9vcHRpb25fZ3Jv
dXAodm9pZCkKICAgICAgICAgICBOXygiRmlsdGVyIHNlbGVjdGluZyBVU0IgZGV2aWNlcyB0byBi
ZSBhdXRvLXJlZGlyZWN0ZWQgd2hlbiBwbHVnZ2VkIGluIiksIE5fKCI8ZmlsdGVyLXN0cmluZz4i
KSB9LAogICAgICAgICB7ICJzcGljZS11c2JyZWRpci1yZWRpcmVjdC1vbi1jb25uZWN0IiwgJ1ww
JywgMCwgR19PUFRJT05fQVJHX1NUUklORywgJnVzYnJlZGlyX3JlZGlyZWN0X29uX2Nvbm5lY3Qs
CiAgICAgICAgICAgTl8oIkZpbHRlciBzZWxlY3RpbmcgVVNCIGRldmljZXMgdG8gcmVkaXJlY3Qg
b24gY29ubmVjdCIpLCBOXygiPGZpbHRlci1zdHJpbmc+IikgfSwKKyAgICAgICAgeyAic3BpY2Ut
c2hhcmUtY2QiLCAnXDAnLCAwLCBHX09QVElPTl9BUkdfU1RSSU5HX0FSUkFZLCAmY2Rfc2hhcmVf
ZmlsZXMsCisgICAgICAgICAgTl8oIk5hbWUgb2YgSVNPIGZpbGUgb3IgQ0QvRFZEIGRldmljZSB0
byBzaGFyZSIpLCBOXygiPGZpbGVuYW1lPiAocmVwZWF0IGFsbG93ZWQpIikgfSwKICAgICAgICAg
eyAic3BpY2UtY2FjaGUtc2l6ZSIsICdcMCcsIDAsIEdfT1BUSU9OX0FSR19JTlQsICZjYWNoZV9z
aXplLAogICAgICAgICAgIE5fKCJJbWFnZSBjYWNoZSBzaXplIChkZXByZWNhdGVkKSIpLCBOXygi
PGJ5dGVzPiIpIH0sCiAgICAgICAgIHsgInNwaWNlLWdsei13aW5kb3ctc2l6ZSIsICdcMCcsIDAs
IEdfT1BUSU9OX0FSR19JTlQsICZnbHpfd2luZG93X3NpemUsCkBAIC0yODgsNiArMjkxLDMxIEBA
IHZvaWQgc3BpY2Vfc2V0X3Nlc3Npb25fb3B0aW9uKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKICAg
ICAgICAgICAgICAgICAgICAgICAgICB1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LCBOVUxM
KTsKICAgICAgICAgfQogICAgIH0KKyAgICBpZiAoY2Rfc2hhcmVfZmlsZXMpIHsKKyAgICAgICAg
U3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0KKyAgICAgICAgICAgICAgICBnZXRfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vzc2lvbiwgIi0tc3BpY2Utc2hhcmUtY2QiKTsKKyAgICAg
ICAgaWYgKG0pIHsKKyAgICAgICAgICAgIGdjaGFyICoqbmFtZSA9IGNkX3NoYXJlX2ZpbGVzOwor
ICAgICAgICAgICAgR0Vycm9yICplcnIgPSBOVUxMOworICAgICAgICAgICAgZ2Jvb2xlYW4gcmM7
CisKKyAgICAgICAgICAgIHdoaWxlIChuYW1lICYmICpuYW1lKSB7CisgICAgICAgICAgICAgICAg
cmMgPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY3JlYXRlX3NoYXJlZF9jZF9kZXZpY2UobSwg
Km5hbWUsICZlcnIpOworICAgICAgICAgICAgICAgIGlmICghcmMpIHsKKyAgICAgICAgICAgICAg
ICAgICAgaWYgKGVyciA9PSBOVUxMKSB7CisgICAgICAgICAgICAgICAgICAgICAgICBnX3dhcm5p
bmcoIkZhaWxlZCB0byBjcmVhdGUgc2hhcmVkIENEIGRldmljZSAlcyIsICpuYW1lKTsKKyAgICAg
ICAgICAgICAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgICAgICAgICAgICAgIGdfd2Fybmlu
ZygiRmFpbGVkIHRvIGNyZWF0ZSBzaGFyZWQgQ0QgZGV2aWNlICVzOiAlcyIsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgKm5hbWUsIGVyci0+bWVzc2FnZSk7CisgICAgICAgICAg
ICAgICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOworICAgICAgICAgICAgICAgICAgICB9
CisgICAgICAgICAgICAgICAgfQorICAgICAgICAgICAgICAgIG5hbWUrKzsKKyAgICAgICAgICAg
IH0KKyAgICAgICAgfQorICAgICAgICBnX3N0cmZyZWV2KGNkX3NoYXJlX2ZpbGVzKTsKKyAgICAg
ICAgY2Rfc2hhcmVfZmlsZXMgPSBOVUxMOworICAgIH0KICAgICBpZiAoZGlzYWJsZV91c2JyZWRp
cikKICAgICAgICAgZ19vYmplY3Rfc2V0KHNlc3Npb24sICJlbmFibGUtdXNicmVkaXIiLCBGQUxT
RSwgTlVMTCk7CiAgICAgaWYgKGRpc2FibGVfYXVkaW8pCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
