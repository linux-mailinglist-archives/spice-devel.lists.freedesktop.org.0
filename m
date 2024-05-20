Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7108CA4CE
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2024 00:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AC310E43E;
	Mon, 20 May 2024 22:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=yank.to header.i=@yank.to header.b="e6Iv/w+9";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 321 seconds by postgrey-1.36 at gabe;
 Mon, 20 May 2024 22:58:07 UTC
Received: from st43p00im-ztbu10063701.me.com (st43p00im-ztbu10063701.me.com
 [17.58.63.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F068610E43E
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2024 22:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yank.to; s=sig1;
 t=1716245565; bh=03eST2wR3RxlGi8Uc5M4/fPKgsoMQpRHGZ3qQLFlzXw=;
 h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
 b=e6Iv/w+95q627OTLEYjvn1tSLklxzRRaBHkpBG1IJWmkiisYG2GsBWGXXzrAW3Npw
 +HOBbAj/Ce+K649drXjo/LONuIRCGzdFscc3bWb2KApwhnp6UvvrNZjwbuw3763r3T
 yhPxtn1SOeNeRHe7699K4gSFONzvhGKmUJR9VKxk2hekslIVQHra62Xt93k+K/dfb3
 g8w4vglpvPYoSNmI4HfYhqWDVIzjaiiJrekkz6rOfh1ypxTGAYxDct6HjFUh8+U1dH
 Uu6G1ZDUYkvVUqhjykT42ew61S3kCOwpT43yw61OfqyV664bv8r8fGR0jFmJfZJ3Ix
 /szHSa1ikm0tg==
Received: from smtpclient.apple (st43p00im-dlb-asmtp-mailmevip.me.com
 [17.42.251.41])
 by st43p00im-ztbu10063701.me.com (Postfix) with ESMTPSA id CF699D00357
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2024 22:52:44 +0000 (UTC)
From: Andreas Yankopolus <andreas@yank.to>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: USB mouse on MacOS arm64 client
Message-Id: <867C1A17-6C0B-495D-98E2-BA4EF5667321@yank.to>
Date: Mon, 20 May 2024 18:52:34 -0400
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3774.600.62)
X-Proofpoint-ORIG-GUID: VgxgVJawIeaOTYhSgGwWlwxeQJFUP4dW
X-Proofpoint-GUID: VgxgVJawIeaOTYhSgGwWlwxeQJFUP4dW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-20_12,2024-05-17_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=881
 mlxscore=0
 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0 bulkscore=0
 clxscore=1030 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2405200182
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

All=E2=80=94

I=E2=80=99m on an M1 MacBook Pro accessing VMs running on an amd86 Linux =
server.

Is there a way to connect a USB device on the Mac to a VM?

I=E2=80=99m not able to install additional software on the VMs and am =
trying to sort out mouse tracking, which is very laggy using the VirtIO =
Tablet device. Passing the mouse between MacOS and the VM seemed worth =
trying.

Maybe there=E2=80=99s another option?

Thanks,

Andreas=
