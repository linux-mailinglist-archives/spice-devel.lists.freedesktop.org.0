Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F551B9560
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 05:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B864789FEC;
	Mon, 27 Apr 2020 03:23:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 364 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 03:23:26 UTC
Received: from mail.virtall.com (mail.virtall.com [46.4.129.203])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040A989FEA
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 03:23:26 +0000 (UTC)
Received: from mail.virtall.com (localhost [127.0.0.1])
 by mail.virtall.com (Postfix) with ESMTP id D2A5943BB3B4
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 03:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpkg.org; s=default;
 t=1587957440; bh=BUbVeLj7w8kckoBxGORdlx/KmVaFNJs3f5oPh+TiiDo=;
 h=Date:From:To:Subject:In-Reply-To:References;
 b=OhTnPs7VV6dJyXU9bH1KtMtxSwrMGl30+a5FMfaG8hH7OMri3M15GiVgpNuGxTIOm
 5GjWxWtN9Tv+meTebW711yZJ+OjxgooZ2Jn1POOMbrpnrO1DBLxWfgQJbMnfGZBjPk
 mUMHFrfxZRYgHdRjTNv+Ylaz94n/bwdoDOejwYFvGnTKYCDyizMWwfrZzTE9kxky6O
 WADSrd8E8dTneNuU1kgRCIgRwPAkidy8eFG110UtakOvlI2i91/YBG3CpXgv6T9XZu
 OLh246bveOnNQOIIereQphYM3/kaof2lmoYz/C30cNyb04Deau1KXUsqHaWeypbVf7
 3Wf4Ni2t3vLqA==
X-Fuglu-Suspect: e5cb0163e94c4c40a26ce694f1e210f5
X-Fuglu-Spamstatus: NO
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.virtall.com
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 tch@virtall.com) by mail.virtall.com (Postfix) with ESMTPSA
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 03:17:19 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 12:17:19 +0900
From: Tomasz Chmielewski <mangoo@wpkg.org>
To: spice-devel@lists.freedesktop.org
In-Reply-To: <ac5afbf39f86a67d33ae3c73eecc814e@virtall.com>
References: <ac5afbf39f86a67d33ae3c73eecc814e@virtall.com>
Message-ID: <316cfa9cdf39418f9436489c7418ca20@wpkg.org>
X-Sender: mangoo@wpkg.org
Subject: [Spice-devel] spice X session?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Is it possible to configure a spice X session?

So that X session is available remotely?


Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
