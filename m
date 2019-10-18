Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF26DC62F
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 15:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0D689A86;
	Fri, 18 Oct 2019 13:35:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C594D89A86
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 13:35:34 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id p4so6296096wrm.8
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 06:35:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QnyCbGHPxa5kdbSLw3Q/wyFWR4OYo/ok0afarCOn+B0=;
 b=s4r0e8Hq4vv0neal0NroPwXF6DGDnLxomtsY2RcCwRXSbc8lWS40HLtG1jsG1i0HwG
 ecXu7pNIu+ok8ozVVI8owUKGTHDZ2V++kosiltycoY4/jRT/+O/xVQRQ6lsg+9+HnvJY
 pbwrkGXrWA2RrPSIBtM4vdIy11cZ3JAnBHDTVV3pvKLmEDsaFjYN+AaO3ntTV2znDPNn
 1vf3FwcpdgNQMTVSAOy+zv7VFhvmnF9RSWS9i2GRi2HvQk0nL0K/QvmnkZ6qxDIHd1P2
 Ea4OHcVWHG9h2WBSb852Jb43pjHO5OTzXBIk+R8+QmTwGWJFO/ymxLMz4diZi8aDBI2/
 LeFg==
X-Gm-Message-State: APjAAAW3BwElyTXpQFBeZHKNjNcqfiMWEAcXe2ik+7PZBFz9Hh/tUcal
 WFVa9OvbfR9EpuMBNLSzgrGQRPFnaVw=
X-Google-Smtp-Source: APXvYqwoWAMiksY2BawhtmdSQX5HNGexIVlhCH8bRa1stA5qxrxkqfuJl1pK3+z2jNsc1OOdAvy/6A==
X-Received: by 2002:a5d:424a:: with SMTP id s10mr3301825wrr.108.1571405733152; 
 Fri, 18 Oct 2019 06:35:33 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-176-43-106.red.bezeqint.net.
 [79.176.43.106])
 by smtp.gmail.com with ESMTPSA id h63sm8039576wmf.15.2019.10.18.06.35.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 06:35:32 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 16:35:21 +0300
Message-Id: <20191018133522.30080-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018133522.30080-1-yuri.benditovich@daynix.com>
References: <20191018133522.30080-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QnyCbGHPxa5kdbSLw3Q/wyFWR4OYo/ok0afarCOn+B0=;
 b=b4Rcd1XMP2pihCPdumHw7YcVqrUWVMXA3FSnR9XPRwE2ecN/3wmauG2fPI6/Eo4sRG
 k91DJs1okluULvSm+c4/Qmi6BKRnhqLEFLPI7APl+sCrDWhOJnm4jQ5YPySnCNOk/8yA
 bnjx+kY2jucQWdgM+aOeqDKyeh5qhmwUJ7RamvGStwdiAszACU7M8P+cuxAnIvdyfQLX
 TXMU/H/v2bq+XpWZdtmUacsm2vgVLAC7ZAUEBjBFj7g92eIbMJMvW8LEiXy9pAPQiBv8
 3laDSoaIut52j7k3TdWozDP5RyYjONQ5E+ew983XzFPrhOQtSGme7GVl7RDmsdjXosji
 b0ww==
Subject: [Spice-devel] [PATCH 2/3] win32/vd_agent: Customize MSI product
 name and install location
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Q3VzdG9taXplIHRoZXNlIHByb3BlcnRpZXMgb2YgV0lYIHNjcmlwdCBkdXJpbmcgYnVpbGQgdW5k
ZXIKV0lYTCBvciBXaW5kb3dzLgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVy
aS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIE1ha2VmaWxlLmFtICAgICAgICAgIHwgNSAr
KysrLQogc3BpY2UtdmRhZ2VudC53eHMuaW4gfCA4ICsrKystLS0tCiAyIGZpbGVzIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9NYWtlZmlsZS5h
bSBiL01ha2VmaWxlLmFtCmluZGV4IDMwMjA4MjQuLjgwZTgyYzYgMTAwNjQ0Ci0tLSBhL01ha2Vm
aWxlLmFtCisrKyBiL01ha2VmaWxlLmFtCkBAIC0xMDEsNiArMTAxLDcgQEAgdGVzdF9sb2dfd2lu
X1NPVVJDRVMgPQkJCVwKIAkkKE5VTEwpCiAKIE1BTlVGQUNUVVJFUiA9IFRoZSBTcGljZSBQcm9q
ZWN0CitQUk9EVUNUID0gU3BpY2UgYWdlbnQKIAogRVhUUkFfRElTVCArPSBzcGljZS12ZGFnZW50
Lnd4cy5pbgogQ09ORklHX1NUQVRVU19ERVBFTkRFTkNJRVMgPSBzcGljZS12ZGFnZW50Lnd4cy5p
bgpAQCAtMTA4LDcgKzEwOSw5IEBAIENPTkZJR19TVEFUVVNfREVQRU5ERU5DSUVTID0gc3BpY2Ut
dmRhZ2VudC53eHMuaW4KIHNwaWNlLXZkYWdlbnQtJChXSVhMX0FSQ0gpLSQoVkVSU0lPTikkKEJV
SUxESUQpLm1zaTogc3BpY2UtdmRhZ2VudC53eHMgYWxsCiAJJChBTV9WX0dFTilERVNURElSPWBt
a3RlbXAgLWRgJiYJCQkJXAogCW1ha2UgLUMgJCh0b3BfYnVpbGRkaXIpIGluc3RhbGwgREVTVERJ
Uj0kJERFU1RESVIgPi9kZXYvbnVsbCAmJglcCi0JTUFOVUZBQ1RVUkVSPSIkKE1BTlVGQUNUVVJF
UikiIHdpeGwgLUQgU291cmNlRGlyPSQocHJlZml4KQlcCisJICBNQU5VRkFDVFVSRVI9IiQoTUFO
VUZBQ1RVUkVSKSIgUFJPRFVDVD0iJChQUk9EVUNUKSIgICAgICAgICAgIFwKKwkgIElOU1RBTExE
SVJFQ1RPUlk9IiQoUFJPRFVDVCkiIEJJTkRJUkVDVE9SWT1iaW4gICAgICAgICAgICAgICAgXAor
CSAgd2l4bCAtRCBTb3VyY2VEaXI9JChwcmVmaXgpICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBcCiAJICAtRCBERVNURElSPSQkREVTVERJUiQocHJlZml4KQkJCQkJXAogCSAgLS1h
cmNoICQoV0lYTF9BUkNIKSAgLW8gJEAgJDwKIApkaWZmIC0tZ2l0IGEvc3BpY2UtdmRhZ2VudC53
eHMuaW4gYi9zcGljZS12ZGFnZW50Lnd4cy5pbgppbmRleCBlMGZkMzhlLi43Nzc4YzI3IDEwMDY0
NAotLS0gYS9zcGljZS12ZGFnZW50Lnd4cy5pbgorKysgYi9zcGljZS12ZGFnZW50Lnd4cy5pbgpA
QCAtMTUsNyArMTUsNyBAQAogICAgICAgPD9kZWZpbmUgV2luNjQgPSAibm8iPz4KICAgPD9lbmRp
Zj8+CiAKLSAgPFByb2R1Y3QgSWQ9IioiIE5hbWU9IlNwaWNlIGFnZW50IEBWRVJTSU9OQEBCVUlM
RElEQCAoJCh2YXIuQXJjaFN0cmluZykpIgorICA8UHJvZHVjdCBJZD0iKiIgTmFtZT0iJChlbnYu
UFJPRFVDVCkgQFZFUlNJT05AQEJVSUxESURAICgkKHZhci5BcmNoU3RyaW5nKSkiCiAgICAgICAg
ICAgIE1hbnVmYWN0dXJlcj0iJChlbnYuTUFOVUZBQ1RVUkVSKSIKICAgICAgICAgICAgVmVyc2lv
bj0iJCh2YXIuVmVyc2lvbikiIFVwZ3JhZGVDb2RlPSIkKHZhci5VcGdyYWRlQ29kZSkiCiAgICAg
ICAgICAgIExhbmd1YWdlPSIxMDMzIj4KQEAgLTM3LDggKzM3LDggQEAKIAogICAgIDxEaXJlY3Rv
cnkgSWQ9IlRBUkdFVERJUiIgTmFtZT0iU291cmNlRGlyIj4KICAgICAgIDxEaXJlY3RvcnkgSWQ9
IiQodmFyLkFyY2hQcm9ncmFtRmlsZXNGb2xkZXIpIj4KLSAgICAgICAgPERpcmVjdG9yeSBJZD0i
SU5TVEFMTERJUiIgTmFtZT0iU1BJQ0UgYWdlbnQiPgotICAgICAgICAgIDxEaXJlY3RvcnkgSWQ9
IkRiaW5kaXIiIE5hbWU9ImJpbiI+CisgICAgICAgIDxEaXJlY3RvcnkgSWQ9IklOU1RBTExESVIi
IE5hbWU9IiQoZW52LklOU1RBTExESVJFQ1RPUlkpIj4KKyAgICAgICAgICA8RGlyZWN0b3J5IElk
PSJEYmluZGlyIiBOYW1lPSIkKGVudi5CSU5ESVJFQ1RPUlkpIj4KICAgICAgICAgICAgIDxDb21w
b25lbnQgSWQ9IkNTcGljZUFnZW50IiBHdWlkPSIqIiBXaW42ND0iJCh2YXIuV2luNjQpIj4KICAg
ICAgICAgICAgICAgPEZpbGUgSWQ9J3NwaWNlYWdlbnQnIE5hbWU9J3ZkYWdlbnQuZXhlJyBEaXNr
SWQ9JzEnIFNvdXJjZT0nJCh2YXIuREVTVERJUikvYmluL3ZkYWdlbnQuZXhlJyBLZXlQYXRoPSd5
ZXMnLz4KICAgICAgICAgICAgIDwvQ29tcG9uZW50PgpAQCAtNDYsNyArNDYsNyBAQAogICAgICAg
ICAgICAgICA8RmlsZSBJZD0nc3BpY2VzZXJ2aWNlJyBOYW1lPSd2ZHNlcnZpY2UuZXhlJyBEaXNr
SWQ9JzEnIFNvdXJjZT0nJCh2YXIuREVTVERJUikvYmluL3Zkc2VydmljZS5leGUnIEtleVBhdGg9
J3llcycvPgogICAgICAgICAgICAgICA8U2VydmljZUluc3RhbGwgSWQ9IlNlcnZpY2VJbnN0YWxs
IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5hbWU9InNwaWNlLWFnZW50IgotICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIERpc3BsYXlOYW1lPSJTcGljZSBhZ2VudCIKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBEaXNwbGF5TmFtZT0iJChlbnYuUFJPRFVDVCkiCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgRGVzY3JpcHRpb249IlRoZSBTcGljZSBndWVzdCBhZ2VudCIK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUeXBlPSJvd25Qcm9jZXNzIgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFN0YXJ0PSJhdXRvIgotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
