.class public Lmf/org/apache/html/dom/HTMLFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x8d0d0bce500adf0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public getFrameBorder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoResize()Z
    .registers 2

    .prologue
    .line 97
    const-string/jumbo v0, "noresize"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getScrolling()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .registers 3
    .param p1, "frameBorder"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .registers 3
    .param p1, "longDesc"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "marginHeight"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "marginWidth"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setNoResize(Z)V
    .registers 3
    .param p1, "noResize"    # Z

    .prologue
    .line 103
    const-string/jumbo v0, "noresize"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .registers 3
    .param p1, "scrolling"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
