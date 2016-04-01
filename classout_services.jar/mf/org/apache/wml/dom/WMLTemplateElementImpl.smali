.class public Lmf/org/apache/wml/dom/WMLTemplateElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLTemplateElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLTemplateElement;


# static fields
.field private static final serialVersionUID:J = 0x3aba2299492e8f29L


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

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterBackward()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterForward()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string/jumbo v0, "onenterforward"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnTimer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, "ontimer"

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

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setOnEnterBackward(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setOnEnterForward(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "onenterforward"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setOnTimer(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string/jumbo v0, "ontimer"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
