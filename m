Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A01292F7421
	for <lists+spice-devel@lfdr.de>; Fri, 15 Jan 2021 09:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B8A8990D;
	Fri, 15 Jan 2021 08:15:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FD689D84
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Jan 2021 18:18:52 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id m4so6769696wrx.9
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Jan 2021 10:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:date:in-reply-to
 :message-id:mime-version:content-transfer-encoding;
 bh=PCah/n5rkh/QtCy+v8eMm30PJ5w4gNLWd9gaHy4xfQU=;
 b=f7UNY2cDz+S8bXMqpz9RBnXI0HW5mYqeCcHgUOg5LMxSTy+jJwvWYgPX0HlnRMJI/X
 ivj00WKs6Hob98esMhBFKi2sPy6LiZ3IgIqwwIywMJLdapx2o1z7EQa3bsONKGEnifqM
 sKEVp8xsXNATPsd4J80hvUQpg7A+FX2kF0OMmio4NbG/y/2vYCKWH0wTNz4wbUrGXi/2
 4epDtws8nraqNS9qBIVqkaZ2jZZTPGXXH4Ic9QMql5CQbdKDsmnv4bTZx2HQF4aDk7b6
 b9mopU1dWsK7KZsjz6EbY6RLUYmGSZMlUyMPHx/tQM3tfsOE3TFhZXEOkxbqbsLkO0UU
 qvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
 :in-reply-to:message-id:mime-version:content-transfer-encoding;
 bh=PCah/n5rkh/QtCy+v8eMm30PJ5w4gNLWd9gaHy4xfQU=;
 b=HaseMEjZfKSVqCk9d/K8TMSDCYcaRNtN2tWETZ2wnIzXfutnAPC2MdLNnCajbSu1dm
 Jp4Qj/Vh9U4raMGv8EBNf2JVboDlPm/dLuQt/udrBEC2m1vZUBUQxX3qtIriEU9Lu32Z
 ngC1V0b3kgVPxc0cazRfqJUyUMm0kKN2fvMxPU502ZhhX4Z+dBY4xI73ThPpZV1C3tbd
 gjAJ9U63DexSCf/c76nyY372eicHjQ9zevcZVwUDdGEzn8HXnF7MK9fjwBFpSSwCmVIE
 gzSxQgCJGAuyWrTkhM/gAk3Ry5RBbkIaEX8qX+Xh9ePKYwXQeiw8UmXyxtGnJqY3b7oi
 wkSQ==
X-Gm-Message-State: AOAM533cc6NsuiTe9D/xh0fznUOt9M41pwwo+0XyXzSCcSFVN5OfrSrg
 90VnL9N1ARp4hP6ydybnK93UmQ==
X-Google-Smtp-Source: ABdhPJzzBeSmLxP/bOvQx2acvXsOknE9G+4YnoxmumbkIHtGGvqhehMKCM97cgaXFObAuOEt6c/qXA==
X-Received: by 2002:a5d:5913:: with SMTP id v19mr9228610wrd.207.1610648330834; 
 Thu, 14 Jan 2021 10:18:50 -0800 (PST)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id z6sm9253273wmi.15.2021.01.14.10.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 10:18:49 -0800 (PST)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 16A451FF7E;
 Thu, 14 Jan 2021 18:18:49 +0000 (GMT)
References: <20200623111325.237158-1-keiichiw@chromium.org>
User-agent: mu4e 1.5.7; emacs 28.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 14 Jan 2021 17:55:39 +0000
In-reply-to: <20200623111325.237158-1-keiichiw@chromium.org>
Message-ID: <87czy7l6uu.fsf@linaro.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 15 Jan 2021 08:14:59 +0000
Subject: Re: [Spice-devel] [virtio-dev] [PATCH RFC v4 0/1] Virtio Video
 Device Specification
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
Cc: mst@redhat.com, hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com,
 Ruchika Gupta <ruchika.gupta@linaro.org>, posciak@chromium.org,
 virtio-dev@lists.oasis-open.org, dstaessens@chromium.org, nicolas@ndufresne.ca,
 Peter Griffin <peter.griffin@linaro.org>, spice-devel@lists.freedesktop.org,
 dgreid@chromium.org, linux-media@vger.kernel.org, alexlau@chromium.org,
 saket.sinha89@gmail.com, marcheu@chromium.org,
 samiullah.khawaja@opensynergy.com, kiran.pawar@opensynergy.com,
 acourbot@chromium.org, tfiga@chromium.org,
 Mike Holmes <mike.holmes@linaro.org>, stevensd@chromium.org, daniel@ffwll.ch,
 dmitry.sepp@opensynergy.com, fziglio@redhat.com, egranata@google.com,
 kraxel@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CktlaWljaGkgV2F0YW5hYmUgPGtlaWljaGl3QGNocm9taXVtLm9yZz4gd3JpdGVzOgoKPiBUaGlz
IGlzIHRoZSB2NCBSRkMgb2YgdmlydGlvIHZpZGVvIGRldmljZSBzcGVjaWZpY2F0aW9uLgo+IFBE
RiB2ZXJzaW9ucyBhcmUgYXZhaWxhYmxlIGF0IFsxLCAyXS4KPgo+IE5vdGUgdGhhdCB0aGlzIHBh
dGNoIGRlcGVuZHMgb24gYSByZWNlbnQgcGF0Y2hzZXQgIkNyb3NzLWRldmljZSByZXNvdXJjZQo+
IHNoYXJpbmciIFszXS4KPgo+IEhlcmUgaXMgYSBsaXN0IG9mIG1ham9yIGNoYW5nZXMgZnJvbSB2
MzoKPiAqIFJlZGVzaW5nbmVkIHN0cnVjdCBkZWZpbml0aW9ucyBmb3IgZWFjaCBjb21tYW5kIGFu
ZCByZXF1ZXN0IGJhc2VkIG9uCj4gICBkaXNjdXNzaW9ucyBhdCBbNF0uCj4gKiBSZW5hbWVkIGNv
bW1hbmRzL3N0cnVjdHMvZW51bXMgdG8gbW9yZSBkZXNjcmlwdGl2ZSBuYW1lcy4KPiAqIEhhZCBk
aWZmZXJlbnQgc3RydWN0cyBhbmQgZmllbGRzIGZvciBpbWFnZSBmb3JtYXRzIGFuZCBiaXRzdHJl
YW0gZm9ybWF0cy4KPiAqIEFkZGVkIG1vcmUgZGV0YWlsZWQgc3BlY2lmaWNhdGlvbiBmb3Igc3Vw
cG9ydGVkIHZpZGVvIGNvZGVjcy4KPiAqIE1hZGUgc3RyZWFtX2lkIGJlIGFsbG9jYXRlZCBieSB0
aGUgZGV2aWNlLgo+ICogSGFkIGEgc2luZ2xlIHBhcmFtZXRlciBzdHJ1Y3QgcGVyLXN0cmVhbSBp
bnN0ZWFkIG9mIHBlci1xdWV1ZSBwYXJhbWV0ZXJzIGFuZAo+ICAgY29udHJvbHMuCj4gKiBBbGxv
d2VkIHRoZSBkcml2ZXIgdG8gc3BlY2lmeSB0aGUgbnVtYmVyIG9mIGJ1ZmZlcnMgdG8gdXNlIHZp
YQo+ICAgImN1cl97aW1hZ2UsYml0c3RyZWFtfV9idWZmZXJzIi4KPiAqIFJlbmFtZWQgUkVTT1VS
Q0VfQ1JFQVRFIGNvbW1hbmQgdG8gUkVTT1VSQ0VfQVRUQUNIIGNvbW1hbmQgYW5kIGFsbG93IHRo
ZQo+ICAgZHJpdmVyIHRvIHVzZSB0aGlzIGNvbW1hbmQgd2hlbiByZXBsYWNpbmcgYmFja2luZyBt
ZW1vcmllcyBhcyB3ZWxsLgo+Cj4gWzVdIGlzIHRoZSBkaWZmIG9mIHRoZSBoZWFkZXIgZmlsZSBm
cm9tIHYzLiBOb3RlIHRoYXQgaXQgb25seSBjb250YWlucyBjaGFuZ2VzCj4gaW4gdGhlIGhlYWRl
ci4gV2UgaGF2ZW4ndCB1cGRhdGVkIHRoZSBkcml2ZXIgbm9yIGRldmljZSBpbXBsZW1lbnRhdGlv
biB0byBmb2N1cwo+IG9uIHByb3RvY29sIGRlc2lnbiBkaXNjdXNzaW9uIGZpcnN0Lgo+Cj4gV2hp
bGUgaXQgbWF5IGFwcGVhciB0aGF0IG1hbnkgcGFydHMgaGF2ZSBiZWVuIGNoYW5nZWQgc2luY2Ug
dGhlIHByZXZpb3VzCj4gcmV2aXNpb24sIHRoZXNlIGNoYW5nZXMgYXJlIHRvIGFkZHJlc3MgdGhl
IGlzc3VlcyByYWlzZWQgaW4gcHJldmlvdXMgZGlzY3Vzc2lvbnMKPiBvci9hbmQgdG8gbWFrZSB0
aGUgcHJvdG9jb2wgc2ltcGxlciBhbmQgZWFzaWVyIHRvIHByZXZlbnQgbWlzdXNlLgo+IEknZCBh
cHByZWNpYXRlIGFueSB0eXBlcyBvZiBmZWVkYmFjay4KPgo+IEJlc3QgcmVnYXJkcywKPiBLZWlp
Y2hpCj4KPiBbMV0gKGZ1bGwpOiBodHRwczovL2RyaXZlLmdvb2dsZS5jb20vZmlsZS9kLzFEaU9K
WmZVSjV3dkZ0bk5GUWljeHQwemtwNE9iMW85Qy92aWV3P3VzcD1zaGFyaW5nCj4gWzJdIChvbmx5
IHZpZGVvIHNlY3Rpb24pOiBodHRwczovL2RyaXZlLmdvb2dsZS5jb20vZmlsZS9kLzE4OHVBa0lX
RTBCc1hFVEVDZXo5OHk1ZkpLdzhyc2xqMy92aWV3P3VzcD1zaGFyaW5nCj4gWzNdIGh0dHBzOi8v
bGlzdHMub2FzaXMtb3Blbi5vcmcvYXJjaGl2ZXMvdmlydGlvLWNvbW1lbnQvMjAyMDAzL21zZzAw
MDM1Lmh0bWwKPiBbNF0gaHR0cHM6Ly9tYXJrbWFpbC5vcmcvdGhyZWFkL2M2aDNlM3puNjQ3cWxp
M3cKPiBbNV0KPiBodHRwczovL2Nocm9taXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tL2MvY2hy
b21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy8yMTY0NDExCgpIaSBLZWlpY2hpLAoKSSB3YW50
ZWQgdG8gYXNrIHdoYXQgdGhlIGN1cnJlbnQgc3RhdHVzIG9mIHRoaXMgc3BlYyB3YXMuIEFyZSB5
b3UKcGxhbm5pbmcgdG8gc3VibWl0IGEgbmV3IHJldmlzaW9uIG9mIHRoZSBzcGVjaWZpY2F0aW9u
IGR1ZSBvciBhcmUgdGhpbmdzCmZhaXJseSBzdGFibGUgbm93PwoKV2UgYXJlIHN0YXJ0aW5nIHRv
IHRoaW5rIGFib3V0IG5leHQgc3RlcHMgZm9yIHZpcnR1YWxpc2VkIHZpZGVvIGFzIHBhcnQKb2Yg
TGluYXJvJ3MgU3RyYXRvcyB3b3JrLiBTcGVjaWZpY2FsbHkgd2UgYXJlIHRoaW5raW5nIGFib3V0
CmltcGxlbWVudGluZyBiYWNrZW5kcyBhbmQgZ2V0dGluZyBhIHN0YWNrIHVwIGFuZCBydW5uaW5n
IHdoaWNoIHdlIGNhbgp1c2UgdG8gZXhwZXJpbWVudCB3aXRoIG11bHRpcGxlIGh5cGVydmlzb3Jz
IGFuZCBWTSBkZXBsb3ltZW50CmFwcHJvYWNoZXMuCgpMb25nZXIgdGVybSBnb2FscyBpbmNsdWRl
ZCBsb29raW5nIGF0IGhvdyB0byBpbnRlZ3JhdGUgdmlydGlvLXZpZGVvIHdpdGgKYSBzZWN1cmUg
d29ybGQgb24gQVJNIChlLmcuIGZlZWQgdmlkZW8gZGF0YSB0byBhIHNlY3VyZSB3b3JsZCBkZXZp
Y2UgZm9yCnBsYXliYWNrIHZpYSB2aXJ0aW8pLiBBcyBwYXJ0IG9mIHRoYXQgd2Ugd2lsbCBhbHNv
IGJlIGxvb2tpbmcgYXQgaG93IHRvCm1pbmltaXNlIHRoZSBtZW1vcnkgcHJvZmlsZSBvZiB0aGUg
YmFja2VuZCB0byBkbyB0aGlzLgoKTG9va2luZyBhdCB0aGUgdmlydGlvLXNwZWMgcmVwbyBpdCBs
b29rcyBsaWtlIHRoZSBjcm9zcy1kZXZpY2UgcmVzb3VyY2UKc2hhcmluZyBpcyBub3cgbWVyZ2Vk
OgoKICA4N2ZhNmI1ICogdmlydGlvLWdwdTogYWRkIHN1cHBvcnQgZm9yIG1hcHBpbmcvdW5tYXBw
aW5nIGJsb2IgcmVzb3VyY2VzCiAgODllN2ViNSAqIHZpcnRpby1ncHU6IGFkZCByZXNvdXJjZSBj
cmVhdGUgYmxvYgogIDE2MjU3OGIgKiB2aXJ0aW8tZ3B1OiBhZGQgdGhlIGFiaWxpdHkgdG8gZXhw
b3J0IHJlc291cmNlcwogIDY4ZjY2ZmYgKiBjb250ZW50OiBkZWZpbmUgd2hhdCBhbiBleHBvcnRl
ZCBvYmplY3QgaXMKCmFyZSB0aGVyZSBhbnkgb3RoZXIgcHJlcmVxdWlzaXRlcz8KCkZyb20gYSBi
YWNrZW5kIGltcGxlbWVudGF0aW9uIHBvaW50IG9mIHZpZXcgaXQgbWFrZXMgc2Vuc2UgdG8gd2Fp
dCB1bnRpbAp0aGVyZSBpcyBhIHdvcmtpbmcgZnJvbnRlbmQgZHJpdmVyIHVwLXN0cmVhbWVkIGlu
dG8gdGhlIGtlcm5lbC4gSSBndWVzcwp0aGF0IGlzIGJsb2NrZWQgb24gdGhlIGZpbmFsIGNhbGwg
Zm9yIHZvdGUgb24gdGhlIHZpcnRpbyBzcGVjPwoKSSdtIHN1cmUgdGhlcmUgaXMgc2NvcGUgZm9y
IHBhcmFsbGVsaXNtIGhlcmUgYnV0IEkgd2FudGVkIHRvIGdldCBhIHNlbnNlCm9mIHRoZSBjdXJy
ZW50IGRpcmVjdGlvbiBiZWZvcmUgZW1iYXJraW5nIG9uIHdvcmsgdGhhdCB3b3VsZCByZXF1aXJl
IGEKYmlnIHJlLXdyaXRlIGRvd24gdGhlIGxpbmUuCgpSZWdhcmRzLAoKLS0gCkFsZXggQmVubsOp
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
