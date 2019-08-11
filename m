Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E19891A3
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 14:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F606E33E;
	Sun, 11 Aug 2019 12:12:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6166E33D
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:12:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 07EED3B74C
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:12:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F39086012D
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 12:12:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7BCB18089C8;
 Sun, 11 Aug 2019 12:12:20 +0000 (UTC)
Date: Sun, 11 Aug 2019 08:12:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1029345715.5453659.1565525540653.JavaMail.zimbra@redhat.com>
In-Reply-To: <97647106-04d4-662c-5b8d-baacafab2ed6@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-3-fziglio@redhat.com>
 <97647106-04d4-662c-5b8d-baacafab2ed6@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.18]
Thread-Topic: Use (u)intptr_t for virtual addresses
Thread-Index: tLh5GqFMOiO4Ji3i+KdG8IkK3ybHwg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Sun, 11 Aug 2019 12:12:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] Use (u)intptr_t for virtual
 addresses
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0089389773=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0089389773==
Content-Type: multipart/alternative; 
	boundary="----=_Part_5453658_1075272460.1565525540653"

------=_Part_5453658_1075272460.1565525540653
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

> Hi
> On 7/23/19 11:22 AM, Frediano Ziglio wrote:

> > When to Say "a" or "an" | Pronunciation | EnglishClub
> 
> > https://www.englishclub.com/pronunciation/a-an.htm
> 
> > On LLP64 platforms (like Windows) a virtual address cannot
> 
> > be represented by a "unsigned long" type, so use uintptr_t
> 
> > which is defined as a integral type large like a pointer.
> 

> This sentence sounds a bit odd to me

> should be integer?
C/C++ documentation classify these types as integral, not integer. 

> also s/a/an
fixed, thanks 

> > "address_delta" is a difference of pointers so use same
> 
> > type size.
> 

> Not a big deal but wouldn't be preferable to be consistent with addr_delta?
It sounds reasonable, although the value came from "addr_delta" field of QXLDevMemSlot 
which is part of SPICE ABI (so cannot be changed). 

> Snir.

> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com> ---
> 
> > server/memslot.c       | 22 ++++++++++++----------
> 
> > server/memslot.h       | 20 ++++++++++----------
> 
> > server/red-parse-qxl.c |  2 +-
> 
> > server/spice-qxl.h     |  4 ++--
> 
> > 4 files changed, 25 insertions(+), 23 deletions(-)
> 

> > diff --git a/server/memslot.c b/server/memslot.c
> 
> > index 2a1771b02..182d2b7e9 100644
> 
> > --- a/server/memslot.c
> 
> > +++ b/server/memslot.c
> 
> > @@ -21,7 +21,7 @@
> 
> > 
> 
> > #include "memslot.h"
> 
> > 
> 
> > -static unsigned long __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL
> > addr)
> 
> > +static uintptr_t __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
> 
> > {
> 
> > return addr & info->memslot_clean_virt_mask;
> 
> > }
> 
> > @@ -37,7 +37,8 @@ static void print_memslots(RedMemSlotInfo *info)
> 
> > !info->mem_slots[i][x].virt_end_addr) {
> 
> > continue;
> 
> > }
> 
> > -            printf("id %d, group %d, virt start %lx, virt end %lx,
> > generation %u, delta %lx\n",
> 
> > +            printf("id %d, group %d, virt start %" PRIxPTR ", virt end %"
> > PRIxPTR ", generation %u,"
> 
> > +                   " delta %" PRIxPTR "\n",
> 
> > x, i, info->mem_slots[i][x].virt_start_addr,
> 
> > info->mem_slots[i][x].virt_end_addr, info->mem_slots[i][x].generation,
> 
> > info->mem_slots[i][x].address_delta);
> 
> > @@ -46,7 +47,7 @@ static void print_memslots(RedMemSlotInfo *info)
> 
> > }
> 
> > 
> 
> > /* return 1 if validation successfull, 0 otherwise */
> 
> > -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int
> > slot_id,
> 
> > +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int
> > slot_id,
> 
> > uint32_t add_size, uint32_t group_id)
> 
> > {
> 
> > MemSlot *slot;
> 
> > @@ -60,8 +61,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned
> > long virt, int slot_id,
> 
> > if (virt < slot->virt_start_addr || (virt + add_size) >
> > slot->virt_end_addr)
> > {
> 
> > print_memslots(info);
> 
> > spice_warning("virtual address out of range"
> 
> > -              "    virt=0x%lx+0x%x slot_id=%d group_id=%d\n"
> 
> > -              "    slot=0x%lx-0x%lx delta=0x%lx",
> 
> > +              "    virt=0x%" G_GINTPTR_MODIFIER "x+0x%x slot_id=%d
> > group_id=%d\n"
> 
> > +              "    slot=0x%" G_GINTPTR_MODIFIER "x-0x%" G_GINTPTR_MODIFIER
> > "x"
> 
> > +              " delta=0x%" G_GINTPTR_MODIFIER "x",
> 
> > virt, add_size, slot_id, group_id,
> 
> > slot->virt_start_addr, slot->virt_end_addr, slot->address_delta);
> 
> > return 0;
> 
> > @@ -69,9 +71,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned
> > long virt, int slot_id,
> 
> > return 1;
> 
> > }
> 
> > 
> 
> > -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
> 
> > -                                    unsigned long virt, int slot_id,
> 
> > -                                    uint32_t group_id)
> 
> > +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
> 
> > +                                uintptr_t virt, int slot_id,
> 
> > +                                uint32_t group_id)
> 
> > {
> 
> > MemSlot *slot;
> 
> > 
> 
> > @@ -91,7 +93,7 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL
> > addr, uint32_t add_size
> 
> > {
> 
> > int slot_id;
> 
> > int generation;
> 
> > -    unsigned long h_virt;
> 
> > +    uintptr_t h_virt;
> 
> > 
> 
> > MemSlot *slot;
> 
> > 
> 
> > @@ -171,7 +173,7 @@ void memslot_info_destroy(RedMemSlotInfo *info)
> 
> > }
> 
> > 
> 
> > void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id,
> > uint32_t slot_id,
> 
> > -                           uint64_t addr_delta, unsigned long virt_start,
> > unsigned long virt_end,
> 
> > +                           uint64_t addr_delta, uintptr_t virt_start,
> > uintptr_t virt_end,
> 
> > uint32_t generation)
> 
> > {
> 
> > spice_assert(info->num_memslots_groups > slot_group_id);
> 
> > diff --git a/server/memslot.h b/server/memslot.h
> 
> > index 00728c4b6..45381feb9 100644
> 
> > --- a/server/memslot.h
> 
> > +++ b/server/memslot.h
> 
> > @@ -25,9 +25,9 @@
> 
> > 
> 
> > typedef struct MemSlot {
> 
> > int generation;
> 
> > -    unsigned long virt_start_addr;
> 
> > -    unsigned long virt_end_addr;
> 
> > -    long address_delta;
> 
> > +    uintptr_t virt_start_addr;
> 
> > +    uintptr_t virt_end_addr;
> 
> > +    intptr_t address_delta;
> 
> > } MemSlot;
> 
> > 
> 
> > typedef struct RedMemSlotInfo {
> 
> > @@ -39,8 +39,8 @@ typedef struct RedMemSlotInfo {
> 
> > uint8_t memslot_id_shift;
> 
> > uint8_t memslot_gen_shift;
> 
> > uint8_t internal_groupslot_id;
> 
> > -    unsigned long memslot_gen_mask;
> 
> > -    unsigned long memslot_clean_virt_mask;
> 
> > +    uintptr_t memslot_gen_mask;
> 
> > +    uintptr_t memslot_clean_virt_mask;
> 
> > } RedMemSlotInfo;
> 
> > 
> 
> > static inline int memslot_get_id(RedMemSlotInfo *info, uint64_t addr)
> 
> > @@ -53,11 +53,11 @@ static inline int memslot_get_generation(RedMemSlotInfo
> > *info, uint64_t addr)
> 
> > return (addr >> info->memslot_gen_shift) & info->memslot_gen_mask;
> 
> > }
> 
> > 
> 
> > -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int
> > slot_id,
> 
> > +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int
> > slot_id,
> 
> > uint32_t add_size, uint32_t group_id);
> 
> > -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
> 
> > -                                    unsigned long virt, int slot_id,
> 
> > -                                    uint32_t group_id);
> 
> > +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
> 
> > +                                uintptr_t virt, int slot_id,
> 
> > +                                uint32_t group_id);
> 
> > void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t
> > add_size,
> 
> > int group_id);
> 
> > 
> 
> > @@ -68,7 +68,7 @@ void memslot_info_init(RedMemSlotInfo *info,
> 
> > uint8_t internal_groupslot_id);
> 
> > void memslot_info_destroy(RedMemSlotInfo *info);
> 
> > void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id,
> > uint32_t slot_id,
> 
> > -                           uint64_t addr_delta, unsigned long virt_start,
> > unsigned long virt_end,
> 
> > +                           uint64_t addr_delta, uintptr_t virt_start,
> > uintptr_t virt_end,
> 
> > uint32_t generation);
> 
> > void memslot_info_del_slot(RedMemSlotInfo *info, uint32_t slot_group_id,
> > uint32_t slot_id);
> 
> > void memslot_info_reset(RedMemSlotInfo *info);
> 
> > diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
> 
> > index eb2c0b538..01fd60580 100644
> 
> > --- a/server/red-parse-qxl.c
> 
> > +++ b/server/red-parse-qxl.c
> 
> > @@ -1335,7 +1335,7 @@ static bool red_get_message(QXLInstance
> > *qxl_instance,
> > RedMemSlotInfo *slots, in
> 
> > {
> 
> > QXLMessage *qxl;
> 
> > int memslot_id;
> 
> > -    unsigned long len;
> 
> > +    uintptr_t len;
> 
> > uint8_t *end;
> 
> > 
> 
> > /*
> 
> > diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> 
> > index 2f47910b9..5349d9275 100644
> 
> > --- a/server/spice-qxl.h
> 
> > +++ b/server/spice-qxl.h
> 
> > @@ -187,8 +187,8 @@ struct QXLDevMemSlot {
> 
> > uint32_t slot_group_id;
> 
> > uint32_t slot_id;
> 
> > uint32_t generation;
> 
> > -    unsigned long virt_start;
> 
> > -    unsigned long virt_end;
> 
> > +    uintptr_t virt_start;
> 
> > +    uintptr_t virt_end;
> 
> > uint64_t addr_delta;
> 
> > uint32_t qxl_ram_size;
> 
> > };
> 

Frediano 

------=_Part_5453658_1075272460.1565525540653
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><body><div style="font-family: times new roman, new york, times, serif; font-size: 12pt; color: #000000"><div><br></div><blockquote style="border-left:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><div><br></div><p>Hi<br></p><div class="moz-cite-prefix">On 7/23/19 11:22 AM, Frediano Ziglio
      wrote:<br></div><blockquote cite="mid:20190723082230.10381-3-fziglio@redhat.com"><pre class="moz-quote-pre"><a href="https://www.englishclub.com/pronunciation/a-an.htm" target="_blank"><h3 class="LC20lb"><span dir="ltr">When to Say "a" or "an" | Pronunciation | EnglishClub</span></h3>
<div class="TbwUpd"><cite class="iUh30"><span dir="ltr">https://www.englishclub.com/pronunciation/a-an.htm</span></cite></div></a>On LLP64 platforms (like Windows) a virtual address cannot
be represented by a "unsigned long" type, so use uintptr_t
which is defined as a integral type large like a pointer.</pre></blockquote><p><br></p><p>This sentence sounds a bit odd to me<br></p><p>should be integer?</p></blockquote><div>C/C++ documentation classify these types as integral, not integer.<br></div><blockquote style="border-left:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><p>also s/a/an</p></blockquote><div>fixed, thanks<br></div><blockquote style="border-left:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><p><br></p><p><br></p><blockquote cite="mid:20190723082230.10381-3-fziglio@redhat.com"><pre class="moz-quote-pre">"address_delta" is a difference of pointers so use same
type size.
</pre></blockquote><p><br></p><p>Not a big deal but wouldn't be preferable to be consistent with
      addr_delta?</p></blockquote><div>It sounds reasonable, although the value came from "addr_delta" field of QXLDevMemSlot<br></div><div>which is part of SPICE ABI (so cannot be changed).<br></div><blockquote style="border-left:2px solid #1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;"><p>Snir.<br></p><blockquote cite="mid:20190723082230.10381-3-fziglio@redhat.com"><pre class="moz-quote-pre">Signed-off-by: Frediano Ziglio <a class="moz-txt-link-rfc2396E" href="mailto:fziglio@redhat.com" target="_blank">&lt;fziglio@redhat.com&gt;</a>
---
 server/memslot.c       | 22 ++++++++++++----------
 server/memslot.h       | 20 ++++++++++----------
 server/red-parse-qxl.c |  2 +-
 server/spice-qxl.h     |  4 ++--
 4 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/server/memslot.c b/server/memslot.c
index 2a1771b02..182d2b7e9 100644
--- a/server/memslot.c
+++ b/server/memslot.c
@@ -21,7 +21,7 @@
 
 #include "memslot.h"
 
-static unsigned long __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
+static uintptr_t __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
 {
     return addr &amp; info-&gt;memslot_clean_virt_mask;
 }
@@ -37,7 +37,8 @@ static void print_memslots(RedMemSlotInfo *info)
                 !info-&gt;mem_slots[i][x].virt_end_addr) {
                 continue;
             }
-            printf("id %d, group %d, virt start %lx, virt end %lx, generation %u, delta %lx\n",
+            printf("id %d, group %d, virt start %" PRIxPTR ", virt end %" PRIxPTR ", generation %u,"
+                   " delta %" PRIxPTR "\n",
                    x, i, info-&gt;mem_slots[i][x].virt_start_addr,
                    info-&gt;mem_slots[i][x].virt_end_addr, info-&gt;mem_slots[i][x].generation,
                    info-&gt;mem_slots[i][x].address_delta);
@@ -46,7 +47,7 @@ static void print_memslots(RedMemSlotInfo *info)
 }
 
 /* return 1 if validation successfull, 0 otherwise */
-int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
+int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
                           uint32_t add_size, uint32_t group_id)
 {
     MemSlot *slot;
@@ -60,8 +61,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
     if (virt &lt; slot-&gt;virt_start_addr || (virt + add_size) &gt; slot-&gt;virt_end_addr) {
         print_memslots(info);
         spice_warning("virtual address out of range"
-              "    virt=0x%lx+0x%x slot_id=%d group_id=%d\n"
-              "    slot=0x%lx-0x%lx delta=0x%lx",
+              "    virt=0x%" G_GINTPTR_MODIFIER "x+0x%x slot_id=%d group_id=%d\n"
+              "    slot=0x%" G_GINTPTR_MODIFIER "x-0x%" G_GINTPTR_MODIFIER "x"
+              " delta=0x%" G_GINTPTR_MODIFIER "x",
               virt, add_size, slot_id, group_id,
               slot-&gt;virt_start_addr, slot-&gt;virt_end_addr, slot-&gt;address_delta);
         return 0;
@@ -69,9 +71,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
     return 1;
 }
 
-unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
-                                    unsigned long virt, int slot_id,
-                                    uint32_t group_id)
+uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
+                                uintptr_t virt, int slot_id,
+                                uint32_t group_id)
 {
     MemSlot *slot;
 
@@ -91,7 +93,7 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size
 {
     int slot_id;
     int generation;
-    unsigned long h_virt;
+    uintptr_t h_virt;
 
     MemSlot *slot;
 
@@ -171,7 +173,7 @@ void memslot_info_destroy(RedMemSlotInfo *info)
 }
 
 void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
-                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
+                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
                            uint32_t generation)
 {
     spice_assert(info-&gt;num_memslots_groups &gt; slot_group_id);
diff --git a/server/memslot.h b/server/memslot.h
index 00728c4b6..45381feb9 100644
--- a/server/memslot.h
+++ b/server/memslot.h
@@ -25,9 +25,9 @@
 
 typedef struct MemSlot {
     int generation;
-    unsigned long virt_start_addr;
-    unsigned long virt_end_addr;
-    long address_delta;
+    uintptr_t virt_start_addr;
+    uintptr_t virt_end_addr;
+    intptr_t address_delta;
 } MemSlot;
 
 typedef struct RedMemSlotInfo {
@@ -39,8 +39,8 @@ typedef struct RedMemSlotInfo {
     uint8_t memslot_id_shift;
     uint8_t memslot_gen_shift;
     uint8_t internal_groupslot_id;
-    unsigned long memslot_gen_mask;
-    unsigned long memslot_clean_virt_mask;
+    uintptr_t memslot_gen_mask;
+    uintptr_t memslot_clean_virt_mask;
 } RedMemSlotInfo;
 
 static inline int memslot_get_id(RedMemSlotInfo *info, uint64_t addr)
@@ -53,11 +53,11 @@ static inline int memslot_get_generation(RedMemSlotInfo *info, uint64_t addr)
     return (addr &gt;&gt; info-&gt;memslot_gen_shift) &amp; info-&gt;memslot_gen_mask;
 }
 
-int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
+int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
                           uint32_t add_size, uint32_t group_id);
-unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
-                                    unsigned long virt, int slot_id,
-                                    uint32_t group_id);
+uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
+                                uintptr_t virt, int slot_id,
+                                uint32_t group_id);
 void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size,
                        int group_id);
 
@@ -68,7 +68,7 @@ void memslot_info_init(RedMemSlotInfo *info,
                        uint8_t internal_groupslot_id);
 void memslot_info_destroy(RedMemSlotInfo *info);
 void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
-                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
+                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
                            uint32_t generation);
 void memslot_info_del_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id);
 void memslot_info_reset(RedMemSlotInfo *info);
diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
index eb2c0b538..01fd60580 100644
--- a/server/red-parse-qxl.c
+++ b/server/red-parse-qxl.c
@@ -1335,7 +1335,7 @@ static bool red_get_message(QXLInstance *qxl_instance, RedMemSlotInfo *slots, in
 {
     QXLMessage *qxl;
     int memslot_id;
-    unsigned long len;
+    uintptr_t len;
     uint8_t *end;
 
     /*
diff --git a/server/spice-qxl.h b/server/spice-qxl.h
index 2f47910b9..5349d9275 100644
--- a/server/spice-qxl.h
+++ b/server/spice-qxl.h
@@ -187,8 +187,8 @@ struct QXLDevMemSlot {
     uint32_t slot_group_id;
     uint32_t slot_id;
     uint32_t generation;
-    unsigned long virt_start;
-    unsigned long virt_end;
+    uintptr_t virt_start;
+    uintptr_t virt_end;
     uint64_t addr_delta;
     uint32_t qxl_ram_size;
 };
</pre></blockquote></blockquote><div>Frediano</div><div><br></div></div></body></html>
------=_Part_5453658_1075272460.1565525540653--

--===============0089389773==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0089389773==--
