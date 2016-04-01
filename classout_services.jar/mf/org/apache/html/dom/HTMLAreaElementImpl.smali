.class public Lmf/org/apache/html/dom/HTMLAreaElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLAreaElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLAreaElement;


# static fields
.field private static final serialVersionUID:J = 0x636ba812eec40ba3L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 40
    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_14
    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "alt"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoords()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "coords"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoHref()Z
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v0, "nohref"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string/jumbo v0, "shape"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .registers 2

    .prologue
    .line 117
    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 50
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_e
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .registers 3
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setCoords(Ljava/lang/String;)V
    .registers 3
    .param p1, "coords"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "coords"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .registers 3
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setNoHref(Z)V
    .registers 3
    .param p1, "noHref"    # Z

    .prologue
    .line 99
    const-string/jumbo v0, "nohref"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .registers 3
    .param p1, "shape"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "shape"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setTabIndex(I)V
    .registers 4
    .param p1, "tabIndex"    # I

    .prologue
    .line 123
    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
