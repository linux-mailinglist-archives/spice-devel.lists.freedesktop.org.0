Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D945514B81
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 16:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED70A8997E;
	Mon,  6 May 2019 14:06:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from nologin.es (mail.nologin.es [217.75.227.232])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6134C8997E
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 14:06:48 +0000 (UTC)
Received: from [62.81.190.65] (account javier.celaya@flexvdi.com HELO javidev)
 by nologin.es (CommuniGate Pro SMTP 6.2.12)
 with ESMTPSA id 33741379; Mon, 06 May 2019 16:06:45 +0200
Message-ID: <255653fe8d85310904ffdf7ae4f401cbc1364361.camel@flexvdi.com>
From: Javier Celaya <javier.celaya@flexvdi.com>
To: Victor Toso <victortoso@redhat.com>
Date: Mon, 06 May 2019 16:06:45 +0200
In-Reply-To: <20190506103744.rib7kipxs3wdtq6x@toolbox>
References: <20190503165200.24328-1-javier.celaya@flexvdi.com>
 <20190506103744.rib7kipxs3wdtq6x@toolbox>
Organization: flexVDI
User-Agent: Evolution 3.32.1 (3.32.1-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Spice-devel] [Spice-Gtk] SpiceSession: Create webdav even with
 NULL shared_dir
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
Cc: spice-devel@lists.freedesktop.org, devel@flexvdi.com
Content-Type: multipart/mixed; boundary="===============1435209324=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1435209324==
Content-Type: multipart/alternative; boundary="=-ly01q1vFR7OI9PtXa8xj"


--=-ly01q1vFR7OI9PtXa8xj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi
El lun, 06-05-2019 a las 10:37 +0000, Victor Toso escribi=C3=B3:
> Hi,
> On Fri, May 03, 2019 at 06:52:00PM +0200, Javier Celaya wrote:
> > A phodav server created with a NULL shared dir is valid andresults
> > in an error answer to all requests of the webdav channel,instead of
> > silently ignoring them.
> > This is better than just returning NULL
> > fromspice_session_get_webdav_server because:a) it crashes
> > channel_webdav.c:start_client.
>=20
> Can you give some steps on how to reproduce? I was trying withremote-
> viewer on F29 guest earlier and couldn't.

You cannot just try an existing client, this problem happened as we are
developing our new client for flexVDI. You will have to modify some of
the source code for remote-viewer to see it.
The thing is, if you do not set the shared-dir property of the
SpiceSession object, it default to the XDG public directory. This
happens if you do not pass the "shared-dir" command line option, for
instance. But how do I say "I do not want to share any directory with
the guest"? I can set the shared-dir property to a file, or a non-
existing directory, and the guest just complaints when I try to access
it through webdavd. However, this does not seem a good solution...
Setting the property to NULL, on the other hand, seems a reasonable
value for "share nothing", but it makes spice_session_get_webdav_server
return NULL and start_client crashes.
Unless I missed something and there is some way of making remote-viewer=20
share nothing... then we can just use that way.
> > b) even if it did not crash, access to the shared dir from the
> > guest   would fail by timeout instead of immediately notifying of
> > an error.
>=20
> Is that on windows as guest?

Yes, I tested it on Windows as guest. I tried to fix a) by just
returning early from start_client if spice_session_get_webdav_server
returned NULL, but then all requests made by spice-webdavd are silently
ignored. There is a webdav channel but no webdav server... so I imagine
spice-webdavd on Linux will get the same result.
> I spent some time looking at the code, found small issue andadded a
> checks on start_client(). Still, I don't see why weshould accept a
> webdav server running on NULL instead of only ina valid folder but
> I'm also interested in fixing (a) and (b) ifpossible.

As I explained before (maybe that should go in the commit message too)
I wanted a way of sharing no directory at all. Passing NULL as shared-
dir property seems like a good value, but you tell me if there is a
better way.
Best regards
> Cheers,
> > --- src/spice-session.c | 4 ---- 1 file changed, 4 deletions(-)
> > diff --git a/src/spice-session.c b/src/spice-session.cindex
> > 04ba124..cbcd8c4 100644--- a/src/spice-session.c+++ b/src/spice-
> > session.c@@ -2813,10 +2813,6 @@ PhodavServer*
> > spice_session_get_webdav_server(SpiceSession *session)     static
> > GMutex mutex;      const gchar *shared_dir =3D
> > spice_session_get_shared_dir(session);-    if (shared_dir =3D=3D NULL)
> > {-        SPICE_DEBUG("No shared dir set, not creating webdav
> > server");-        return NULL;-    }      g_mutex_lock(&mutex); --
> > 2.20.1
> > _______________________________________________Spice-devel mailing=20
> > listSpice-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/spice-devel
--=20




=20





             =20
             =20
         =20
         =20
            Javier Celaya Alastru=C3=A9
         =20
           Chief Technology Officer
     =20
     =20
       =20
          =20
        javier.celaya@flexvdi.com
       =20
       =20
         =20
        +34696969959=20
     =20
         =20
        j_celaya
       =20
       =20
         =20
        Legal Information and Privacy Policy
         =20
     =20
   =20
   =20
       =20
            Pol=C3=ADtica de confidencialidad
            Este mensaje y los ficheros anexos son confidenciales dirigi=C3=
=A9ndose exclusivamente al destinatario mencionado en el encabezamiento. Si=
 usted ha recibido este correo por error, tenga la amabilidad de eliminarlo=
 de su sistema y no divulgar el contenido a terceros. Los datos personales =
facilitados por usted o por terceros ser=C3=A1n tratados por FLEXIBLE SOFTW=
ARE SOLUTIONS S.L.U. con la finalidad de gestionar y mantener los contactos=
 y relaciones que se produzcan como consecuencia de la relaci=C3=B3n que ma=
ntiene con FLEXIBLE SOFTWARE SOLUTIONS S.L.U. Normalmente, la base jur=C3=
=ADdica que legitima este tratamiento, ser=C3=A1 su consentimiento, el inte=
r=C3=A9s leg=C3=ADtimo o la necesidad para gestionar una relaci=C3=B3n cont=
ractual o similar. El plazo de conservaci=C3=B3n de sus datos vendr=C3=A1 d=
eterminado por la relaci=C3=B3n que mantiene con nosotros. Para m=C3=A1s in=
formaci=C3=B3n al respecto, o para ejercer sus derechos de acceso, rectific=
aci=C3=B3n, supresi=C3=B3n, oposici=C3=B3n, limitaci=C3=B3n o portabilidad,=
 dirija una comunicaci=C3=B3n por escrito a FLEXIBLE SOFTWARE SOLUTIONS S.L=
.U: Avenida de Ranillas 1D, Planta 3, Oficina 3G, Zaragoza o al correo elec=
tr=C3=B3nico pdo@flexvdi.com. En caso de considerar vulnerado su derecho a =
la protecci=C3=B3n de datos personales, podr=C3=A1 interponer una reclamaci=
=C3=B3n ante la Agencia Espa=C3=B1ola de Protecci=C3=B3n de Datos (www.agpd=
.es).=20
       =20
   =20


--=-ly01q1vFR7OI9PtXa8xj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>Hi</div><div><br></div><div>El lun, 06-05-2019 a las 10:37 +0000, =
Victor Toso escribi=C3=B3:</div><blockquote type=3D"cite" style=3D"margin:0=
 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>Hi,</pre><p=
re><br></pre><pre>On Fri, May 03, 2019 at 06:52:00PM +0200, Javier Celaya w=
rote:</pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-lef=
t:2px #729fcf solid;padding-left:1ex"><pre>A phodav server created with a N=
ULL shared dir is valid and</pre><pre>results in an error answer to all req=
uests of the webdav channel,</pre><pre>instead of silently ignoring them.</=
pre><pre><br></pre><pre>This is better than just returning NULL from</pre><=
pre>spice_session_get_webdav_server because:</pre><pre>a) it crashes channe=
l_webdav.c:start_client.</pre></blockquote><pre><br></pre><pre>Can you give=
 some steps on how to reproduce? I was trying with</pre><pre>remote-viewer =
on F29 guest earlier and couldn't.</pre></blockquote><div><br></div><div>Yo=
u cannot just try an existing client, this problem happened as we are devel=
oping our new client for flexVDI. You will have to modify some of the sourc=
e code for remote-viewer to see it.</div><div><br></div><div>The thing is, =
if you do not set the shared-dir property of the SpiceSession object, it de=
fault to the XDG public directory. This happens if you do not pass the "sha=
red-dir" command line option, for instance. But how do I say "I do not want=
 to share any directory with the guest"? I can set the shared-dir property =
to a file, or a non-existing directory, and the guest just complaints when =
I try to access it through webdavd. However, this does not seem a good solu=
tion... Setting the property to NULL, on the other hand, seems a reasonable=
 value for "share nothing", but it makes spice_session_get_webdav_server re=
turn NULL and start_client crashes.</div><div><br></div><div>Unless I misse=
d something and there is some way of making remote-viewer share nothing... =
then we can just use that way.</div><div><br></div><blockquote type=3D"cite=
" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1e=
x"><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #7=
29fcf solid;padding-left:1ex"><pre>b) even if it did not crash, access to t=
he shared dir from the guest</pre><pre>   would fail by timeout instead of =
immediately notifying of an error.</pre></blockquote><pre><br></pre><pre>Is=
 that on windows as guest?</pre></blockquote><div><br></div><div>Yes, I tes=
ted it on Windows as guest. I tried to fix a) by just returning early from =
start_client if spice_session_get_webdav_server returned NULL, but then all=
 requests made by spice-webdavd are silently ignored. There is a webdav cha=
nnel but no webdav server... so I imagine spice-webdavd on Linux will get t=
he same result.</div><div><br></div><blockquote type=3D"cite" style=3D"marg=
in:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><pre><br></p=
re><pre>I spent some time looking at the code, found small issue and</pre><=
pre>added a checks on start_client(). Still, I don't see why we</pre><pre>s=
hould accept a webdav server running on NULL instead of only in</pre><pre>a=
 valid folder but I'm also interested in fixing (a) and (b) if</pre><pre>po=
ssible.</pre></blockquote><div><br></div><div>As I explained before (maybe =
that should go in the commit message too) I wanted a way of sharing no dire=
ctory at all. Passing NULL as shared-dir property seems like a good value, =
but you tell me if there is a better way.</div><div><br></div><div>Best reg=
ards</div><div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8=
ex; border-left:2px #729fcf solid;padding-left:1ex"><pre><br></pre><pre>Che=
ers,</pre><pre><br></pre><blockquote type=3D"cite" style=3D"margin:0 0 0 .8=
ex; border-left:2px #729fcf solid;padding-left:1ex"><pre>---</pre><pre> src=
/spice-session.c | 4 ----</pre><pre> 1 file changed, 4 deletions(-)</pre><p=
re><br></pre><pre>diff --git a/src/spice-session.c b/src/spice-session.c</p=
re><pre>index 04ba124..cbcd8c4 100644</pre><pre>--- a/src/spice-session.c</=
pre><pre>+++ b/src/spice-session.c</pre><pre>@@ -2813,10 +2813,6 @@ PhodavS=
erver* spice_session_get_webdav_server(SpiceSession *session)</pre><pre>   =
  static GMutex mutex;</pre><pre> </pre><pre>     const gchar *shared_dir =
=3D spice_session_get_shared_dir(session);</pre><pre>-    if (shared_dir =
=3D=3D NULL) {</pre><pre>-        SPICE_DEBUG("No shared dir set, not creat=
ing webdav server");</pre><pre>-        return NULL;</pre><pre>-    }</pre>=
<pre> </pre><pre>     g_mutex_lock(&amp;mutex);</pre><pre> </pre><pre>-- </=
pre><pre>2.20.1</pre><pre><br></pre><pre>__________________________________=
_____________</pre><pre>Spice-devel mailing list</pre><a href=3D"mailto:Spi=
ce-devel@lists.freedesktop.org"><pre>Spice-devel@lists.freedesktop.org</pre=
></a><pre><br></pre><a href=3D"https://lists.freedesktop.org/mailman/listin=
fo/spice-devel"><pre>https://lists.freedesktop.org/mailman/listinfo/spice-d=
evel</pre></a><pre><br></pre></blockquote></blockquote><div><span><pre>-- <=
br></pre>


<br>=20
<br>

<table id=3D"sig" width=3D"480" cellspacing=3D"0" cellpadding=3D"0" border-=
spacing=3D"0" style=3D"width:480px;margin:0;padding:0;"><tbody><tr><td text=
-align=3D"right" style=3D"border-right:2px solid #4a4b4a;padding-right:10px=
;" valign=3D"top">
<p style=3D"padding: 0px; text-align: right;">
              <a href=3D"http://www.flexvdi.com" title=3D"flexVDI"><img src=
=3D"https://www.flexvdi.com/signature/logo.flexvdi.png" moz-do-not-send=3D"=
true" alt=3D"flexVDI" border=3D"0" height=3D"45" width=3D"151">
              </a>
          </p>
          <p style=3D"padding: 5px 10px 0px 0px; font-size: 15px; font-weig=
ht: bold; color: rgb(62, 93, 107); line-height: 17px; height: 17px; text-al=
ign: right;">
            <span style=3D"float:right">Javier Celaya Alastru=C3=A9</span>
          </p>
           <p style=3D"padding: 0px 10px 0px 0px; font-size: 13px; font-sty=
le: italic; color: rgb(0, 161, 193); line-height: 17px; height: 17px; text-=
align: right;">Chief Technology Officer</p>
      </td>
      <td style=3D"padding-left:18px;display:block;">
        <p style=3D"padding: 5px 0px 0px;">
           <img src=3D"https://flexvdi.com/signature/mail.png" moz-do-not-s=
end=3D"true" style=3D"margin:1px 7px 0 0;" alt=3D"email" align=3D"left" hei=
ght=3D"17" width=3D"17">
        <a href=3D"mailto:javier.celaya@flexvdi.com" style=3D"font-size:14p=
x;color:#727272;line-height:17px;height:17px;">javier.celaya@flexvdi.com</a=
>
        </p>
        <p style=3D"padding: 5px 0px 0px;">
          <img src=3D"https://flexvdi.com/signature/phone.png" moz-do-not-s=
end=3D"true" style=3D"margin:0 7px 0 0;" alt=3D"Phone" align=3D"left" heigh=
t=3D"17" width=3D"17">
        <span style=3D"font-size:14px;color:#727272;line-height:17px;height=
:17px;">+34696969959</span>=20
      </p>
        <p style=3D"padding: 5px 0px 0px;"> <img src=3D"https://flexvdi.com=
/signature/skype.png" moz-do-not-send=3D"true" style=3D"margin:0 7px 0 0;" =
alt=3D"Skype" align=3D"left" height=3D"17" width=3D"17">=20
        <span style=3D"font-size:14px;color:#727272;line-height:17px;height=
:17px;">j_celaya</span>
        </p>
        <p style=3D"padding: 5px 0px 0px;">
          <img src=3D"https://flexvdi.com/signature/legal.png" moz-do-not-s=
end=3D"true" style=3D"margin:0 7px 0 0;" alt=3D"Legal" align=3D"left" heigh=
t=3D"17" width=3D"17">
        <a href=3D"https://flexvdi.com/es/legal" style=3D"font-size:14px;fo=
nt-style:italic;color:#727272;line-height:17px;height:17px;">Legal Informat=
ion and Privacy Policy</a>
          </p>
      </td>
    </tr>
    <tr>
        <td colspan=3D"2" height=3D"300">
            <p style=3D"font-family:Helvetica,Arial;font-size:14px;font-sty=
le:italic;color:#313131;text-align: center; font-weight: bold">Pol=C3=ADtic=
a de confidencialidad</p>
            <p style=3D"font-family:Helvetica,Arial;font-size:10px;font-sty=
le:italic;color:#313131;text-align: justify">Este mensaje y los ficheros an=
exos son confidenciales dirigi=C3=A9ndose exclusivamente al destinatario me=
ncionado en el encabezamiento. Si usted ha recibido este correo por error, =
tenga la amabilidad de eliminarlo de su sistema y no divulgar el contenido =
a terceros. Los datos personales facilitados por usted o por terceros ser=
=C3=A1n tratados por FLEXIBLE SOFTWARE SOLUTIONS S.L.U. con la finalidad de=
 gestionar y mantener los contactos y relaciones que se produzcan como cons=
ecuencia de la relaci=C3=B3n que mantiene con FLEXIBLE SOFTWARE SOLUTIONS S=
.L.U. Normalmente, la base jur=C3=ADdica que legitima este tratamiento, ser=
=C3=A1 su consentimiento, el inter=C3=A9s leg=C3=ADtimo o la necesidad para=
 gestionar una relaci=C3=B3n contractual o similar. El plazo de conservaci=
=C3=B3n de sus datos vendr=C3=A1 determinado por la relaci=C3=B3n que manti=
ene con nosotros. Para m=C3=A1s informaci=C3=B3n al respecto, o para ejerce=
r sus derechos de acceso, rectificaci=C3=B3n, supresi=C3=B3n, oposici=C3=B3=
n, limitaci=C3=B3n o portabilidad, dirija una comunicaci=C3=B3n por escrito=
 a FLEXIBLE SOFTWARE SOLUTIONS S.L.U: Avenida de Ranillas 1D, Planta 3, Ofi=
cina 3G, Zaragoza o al correo electr=C3=B3nico <a href=3D"mailto:pdo@flexvd=
i.com" style=3D"color:#313131">pdo@flexvdi.com</a>. En caso de considerar v=
ulnerado su derecho a la protecci=C3=B3n de datos personales, podr=C3=A1 in=
terponer una reclamaci=C3=B3n ante la Agencia Espa=C3=B1ola de Protecci=C3=
=B3n de Datos (<a href=3D"http://www.agpd.es" style=3D"color:#313131">www.a=
gpd.es</a>). </p>
        </td>
    </tr>
</tbody></table></span></div></body></html>

--=-ly01q1vFR7OI9PtXa8xj--


--===============1435209324==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1435209324==--

