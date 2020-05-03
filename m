Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777C31C2D7A
	for <lists+spice-devel@lfdr.de>; Sun,  3 May 2020 17:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFFBA890BB;
	Sun,  3 May 2020 15:34:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE23F890BB
 for <spice-devel@lists.freedesktop.org>; Sun,  3 May 2020 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588520044;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=re/NviGGQCbfAnidVtHDCCIhlbHsh6CCHzqD/QABe74=;
 b=Mj2k1io+mpvS22yM8j28z01+cWUCbBn8sUNCkdKGtNCp2ZdglvoKIRCriDwMDtKGvQjVl3
 OR7pE+Kla8nLapGb6WP572lhZttdRF97mw/UCkZ8LWDIGIgSyBQcERO/pJ1090Jl95Mpbg
 rUQFQm2cfda8tJQX6CJgZjjPOJKoW+c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-Gk7eFVP-NgOWc-CWpGVuVA-1; Sun, 03 May 2020 11:34:02 -0400
X-MC-Unique: Gk7eFVP-NgOWc-CWpGVuVA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 396BA107ACCA;
 Sun,  3 May 2020 15:34:01 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.184])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D9A035D9D5;
 Sun,  3 May 2020 15:33:59 +0000 (UTC)
To: bruts@netc.fr, spice-devel@lists.freedesktop.org
References: <ea-mime-5eac1b3d-6ff7-79657c9c@www-1.mailo.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <2a20aee3-9416-c0aa-1f89-3d450fd0e424@redhat.com>
Date: Sun, 3 May 2020 18:33:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ea-mime-5eac1b3d-6ff7-79657c9c@www-1.mailo.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-vdagent: how to enable additional mouse
 buttons?
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 5/1/20 3:51 PM, bruts@netc.fr wrote:
> 
> I am using spice-vdagent on most of my qemu-kvm vm's, while this is very 
> convenient, mouse button 8 and 9 are not working (those are the side 
> buttons of the mouse, one is often used for BACK function of the 
> browser, which my thumb is actually addicted to).
> How could i make these buttons work with spice-vdagent?

Hi,

Currently 5 mouse buttons are supported. I think some code is needed to 
be added in order to support more buttons.

Uri.

> 
> Thanks for the suggestions,
> 
> Bruts

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
