.class public Lmf/org/apache/html/dom/HTMLIFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLIFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLIFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x2137db36a48e8c9dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 162
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameBorder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrolling()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
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
    .line 132
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .registers 3
    .param p1, "frameBorder"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .registers 3
    .param p1, "longDesc"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "marginHeight"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "marginWidth"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .registers 3
    .param p1, "scrolling"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
