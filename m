Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4134995C
	for <lists+spice-devel@lfdr.de>; Thu, 25 Mar 2021 19:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506AA6EE03;
	Thu, 25 Mar 2021 18:19:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 350 seconds by postgrey-1.36 at gabe;
 Thu, 25 Mar 2021 18:19:29 UTC
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [188.68.63.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA7D6EDDA
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Mar 2021 18:19:29 +0000 (UTC)
Received: from mors-relay-8202.netcup.net (localhost [127.0.0.1])
 by mors-relay-8202.netcup.net (Postfix) with ESMTPS id 4F5tWy3S2Wz4WnW;
 Thu, 25 Mar 2021 19:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=konetzka.de; s=key2;
 t=1616696014; bh=ZSmbxF5lh2ry1vqM+tAv8k/oERm+Btbta85rVpMU4UE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=DuhWM5Bec6sfkthhgFjZwgVVbUM5kWBoqJytgyN9En/ZO9xjzE5gC98W9XZqBKWYS
 8KWJtrkyfeewX07Of8h4QFrIJDykaPgMtXmKsh0yDCUlhcWwc5xrPTl7IroPuxAU/6
 SR8kQeQJz/tmHnWppv81RDmlwhgCdXLkHbzfHhMvi8CwLo53r5E5e6Q3HZF7K1atgC
 NAIhsgmYoBNjrhcFCV8WQ/pWI0vNo81a0pr1AbN89i1yLqf/XumvuVfxwO6qy403X9
 S+eU/uE87+pc+5Rmn6jAf1+8CXJLuoQHUTMuK/3uEiCpLE8E/dnyYP/FcbY3OvcXuz
 PmZnVwJub4RqQ==
Received: from policy02-mors.netcup.net (unknown [46.38.225.35])
 by mors-relay-8202.netcup.net (Postfix) with ESMTPS id 4F5tWy1g2cz4WVp;
 Thu, 25 Mar 2021 19:13:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at policy02-mors.netcup.net
X-Spam-Flag: NO
X-Spam-Score: -2.901
X-Spam-Level: 
X-Spam-Status: No, score=-2.901 required=6.31 tests=[ALL_TRUSTED=-1,
 BAYES_00=-1.9, SPF_PASS=-0.001] autolearn=ham autolearn_force=no
Received: from mx2f6e.netcup.net (unknown [10.243.12.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by policy02-mors.netcup.net (Postfix) with ESMTPS id 4F5tWx3ZRjz8sWV;
 Thu, 25 Mar 2021 19:13:32 +0100 (CET)
Received: from [192.168.54.9] (ip-88-152-10-47.hsi03.unitymediagroup.de
 [88.152.10.47])
 by mx2f6e.netcup.net (Postfix) with ESMTPSA id 1C03C65E41;
 Thu, 25 Mar 2021 19:13:32 +0100 (CET)
Authentication-Results: mx2f6e;
 spf=pass (sender IP is 88.152.10.47) smtp.mailfrom=helge@konetzka.de
 smtp.helo=[192.168.54.9]
Received-SPF: pass (mx2f6e: connection is authenticated)
To: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>
References: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
 <YFsEsB2rZC040RZd@redhat.com>
From: Helge Konetzka <helge@konetzka.de>
Message-ID: <231f5838-f106-054a-f025-808a94ab9a5c@konetzka.de>
Date: Thu, 25 Mar 2021 19:13:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <YFsEsB2rZC040RZd@redhat.com>
Content-Language: en-US
X-PPP-Message-ID: <161669601226.20089.15679430918484774682@mx2f6e.netcup.net>
X-PPP-Vhost: konetzka.de
X-NC-CID: no+SwfBsBRj+TaYHNe+EIVuvzde0J+7RYQAHl1YB9hJ1
Subject: Re: [Spice-devel] Qemu with Spice support on Windows10 host: a
 report
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QW0gMjQuMDMuMjEgdW0gMTA6MjEgc2NocmllYiBEYW5pZWwgUC4gQmVycmFuZ8OpOgo+IE9uIFR1
ZSwgTWFyIDIzLCAyMDIxIGF0IDA5OjI3OjMxUE0gKzAxMDAsIEhlbGdlIEtvbmV0emthIHdyb3Rl
Ogo+PiBTYWRseSBwcm9ibGVtcyBvY2N1ciBhZnRlciBhZGRpbmcgbW9yZSBzcGljZSB3aXRoOgo+
PiAiLWRldmljZSB2aXJ0aW8tc2VyaWFsLXBjaSAtZGV2aWNlCj4+IHZpcnRzZXJpYWxwb3J0LGNo
YXJkZXY9c3BpY2VjaGFubmVsMCxuYW1lPWNvbS5yZWRoYXQuc3BpY2UuMCAtY2hhcmRldgo+PiBz
cGljZXZtYyxpZD1zcGljZWNoYW5uZWwwLG5hbWU9dmRhZ2VudCIKPj4gcWVtdSBzdGFydHMgbG9n
Z2luZyB3YXJuaW5ncyBpbiBhIGxvb3AgYW5kIGlzIG5vIGxvbmdlciB1c2FibGU6Cj4+IEQ6XGN5
Z3dpbjY0XHg4Nl82NC13NjQtbWluZ3czMlxxZW11LTUuMi4wXHFlbXUtc3lzdGVtLXg4Nl82NC5l
eGU6IHdhcm5pbmc6Cj4+IEdMaWI6IFRvbyBtYW55IGhhbmRsZXMgdG8gd2FpdCBmb3IhCj4gVGhp
cyBwcm9ibGVtIGlzIGluIEdMaWIsIHJhdGhlciB0aGFuIFFFTVUuIFdoYXQgdmVyc2lvbiBvZiBH
TGliIGFyZSB5b3UKPiBidWlsZGluZyAmIHJ1bm5pbmcgYWdhaW5zdCA/CgpDeWd3aW42NCBwcm92
aWRlcyB0aGUgcGFja2FnZSBtaW5ndy13NjQteDg2XzY0LWdsaWIyLjAgY29udGFpbmluZyBnbGli
IAoyLjU0LjMtMQoKCkFmdGVyIHlvdXIgcHVzaCBpbiB0aGlzIGRpcmVjdGlvbiBJIHJlYnVpbHQg
c3BpY2UgYW5kIHFlbXUgd2l0aCBNc3lzMiAKd2hpY2ggcHJvdmlkZXMgdGhlIHBhY2thZ2UgbWlu
Z3ctdzY0LXg4Nl82NC1nbGliMiBjb250YWluaW5nIGdsaWIgMi42Ni43LTEKCgpVc2luZyBjdXJy
ZW50IHZpcnQtdmlld2VyIGluc3RlYWQgb2Ygb3V0ZGF0ZWQgc3BpY3ktY2xpZW50IHByb3ZpZGVk
IGJ5IApjeWd3aW42NCBxZW11IGVuYWJsZWQgc3BpY2Ugb24gd2luZG93cyAxMCBob3N0IHdvcmtz
IGxpa2UgYSBjaGFybS4KCgpUaGFua3MgZm9yIHlvdXIgaGVscCwKCkhlbGdlIEtvbmV0emthCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
