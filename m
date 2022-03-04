Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9278A4CE2C5
	for <lists+spice-devel@lfdr.de>; Sat,  5 Mar 2022 06:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E75410FCAC;
	Sat,  5 Mar 2022 05:21:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5819110E357
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Mar 2022 21:32:01 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id d62so10866106iog.13
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Mar 2022 13:32:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lSN8DchC6+ZzxTpHC5igGjM+QO5wTcuaRAz/Ni/UK+0=;
 b=ZDmhvpsDB/QF4D6gbG/VYnFJd2UMz5vG8/L0YNIgvCB26UY6pkLOKbTXMKQJoekDOR
 ZhtWvpxj6Ij4C+ua9jUzpJjK0kRLPIc2/WRv0IGyyU6XianRGg63ymAEsI2USQL6SEhK
 VNiTYdz9QRvPzCelY8DeE07HFDTKCFEMBi09iDmY8GIh5OdOoKLX+S9y78yRhpIa77PY
 q3nhR4U1+PoeLOCJ3+1LGnJpX25t8zT8g1nupveV0NSrLmVsp9kwrXM3dgNI1wCrjxrQ
 at4rS5QVM/C/SlgpV+A7V9PM1qvhYQ8iFOd47UxUkSMLIsMr8wK9C4i+xl+MVFp/wPUO
 Wg4w==
X-Gm-Message-State: AOAM530a087aPHZJTo5d+KBbevDRiM8imN1FbdOS27ry2ZWrxce3zK2I
 Z8RZbMn0oCfVispoHrRjbmo40O06Kgg=
X-Google-Smtp-Source: ABdhPJzjC9WAFByL783rhIQI5xKWSU97K8TvDEOeAIFjj8JcP+5DWBy3eUsl8s/7Y582JWCqkG6cPA==
X-Received: by 2002:a05:6638:344b:b0:313:f7b2:515f with SMTP id
 q11-20020a056638344b00b00313f7b2515fmr422500jav.35.1646429520401; 
 Fri, 04 Mar 2022 13:32:00 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47]) by smtp.gmail.com with ESMTPSA id
 u9-20020a5d8189000000b006415781ebe5sm5483052ion.5.2022.03.04.13.31.59
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Mar 2022 13:32:00 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id u2so8938824ioc.11
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Mar 2022 13:31:59 -0800 (PST)
X-Received: by 2002:a5d:8514:0:b0:637:4b2b:fac with SMTP id
 q20-20020a5d8514000000b006374b2b0facmr453595ion.95.1646429519740; Fri, 04 Mar
 2022 13:31:59 -0800 (PST)
MIME-Version: 1.0
From: osy <osy@turing.llc>
Date: Fri, 4 Mar 2022 13:31:49 -0800
X-Gmail-Original-Message-ID: <CA+E+eSB3Fzy=B4L=_WP_G8FL5DNAOX6qOOe60y3dmHTGV_cZgw@mail.gmail.com>
Message-ID: <CA+E+eSB3Fzy=B4L=_WP_G8FL5DNAOX6qOOe60y3dmHTGV_cZgw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 05 Mar 2022 05:21:50 +0000
Subject: [Spice-devel] Contributing via patch email or freedesktop Gitlab?
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

On the website

https://www.spice-space.org/developers.html

It says to send patches to this email. However, I've noticed that
recent development has taken place directly on the freedesktop Gitlab
with merge requests

https://gitlab.freedesktop.org/spice/spice-gtk

What is the recommended way of contributing? If it is through the
freedesktop Gitlab, should the website be updated?

Thanks!
