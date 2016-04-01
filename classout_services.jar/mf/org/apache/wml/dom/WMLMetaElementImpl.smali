.class public Lmf/org/apache/wml/dom/WMLMetaElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLMetaElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLMetaElement;


# static fields
.field private static final serialVersionUID:J = -0x26bdfabefa3e2276L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "class"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "content"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForua()Z
    .registers 3

    .prologue
    .line 39
    const-string/jumbo v0, "forua"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "content"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setForua(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .prologue
    .line 35
    const-string/jumbo v0, "forua"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
