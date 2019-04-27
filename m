Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DA9B329
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 12:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575908926C;
	Sat, 27 Apr 2019 10:07:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8438926C
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 10:07:17 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id q10so5138314ljc.6
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 03:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=De6BUTn8AYc/Z3ttFDh9y0rzkU5M+44ywZ0ONrBQaVQ=;
 b=OQirF5/OjpEUrDPcHVv/XyAfZtJWQw/DeVQJMhtdTXMmBMdN5SI7M0v0C7PlkV4eND
 EPUa7YGvv0QZhAgwyuzKndxegFbvQVJNDoThh0PRzVSPqkW+QfjpgOtEeFirApNUHTHU
 G+W0TO/WWRcd52sm8AIEDEdch97K3Oyy7K6FrKJmPVwaiDJQpOcWGxiW/jR9L7kGW/hK
 3ECsi8p/GgjpZ5Tfw0wGGMqiBu1LIhG4zFfAa/Jp4f8oGGhko68/SkIM0W5imNDLiIM2
 KJQFUY+cR9IM0x/WHbMtsFFQCa7a4I23FubN1ladIgZhExyLPXE3r9MnkoAGA6yLqpTk
 XoDg==
X-Gm-Message-State: APjAAAUdTL7SdsGRIw2m4stYu631wuMV9P+Ia7Qa9H8r9oJirfQOMrqp
 Rc3ZlAG8ZRavOk4AIMT2XkRNIgqZ
X-Google-Smtp-Source: APXvYqwIHk7Voad04QpO5m72gxNwY61owZtk2hKiVluhMRWf7Qee62IsVG/qxGTAQbJAvKAB0ZvlYg==
X-Received: by 2002:a05:651c:14b:: with SMTP id
 c11mr27283500ljd.185.1556359635874; 
 Sat, 27 Apr 2019 03:07:15 -0700 (PDT)
Received: from kloomba.my.domain ([213.147.222.203])
 by smtp.gmail.com with ESMTPSA id d5sm537183lfn.36.2019.04.27.03.07.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 03:07:14 -0700 (PDT)
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 27 Apr 2019 14:07:01 +0400
Message-Id: <20190427100701.23957-1-bogorodskiy@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=De6BUTn8AYc/Z3ttFDh9y0rzkU5M+44ywZ0ONrBQaVQ=;
 b=V9kg3X5VEwouC448qWNXqvcjDsnTrJlTS/0G0f41WdoN0Yg0ryiu9exdLBTs+AYE1v
 JQz6PNJ2zrFDGDQdPuhyRTHQyz0/DNeIxTIZFfuT/sNKO8s4H1AsMeFQhNPApJ5Lwlos
 bLH7H9WiKyU+0wZKpQNCE5/VgpCHjCs0lU41IWU/DaZlxb9Tm/sq1I0lcb8+dXsNCvyl
 /07qp34T/PoCi28s5dSIET4phoBzHLNVLYEnrVM7ETfQZR9+DOJJJICqKpNIgnmUOjay
 FE6qpHlNfUBc1Prh/9cVeW1BZd5f5jcqsHY4LGJOYqwsvsneHPEUQO859HiiqLKCqobf
 dKfg==
Subject: [Spice-devel] [PATCH spice-gtk v2] Unify openssl checks
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

Q3VycmVudGx5LCBzcGljZS1ndGsgdXNlcyBQS0dfQ0hFQ0tfTU9EVUxFUyhTU0wsIG9wZW5zc2wp
IHRvIGRldGVjdApvcGVuc3NsIENGTEFHUyBhbmQgTElCUy4gQW5kIHNwaWNlLWNvbW1vbiBkZWZp
bmVzIGFuZCB1c2VzClNQSUNFX0NIRUNLX09QRU5TU0wgbWFjcm8gd2hpY2ggY2FsbHMKUEtHX0NI
RUNLX01PRFVMRVMoT1BFTlNTTCwgb3BlbnNzbCkuCgpUaGlzIG1lYW5zIHRoYXQgaW4gb3JkZXIg
dG8gb3ZlcnJpZGUgb3BlbnNzbCBDRkxBR1Mgb3IgTElCUyBhIHVzZXIgd2lsbApoYXZlIHRvIHNl
dCBib3RoIE9QRU5TU0xfKENGTEFHU3xMSUJTKSBhbmQgU1NMXyhDRkxBR1N8TElCUykuCgpUbyBt
YWtlIHRoaXMgbW9yZSBjb25zaXN0ZW50LCBtYWtlIHNwaWNlLWd0ayB1c2UgdGhlClNQSUNFX0NI
RUNLX09QRU5TU0wgbWFjcm8gZnJvbSBzcGljZS1jb21tb24uCgpTaWduZWQtb2ZmLWJ5OiBSb21h
biBCb2dvcm9kc2tpeSA8Ym9nb3JvZHNraXlAZ21haWwuY29tPgotLS0KIGNvbmZpZ3VyZS5hYyAg
ICB8IDYgKysrLS0tCiBzcmMvTWFrZWZpbGUuYW0gfCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NvbmZpZ3VyZS5h
YyBiL2NvbmZpZ3VyZS5hYwppbmRleCBkMjM0ODIyLi4wNjY2ZTJhIDEwMDY0NAotLS0gYS9jb25m
aWd1cmUuYWMKKysrIGIvY29uZmlndXJlLmFjCkBAIC0xMTQsMTEgKzExNCwxMSBAQCBQS0dfQ0hF
Q0tfTU9EVUxFUyhQSVhNQU4sIHBpeG1hbi0xID49IDAuMTcuNykKIAogU1BJQ0VfR0xJQl9SRVFV
SVJFUz0iJHtTUElDRV9HTElCX1JFUVVJUkVTfSBwaXhtYW4tMSA+PSAwLjE3LjciCiAKLVBLR19D
SEVDS19NT0RVTEVTKFNTTCwgb3BlbnNzbCkKK1NQSUNFX0NIRUNLX09QRU5TU0wKIAogUEtHX0NI
RUNLX0VYSVNUUyhvcGVuc3NsLAogICBbU1BJQ0VfR0xJQl9SRVFVSVJFUz0iJHtTUElDRV9HTElC
X1JFUVVJUkVTfSBvcGVuc3NsIl0sCi0gIFtTUElDRV9HTElCX0xJQlM9IiR7U1BJQ0VfR0xJQl9M
SUJTfSAke1NTTF9MSUJTfSJdKQorICBbU1BJQ0VfR0xJQl9MSUJTPSIke1NQSUNFX0dMSUJfTElC
U30gJHtPUEVOU1NMX0xJQlN9Il0pCiAKIFNQSUNFX0NIRUNLX1JFQ09SREVSCiBTUElDRV9DSEVD
S19TQVNMCkBAIC00ODksNyArNDg5LDcgQEAgU1BJQ0VfQ0ZMQUdTPSIkU1BJQ0VfQ0ZMQUdTICRX
QVJOX0NGTEFHUyIKIAogQUNfU1VCU1QoU1BJQ0VfQ0ZMQUdTKQogCi1TUElDRV9HTElCX0NGTEFH
Uz0iJFBJWE1BTl9DRkxBR1MgJFBVTFNFX0NGTEFHUyAkR1NUQVVESU9fQ0ZMQUdTICRHU1RWSURF
T19DRkxBR1MgJEdMSUIyX0NGTEFHUyAkR0lPX0NGTEFHUyAkR09CSkVDVDJfQ0ZMQUdTICRTU0xf
Q0ZMQUdTICRTQVNMX0NGTEFHUyIKK1NQSUNFX0dMSUJfQ0ZMQUdTPSIkUElYTUFOX0NGTEFHUyAk
UFVMU0VfQ0ZMQUdTICRHU1RBVURJT19DRkxBR1MgJEdTVFZJREVPX0NGTEFHUyAkR0xJQjJfQ0ZM
QUdTICRHSU9fQ0ZMQUdTICRHT0JKRUNUMl9DRkxBR1MgJE9QRU5TU0xfQ0ZMQUdTICRTQVNMX0NG
TEFHUyIKIFNQSUNFX0dUS19DRkxBR1M9IiRTUElDRV9HTElCX0NGTEFHUyAkR1RLX0NGTEFHUyAi
CiAKIEFDX1NVQlNUKFNQSUNFX0dMSUJfQ0ZMQUdTKQpkaWZmIC0tZ2l0IGEvc3JjL01ha2VmaWxl
LmFtIGIvc3JjL01ha2VmaWxlLmFtCmluZGV4IGNkYzRkMjguLjdiOTgxODAgMTAwNjQ0Ci0tLSBh
L3NyYy9NYWtlZmlsZS5hbQorKysgYi9zcmMvTWFrZWZpbGUuYW0KQEAgLTgwLDcgKzgwLDcgQEAg
U1BJQ0VfQ09NTU9OX0NQUEZMQUdTID0JCQkJCQlcCiAJJChHSU9fQ0ZMQUdTKQkJCQkJCVwKIAkk
KEdPQkpFQ1QyX0NGTEFHUykJCQkJCVwKIAkkKEpTT05fQ0ZMQUdTKQkJCQkJCVwKLQkkKFNTTF9D
RkxBR1MpCQkJCQkJXAorCSQoT1BFTlNTTF9DRkxBR1MpCQkJCQlcCiAJJChTQVNMX0NGTEFHUykJ
CQkJCQlcCiAJJChHU1RBVURJT19DRkxBR1MpCQkJCQlcCiAJJChHU1RWSURFT19DRkxBR1MpCQkJ
CQlcCkBAIC0xOTIsNyArMTkyLDcgQEAgbGlic3BpY2VfY2xpZW50X2dsaWJfaW1wbF9sYV9MSUJB
REQgPQkJCQkJXAogCSQoWl9MSUJTKQkJCQkJCQlcCiAJJChMWjRfTElCUykJCQkJCQkJXAogCSQo
UElYTUFOX0xJQlMpCQkJCQkJCVwKLQkkKFNTTF9MSUJTKQkJCQkJCQlcCisJJChPUEVOU1NMX0xJ
QlMpCQkJCQkJCVwKIAkkKFBVTFNFX0xJQlMpCQkJCQkJCVwKIAkkKEdTVEFVRElPX0xJQlMpCQkJ
CQkJXAogCSQoR1NUVklERU9fTElCUykJCQkJCQlcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
