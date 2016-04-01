.class public Lmf/org/apache/html/dom/HTMLTableColElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableColElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableColElement;


# static fields
.field private static final serialVersionUID:J = -0x55e5f83376de3e70L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 123
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

.method public getCh()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 52
    const-string v1, "char"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "ch":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_14
    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "charoff"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()I
    .registers 2

    .prologue
    .line 82
    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
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

.method public setCh(Ljava/lang/String;)V
    .registers 4
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 62
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_e
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .registers 3
    .param p1, "chOff"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setSpan(I)V
    .registers 4
    .param p1, "span"    # I

    .prologue
    .line 88
    const-string/jumbo v0, "span"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "vAlign"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
