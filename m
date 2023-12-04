Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB334805B17
	for <lists+spice-devel@lfdr.de>; Tue,  5 Dec 2023 18:25:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA6610E591;
	Tue,  5 Dec 2023 17:25:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA54910E092;
 Mon,  4 Dec 2023 08:43:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 18CA960F54;
 Mon,  4 Dec 2023 08:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DAA6C433C8;
 Mon,  4 Dec 2023 08:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1701679430;
 bh=lDOXjN/W84Vq3sykgf0bUUGkHQwP88whG8TRkS7Nx44=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=WVLjR8vdJwdvEjNXZSMe8Lp1vcM5owgcUib2prYQjTy0EgDp0Om8FIjXQcQ1rbcbQ
 fQLWWvEOllo3g9AmgI7Gjg7cOagUiRiV7SnKfzGFuNkCuA0rbBz65oBUfqTwreubxD
 QVQdwh2v5ZRtFRbx9CDxwJN5LNyFBjlU3ciSzYovIt2RuI0hdP0x5KETnIWYCmskBK
 kKCcVdf6QvWPD3uE8T4h9PdVMciyQjO9UtIlvW6JloR7eQN7kFuAWmV79kmcBkWDKm
 5JpF+Qki6Casz1xtMtz5hQ2LSrHqd87jUHqVH8/B2v5Y+VcZgjM+VrCJ9OQeStZJSv
 CF1MrnJ1MrbRA==
From: Maxime Ripard <mripard@kernel.org>
To: airlied@redhat.com, kraxel@redhat.com, 
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, 
 daniel@ffwll.ch, heminhong <heminhong@kylinos.cn>
In-Reply-To: <20231110055031.57360-1-heminhong@kylinos.cn>
References: <20231110055031.57360-1-heminhong@kylinos.cn>
Message-Id: <170167942791.3617818.9387915211880062681.b4-ty@kernel.org>
Date: Mon, 04 Dec 2023 09:43:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Mailman-Approved-At: Tue, 05 Dec 2023 17:25:54 +0000
Subject: Re: [Spice-devel] [PATCH] drm/qxl: remove unused declaration
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
Cc: spice-devel@lists.freedesktop.org, virtualization@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, 10 Nov 2023 13:50:31 +0800, heminhong wrote:
> Some functions are never used by the driver,
> removing the functions declaration, it can be reducing program size,
> and improving code readability and maintainability.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

