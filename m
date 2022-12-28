Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737E65747A
	for <lists+spice-devel@lfdr.de>; Wed, 28 Dec 2022 10:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D68910E16A;
	Wed, 28 Dec 2022 09:11:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 601 seconds by postgrey-1.36 at gabe;
 Wed, 28 Dec 2022 09:11:34 UTC
Received: from mail.tol.fr (mail.tol.fr [82.66.50.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FF510E16A
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Dec 2022 09:11:34 +0000 (UTC)
Message-ID: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu; s=2017;
 t=1672218086; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=9JuE6kai7XFxCm6SX89ZincFnTNIAPTlNVnicxCkdiI=;
 b=ac0iTTePZMDMoMjcQYPXfv/rFR5domEFqOHIIe+BY8NUe+2FxI/5I891Bdhgol27hkj2tP
 fOCFes8lq+3mGeZmftqcU8aU3jAew80RTJiIj/RWkv8FtOKMm8NE5A/YCbDKghyWcuunHI
 rTPfsA4XtXKyhOAnOvlXTjX0bq54KDnHcV6BOm3ydZeshLG3AlEweYX9hdZT+7TTsiqRJa
 gwuCt7vaI0LsSU0frVZw3VCguO599j3ZGVqZ0NhWdVXu+poQuuXDQzoNxm+2Bt+n4Q8wd6
 rWx08y8cPI+ZyVVJsHwSyhTXk17uL/LdOsKCx2TKSfOn0ZnxXq5Hj2MajPykgg==
Date: Wed, 28 Dec 2022 10:01:24 +0100
MIME-Version: 1.0
To: spice-devel@lists.freedesktop.org
Content-Language: fr
From: Pierre Couderc <pierre@couderc.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu;
 s=2017; t=1672218086; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=9JuE6kai7XFxCm6SX89ZincFnTNIAPTlNVnicxCkdiI=;
 b=KxP1WAZ7RaSH3ac88C1ZOVmZHCOxahNVHA6NeEApgaLZurRRcFA73qnsr9CaTbLEG1bIwC
 LK+hyCx34hjkHqOPJi47y9jkPb78Ok6vYeioj47/GoVR04WA9vhyFpx15QgqskqtLOz6nC
 it5KubEH80+c1cXvv3ht2ydOUcakMvKs4QlPbFn4QPom+Ujrsz93b/h1LOUmGIbRhyNtCL
 sqKW+T0dddbMcx34YOWJbuXVqUoIyVgWYjKNkUqDyNjbveaIdoftM4koV+rKPiKBmMsvXv
 BosjrFqnQ9+k3s7hIwSvd33WxzLLiKZNppGMeADZIOAyoN4EUkmqPgOg4djDow==
ARC-Seal: i=1; s=2017; d=couderc.eu; t=1672218086; a=rsa-sha256; cv=none;
 b=L9VIQrctogNmJIjcDhIiI34HTEms0am6jeEVukSz20r/AGsoaLLIi8xzQYJKjNRwvKBLKAkcGOMwdcjW6LHs/nhITEiWvu+5o3kBUB1xj3uEvaCk3JKzH/Ploj/ngymOvNbnj/ki6HD/3/BemiJvv7rYDk/6mn3wNpmdMh3J4sl2fLbq5HGErbXeq0ZUILIsooTjKGlwP1Lc7m30PiFt2pG5511jVlEZZagafKfTboIR310iXpdyzLtN7hprbOZysSTnO0M9lIeB4hfJ+21FVn/bEDnzQFfQzWyJqbEM7GSFJlRp6Yd7zLRxOxxiVTEC6NCOjohrXvhJDbUSTVNWyg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=pierre smtp.mailfrom=pierre@couderc.eu
Subject: [Spice-devel] In spicy, how to change shft-F12 to ungrab the mouse ?
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

Is is possible ? how ?

Thanks for any help.

PC

