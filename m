Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E664ADC62E
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 15:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE15D89B18;
	Fri, 18 Oct 2019 13:35:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9152789A86
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 13:35:33 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w18so5750607wrt.3
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 06:35:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mDDP+EAxhPesbctR1MGrK9MZrK4hgGkVKVoC/TEZhQA=;
 b=kewikvxdhhJTL19VNh4vJYJiyRWzFgKu67B1SBvg1KFgo4OPhi/0FXLPnS7gmZ5PzX
 k2wRSgac8FtavIXCgn77hiX6B7lsJBqb/eRpX2aW72Yp+0V+rv63wXhaxcsZDlf5D0sH
 fjKIPcI+ohIiWLdKq3sZdyNj5DFoCE6MwmYLDnxqTdew5u7Y7H+Ry+ux/1CC/hPmRXKS
 JUDOK4hoZS/Bu2kiV1Hfsgr69E3Bq9FqyxWMxuVORXEXOi0+ynjm0c452D02evSo2TEE
 wvkETYSE57DL+KYwWgsZCcwoY0jwL0sI+3jff0VgGzHbii6kv6yCJft9xAWGVG2FlJe+
 0Uzw==
X-Gm-Message-State: APjAAAWxOV/qk6N9BPGBo2ko4N1lOliZCnNlw5NqGEyTOj+UjYDer7q5
 CR0sZ9KvpZv15cJhueMq5dXXjdpWZEk=
X-Google-Smtp-Source: APXvYqygRc/OcgFDy7U4h/jAf/kXNjq8RKwBSj/29rNyZyO0yyn0cPQPRvWT4HkqUNZku/38HBV2/w==
X-Received: by 2002:adf:e8c6:: with SMTP id k6mr7946419wrn.78.1571405732000;
 Fri, 18 Oct 2019 06:35:32 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-176-43-106.red.bezeqint.net.
 [79.176.43.106])
 by smtp.gmail.com with ESMTPSA id h63sm8039576wmf.15.2019.10.18.06.35.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 06:35:31 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 16:35:20 +0300
Message-Id: <20191018133522.30080-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018133522.30080-1-yuri.benditovich@daynix.com>
References: <20191018133522.30080-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mDDP+EAxhPesbctR1MGrK9MZrK4hgGkVKVoC/TEZhQA=;
 b=cwNO3nM3AJmvgdfhE9AMk6zJ4+zPZEvi27qR6RKL0eHcqgLfVJXI7lNHLMWIFjPBGX
 7tJt3zEkquFoYa7vDTAZmrkXtz/DLBXElbv1o/mewd/5laboGmyYUeTjbMvkR0i0qDcs
 A6r1qZTGRpnq0vIPaYp7EEbKm+2mrMEYJM3zIo1+2/h3EAFIHrfkRi2gkkLv4KueWUD3
 LfcYRWycH0VQtzpRmQV04dc0hS1mgar3wWsoUIOjCyYZ9UVMOuLH5vC8o2vAMwYFKezs
 A09s68RiFND8zapdV0QFBR8CPs0UW3sJ8G3nsINO1b6AQ97W0kVsBVyu54J9fdzLh6tC
 +QrQ==
Subject: [Spice-devel] [PATCH 1/3] win32/vd_agent: Fix WIX error on .wxs
 script
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

QWxsb3dzIHRoZSBzYW1lIFdJWEwgc2NyaXB0IHRvIGJlIHVzZWQgZm9yIFdJWCBvbiBXaW5kb3dz
LgpXSVggcmFpc2VzIGVycm9yIGlmIFdpbjY0IHByb3BlcnR5IGlzIG5vdCBzZXQgZm9yIHg2NCBN
U0kuCgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRh
eW5peC5jb20+Ci0tLQogc3BpY2UtdmRhZ2VudC53eHMuaW4gfCA0ICsrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2Ut
dmRhZ2VudC53eHMuaW4gYi9zcGljZS12ZGFnZW50Lnd4cy5pbgppbmRleCA3NDMyY2E5Li5lMGZk
MzhlIDEwMDY0NAotLS0gYS9zcGljZS12ZGFnZW50Lnd4cy5pbgorKysgYi9zcGljZS12ZGFnZW50
Lnd4cy5pbgpAQCAtMzksMTAgKzM5LDEwIEBACiAgICAgICA8RGlyZWN0b3J5IElkPSIkKHZhci5B
cmNoUHJvZ3JhbUZpbGVzRm9sZGVyKSI+CiAgICAgICAgIDxEaXJlY3RvcnkgSWQ9IklOU1RBTExE
SVIiIE5hbWU9IlNQSUNFIGFnZW50Ij4KICAgICAgICAgICA8RGlyZWN0b3J5IElkPSJEYmluZGly
IiBOYW1lPSJiaW4iPgotICAgICAgICAgICAgPENvbXBvbmVudCBJZD0iQ1NwaWNlQWdlbnQiIEd1
aWQ9IioiPgorICAgICAgICAgICAgPENvbXBvbmVudCBJZD0iQ1NwaWNlQWdlbnQiIEd1aWQ9Iioi
IFdpbjY0PSIkKHZhci5XaW42NCkiPgogICAgICAgICAgICAgICA8RmlsZSBJZD0nc3BpY2VhZ2Vu
dCcgTmFtZT0ndmRhZ2VudC5leGUnIERpc2tJZD0nMScgU291cmNlPSckKHZhci5ERVNURElSKS9i
aW4vdmRhZ2VudC5leGUnIEtleVBhdGg9J3llcycvPgogICAgICAgICAgICAgPC9Db21wb25lbnQ+
Ci0gICAgICAgICAgICA8Q29tcG9uZW50IElkPSJDU3BpY2VTZXJ2aWNlIiBHdWlkPSIqIj4KKyAg
ICAgICAgICAgIDxDb21wb25lbnQgSWQ9IkNTcGljZVNlcnZpY2UiIEd1aWQ9IioiIFdpbjY0PSIk
KHZhci5XaW42NCkiPgogICAgICAgICAgICAgICA8RmlsZSBJZD0nc3BpY2VzZXJ2aWNlJyBOYW1l
PSd2ZHNlcnZpY2UuZXhlJyBEaXNrSWQ9JzEnIFNvdXJjZT0nJCh2YXIuREVTVERJUikvYmluL3Zk
c2VydmljZS5leGUnIEtleVBhdGg9J3llcycvPgogICAgICAgICAgICAgICA8U2VydmljZUluc3Rh
bGwgSWQ9IlNlcnZpY2VJbnN0YWxsIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5hbWU9
InNwaWNlLWFnZW50IgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
