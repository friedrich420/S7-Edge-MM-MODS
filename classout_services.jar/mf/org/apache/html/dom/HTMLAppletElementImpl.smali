.class public Lmf/org/apache/html/dom/HTMLAppletElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLAppletElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLAppletElement;


# static fields
.field private static final serialVersionUID:J = 0x743ccc5a0bb3e1a7L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 175
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

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "alt"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "archive"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string v0, "code"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string v0, "codebase"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string/jumbo v0, "object"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
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

.method public setAlt(Ljava/lang/String;)V
    .registers 3
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setArchive(Ljava/lang/String;)V
    .registers 3
    .param p1, "archive"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "archive"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setCodeBase(Ljava/lang/String;)V
    .registers 3
    .param p1, "codeBase"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "codebase"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .registers 3
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string/jumbo v0, "object"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .registers 3
    .param p1, "vspace"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
