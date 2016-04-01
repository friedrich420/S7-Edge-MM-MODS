.class public Lmf/org/apache/wml/dom/WMLCardElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLCardElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLCardElement;


# static fields
.field private static final serialVersionUID:J = -0x318f30b17a1f9adcL


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
    .line 63
    const-string v0, "class"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewContext()Z
    .registers 3

    .prologue
    .line 87
    const-string/jumbo v0, "newcontext"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOnEnterBackward()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterForward()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
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

.method public getOrdered()Z
    .registers 3

    .prologue
    .line 47
    const-string/jumbo v0, "ordered"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setNewContext(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .prologue
    .line 83
    const-string/jumbo v0, "newcontext"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public setOnEnterBackward(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setOnEnterForward(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "onenterforward"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
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

.method public setOrdered(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .prologue
    .line 43
    const-string/jumbo v0, "ordered"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
