.class public Lmf/org/apache/html/dom/HTMLBodyElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBodyElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBodyElement;


# static fields
.field private static final serialVersionUID:J = 0x7db78250e4cbc182L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getALink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "alink"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "background"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string/jumbo v0, "link"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const-string/jumbo v0, "vlink"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setALink(Ljava/lang/String;)V
    .registers 3
    .param p1, "aLink"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "alink"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .registers 3
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "background"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 3
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "link"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setVLink(Ljava/lang/String;)V
    .registers 3
    .param p1, "vLink"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v0, "vlink"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
