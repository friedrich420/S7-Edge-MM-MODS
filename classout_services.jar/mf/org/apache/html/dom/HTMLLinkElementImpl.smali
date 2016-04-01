.class public Lmf/org/apache/html/dom/HTMLLinkElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLinkElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLinkElement;


# static fields
.field private static final serialVersionUID:J = 0xc224c9e365591ffL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "charset"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 43
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .registers 3
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .registers 3
    .param p1, "hreflang"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .registers 3
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .registers 3
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .registers 3
    .param p1, "rev"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
