.class public Lmf/org/apache/html/dom/HTMLAnchorElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLAnchorElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLAnchorElement;


# static fields
.field private static final serialVersionUID:J = -0x1f35d48de1c9897L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 206
    return-void
.end method


# virtual methods
.method public blur()V
    .registers 1

    .prologue
    .line 190
    return-void
.end method

.method public focus()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 39
    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_14
    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "charset"

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

.method public getHreflang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
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
    .line 153
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
    .line 165
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 49
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_e
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
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

.method public setHreflang(Ljava/lang/String;)V
    .registers 3
    .param p1, "hreflang"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .registers 3
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .registers 3
    .param p1, "rev"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .registers 3
    .param p1, "shape"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string/jumbo v0, "shape"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setTabIndex(I)V
    .registers 4
    .param p1, "tabIndex"    # I

    .prologue
    .line 159
    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
