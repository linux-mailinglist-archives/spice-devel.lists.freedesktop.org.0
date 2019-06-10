Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2DF3B5D7
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 15:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5596789145;
	Mon, 10 Jun 2019 13:14:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3069489145
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 13:14:54 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id 207so3568359wma.1
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 06:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=FNVZCDRMUJcgU4lG5/csD4EpDa/tegm1PEpnVZIocNE=;
 b=mSYgzjzqh45FmvY4Dk0E0jIc+4Si/UYuUIK7m/BDwtK+/KOnhTF+jZ0ljuBtTGnCxZ
 4oGsbOGVgK6tZd+KoR0O/OVyTbyKbDm9GevJSjKxPSokF0pZ8ckM1q6h6QP3jHIfsTGF
 oEZDFtCIcNKi0+0YlsFnvWc850+UlhOTpdp+jcCpZurbVQNfWnJ3fitwBMEPXckVobNK
 4c5PKE6dyiVYsMuEiTUgJKcImj4QrTCtsA/ogc36kxOP7jTAOc9d3OCHmvjJIgANHkgf
 QcDPAZWoGsZ29yV2CIRgVtGgOGVKKMC2C83llR9/h/A5jQgmd0jCG6a1mxrIESYpTCaj
 gV3A==
X-Gm-Message-State: APjAAAVbHY3AOuy88NCGRLSh99wP0dlHaqwHVuYmVcDifrTUh6kYQUmB
 EB7aFNvvh5C7cg+dCLozXu1XM08qpcUoig==
X-Google-Smtp-Source: APXvYqyql1s31bC2vPrQc+oq0AQzNfQmzs4Nkt8k+n8D0tQgm6XkHU1su8nborw9hRi8QqS4wceifg==
X-Received: by 2002:a1c:968c:: with SMTP id y134mr12508930wmd.75.1560172492346; 
 Mon, 10 Jun 2019 06:14:52 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id p3sm12015275wrd.47.2019.06.10.06.14.51
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 06:14:51 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190527080409.3430-1-ssheribe@redhat.com>
 <20190610121527.24095-1-victortoso@redhat.com>
 <20190610124533.iensfzeie6kna43v@toolbox>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <90f0ac59-4eae-2cfa-c9b3-e8da56811698@redhat.com>
Date: Mon, 10 Jun 2019 16:14:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610124533.iensfzeie6kna43v@toolbox>
Content-Language: en-US
Subject: Re: [Spice-devel] [spice-gtk v4] Adjust to window scaling
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
Content-Type: multipart/mixed; boundary="===============1252503989=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1252503989==
Content-Type: multipart/alternative;
 boundary="------------F14E7E450BBFA0B602AB0E8F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F14E7E450BBFA0B602AB0E8F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 6/10/19 3:45 PM, Victor Toso wrote:
> Hi,
>
> On Mon, Jun 10, 2019 at 12:15:27PM +0000, Victor Toso wrote:
>> From: Snir Sheriber <ssheribe@redhat.com>
>>
>> When GDK_SCALE is != 1 and egl is used, the image presented does not
>> fit to the window (scale of 2 is often used with hidpi monitors).
>> Usually this is not a problem since all components are adjusted by
>> gdk/gtk but with egl, pixel-based data is not being scaled. In this
>> case window's scale value can be used in order to determine whether
>> to use a pixel resource with higher resolution data.
>>
>> In order to reproduce the problem set spice with virgl/Intel-vGPU
>> and run spice-gtk with GDK_SCALE=2
>>
>> This issue was also reported at freedesktop gitlab repo:
>> https://gitlab.freedesktop.org/spice/spice-gtk/issues/99
>> ---
>>   src/spice-widget-egl.c |  8 ++++----
>>   src/spice-widget.c     | 31 +++++++++++++++++++++++--------
>>   2 files changed, 27 insertions(+), 12 deletions(-)
>>
>> diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
>> index 43fccd7..4c2a58e 100644
>> --- a/src/spice-widget-egl.c
>> +++ b/src/spice-widget-egl.c
>> @@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *display, GdkWindow *win, GError
>>       DISPLAY_DEBUG(display, "egl realize");
>>       if (!spice_widget_init_egl_win(display, win, err))
>>           return FALSE;
>> -
>> -    spice_egl_resize_display(display, gdk_window_get_width(win),
>> -                             gdk_window_get_height(win));
>> +    gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +    spice_egl_resize_display(display, gdk_window_get_width(win) * scale_factor,
>> +                             gdk_window_get_height(win) * scale_factor);
>>   
>>       return TRUE;
>>   }
>> @@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *display)
>>   }
>>   
>>   G_GNUC_INTERNAL
>> -void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
>> +void spice_egl_resize_display(SpiceDisplay *display, int w, int h) // w and h should be adjusted to gdk scaling
> Why not a comment before the function declaration?
>
>>   {
>>       SpiceDisplayPrivate *d = display->priv;
>>       int prog;
>> diff --git a/src/spice-widget.c b/src/spice-widget.c
>> index 1f2a154..a2651ff 100644
>> --- a/src/spice-widget.c
>> +++ b/src/spice-widget.c
>> @@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *display, bool enabled)
>>       }
>>   
>>       if (enabled && d->egl.context_ready) {
>> -        spice_egl_resize_display(display, d->ww, d->wh);
>> +        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * scale_factor);
>>       }
>>   
>>       d->egl.enabled = enabled;
>> @@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *display,
>>       SpiceDisplayPrivate *d = display->priv;
>>       int display_x, display_y, display_w, display_h;
>>       double is;
>> +    gint scale_factor = 1;
>>   
>>       spice_display_get_scaling(display, NULL,
>>                                 &display_x, &display_y,
>>                                 &display_w, &display_h);
>> -
>> +#if HAVE_EGL
>> +        if (egl_enabled(d)) {
>> +            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        }
>> +#endif
> I don't think this #if HAVE_EGL is needed because that's in
> egl_enabled() too, in case egl is disabled it should always
> return false which I hope compiler can optimize...
>
>>       /* For input we need a different scaling factor in order to
>>          be able to reach the full width of a display. For instance, consider
>>          a display of 100 pixels showing in a window 10 pixels wide. The normal
>> @@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *display,
>>          coordinates in the inverse direction (window -> display) as the fb size
>>          (display -> window).
>>       */
>> -    is = (double)(d->area.width-1) / (double)(display_w-1);
>> +    is = ((double)(d->area.width-1) / (double)(display_w-1)) * scale_factor;
>>   
>>       window_x -= display_x;
>>       window_y -= display_y;
>> @@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, GtkAllocation *conf, gpointer data)
>>           d->wh = conf->height;
>>           recalc_geometry(widget);
>>   #if HAVE_EGL
>> -        if (egl_enabled(d))
>> -            spice_egl_resize_display(display, conf->width, conf->height);
>> +        if (egl_enabled(d)) {
>> +            gint scale_factor = gtk_widget_get_scale_factor(widget);
>> +            spice_egl_resize_display(display, conf->width * scale_factor, conf->height * scale_factor);
>> +        }
> Indentation is wrong


Will be fixed.


>
>>   #endif
>>       }
>>   
>> @@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *display,
>>       int ww, wh;
>>       int x, y, w, h;
>>       double s;
>> +    gint scale_factor = 1;
>>   
>>       if (gtk_widget_get_realized (GTK_WIDGET(display))) {
>> -        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display));
>> -        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display));
>> +#if HAVE_EGL
>> +        if (egl_enabled(d)) {
>> +            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        }
>> +#endif
> .. same here but I haven't tested this version nor checked the
> assembly code so, take this as suggestion only :)


This is indeed not necessary.

Will be removed, Thanks!


>
> Acked-by: Victor Toso <victortoso@redhat.com>
>
>> +        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display)) * scale_factor;
>> +        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display)) * scale_factor;
>>       } else {
>>           ww = fbw;
>>           wh = fbh;
>> @@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDisplay *display)
>>               g_clear_error(&err);
>>           }
>>   
>> -        spice_egl_resize_display(display, d->ww, d->wh);
>> +        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * scale_factor);
>>       }
>>   #endif
>>   
>> -- 
>> 2.20.1
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--------------F14E7E450BBFA0B602AB0E8F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/10/19 3:45 PM, Victor Toso wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20190610124533.iensfzeie6kna43v@toolbox">
      <pre class="moz-quote-pre" wrap="">Hi,

On Mon, Jun 10, 2019 at 12:15:27PM +0000, Victor Toso wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">From: Snir Sheriber <a class="moz-txt-link-rfc2396E" href="mailto:ssheribe@redhat.com">&lt;ssheribe@redhat.com&gt;</a>

When GDK_SCALE is != 1 and egl is used, the image presented does not
fit to the window (scale of 2 is often used with hidpi monitors).
Usually this is not a problem since all components are adjusted by
gdk/gtk but with egl, pixel-based data is not being scaled. In this
case window's scale value can be used in order to determine whether
to use a pixel resource with higher resolution data.

In order to reproduce the problem set spice with virgl/Intel-vGPU
and run spice-gtk with GDK_SCALE=2

This issue was also reported at freedesktop gitlab repo:
<a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/spice/spice-gtk/issues/99">https://gitlab.freedesktop.org/spice/spice-gtk/issues/99</a>
---
 src/spice-widget-egl.c |  8 ++++----
 src/spice-widget.c     | 31 +++++++++++++++++++++++--------
 2 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
index 43fccd7..4c2a58e 100644
--- a/src/spice-widget-egl.c
+++ b/src/spice-widget-egl.c
@@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *display, GdkWindow *win, GError
     DISPLAY_DEBUG(display, "egl realize");
     if (!spice_widget_init_egl_win(display, win, err))
         return FALSE;
-
-    spice_egl_resize_display(display, gdk_window_get_width(win),
-                             gdk_window_get_height(win));
+    gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+    spice_egl_resize_display(display, gdk_window_get_width(win) * scale_factor,
+                             gdk_window_get_height(win) * scale_factor);
 
     return TRUE;
 }
@@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *display)
 }
 
 G_GNUC_INTERNAL
-void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
+void spice_egl_resize_display(SpiceDisplay *display, int w, int h) // w and h should be adjusted to gdk scaling
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Why not a comment before the function declaration?

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> {
     SpiceDisplayPrivate *d = display-&gt;priv;
     int prog;
diff --git a/src/spice-widget.c b/src/spice-widget.c
index 1f2a154..a2651ff 100644
--- a/src/spice-widget.c
+++ b/src/spice-widget.c
@@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *display, bool enabled)
     }
 
     if (enabled &amp;&amp; d-&gt;egl.context_ready) {
-        spice_egl_resize_display(display, d-&gt;ww, d-&gt;wh);
+        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        spice_egl_resize_display(display, d-&gt;ww * scale_factor, d-&gt;wh * scale_factor);
     }
 
     d-&gt;egl.enabled = enabled;
@@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *display,
     SpiceDisplayPrivate *d = display-&gt;priv;
     int display_x, display_y, display_w, display_h;
     double is;
+    gint scale_factor = 1;
 
     spice_display_get_scaling(display, NULL,
                               &amp;display_x, &amp;display_y,
                               &amp;display_w, &amp;display_h);
-
+#if HAVE_EGL
+        if (egl_enabled(d)) {
+            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        }
+#endif
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I don't think this #if HAVE_EGL is needed because that's in
egl_enabled() too, in case egl is disabled it should always
return false which I hope compiler can optimize...

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">     /* For input we need a different scaling factor in order to
        be able to reach the full width of a display. For instance, consider
        a display of 100 pixels showing in a window 10 pixels wide. The normal
@@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *display,
        coordinates in the inverse direction (window -&gt; display) as the fb size
        (display -&gt; window).
     */
-    is = (double)(d-&gt;area.width-1) / (double)(display_w-1);
+    is = ((double)(d-&gt;area.width-1) / (double)(display_w-1)) * scale_factor;
 
     window_x -= display_x;
     window_y -= display_y;
@@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, GtkAllocation *conf, gpointer data)
         d-&gt;wh = conf-&gt;height;
         recalc_geometry(widget);
 #if HAVE_EGL
-        if (egl_enabled(d))
-            spice_egl_resize_display(display, conf-&gt;width, conf-&gt;height);
+        if (egl_enabled(d)) {
+            gint scale_factor = gtk_widget_get_scale_factor(widget);
+            spice_egl_resize_display(display, conf-&gt;width * scale_factor, conf-&gt;height * scale_factor);
+        }
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Indentation is wrong</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Will be fixed.</p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:20190610124533.iensfzeie6kna43v@toolbox">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> #endif
     }
 
@@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *display,
     int ww, wh;
     int x, y, w, h;
     double s;
+    gint scale_factor = 1;
 
     if (gtk_widget_get_realized (GTK_WIDGET(display))) {
-        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display));
-        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display));
+#if HAVE_EGL
+        if (egl_enabled(d)) {
+            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        }
+#endif
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
.. same here but I haven't tested this version nor checked the
assembly code so, take this as suggestion only :)</pre>
    </blockquote>
    <p><br>
    </p>
    <p>This is indeed not necessary.</p>
    <p>Will be removed, Thanks!</p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:20190610124533.iensfzeie6kna43v@toolbox">
      <pre class="moz-quote-pre" wrap="">

Acked-by: Victor Toso <a class="moz-txt-link-rfc2396E" href="mailto:victortoso@redhat.com">&lt;victortoso@redhat.com&gt;</a>

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display)) * scale_factor;
+        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display)) * scale_factor;
     } else {
         ww = fbw;
         wh = fbh;
@@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDisplay *display)
             g_clear_error(&amp;err);
         }
 
-        spice_egl_resize_display(display, d-&gt;ww, d-&gt;wh);
+        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        spice_egl_resize_display(display, d-&gt;ww * scale_factor, d-&gt;wh * scale_factor);
     }
 #endif
 
-- 
2.20.1

_______________________________________________
Spice-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Spice-devel@lists.freedesktop.org">Spice-devel@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/spice-devel">https://lists.freedesktop.org/mailman/listinfo/spice-devel</a>
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">_______________________________________________
Spice-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Spice-devel@lists.freedesktop.org">Spice-devel@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/spice-devel">https://lists.freedesktop.org/mailman/listinfo/spice-devel</a></pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------F14E7E450BBFA0B602AB0E8F--

--===============1252503989==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1252503989==--
