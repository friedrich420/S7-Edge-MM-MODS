.class public Lmf/org/apache/html/dom/HTMLMetaElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLMetaElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLMetaElement;


# static fields
.field private static final serialVersionUID:J = -0x21557ba093a7e0d0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "content"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "content"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .registers 3
    .param p1, "httpEquiv"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
