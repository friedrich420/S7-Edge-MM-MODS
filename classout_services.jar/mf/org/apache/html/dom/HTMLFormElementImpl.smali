.class public Lmf/org/apache/html/dom/HTMLFormElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFormElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFormElement;


# static fields
.field private static final serialVersionUID:J = -0x65a6bcfac23fbc5aL


# instance fields
.field private _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 161
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 148
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLFormElementImpl;

    .line 149
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLFormElementImpl;
    const/4 v1, 0x0

    iput-object v1, v0, _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 150
    return-object v0
.end method

.method public getAcceptCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "accept-charset"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "action"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_d

    .line 41
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 42
    :cond_d
    iget-object v0, p0, _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getEnctype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string/jumbo v0, "enctype"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, getElements()Lmf/org/w3c/dom/html/HTMLCollection;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/html/HTMLCollection;->getLength()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method

.method public setAcceptCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "acceptCharset"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "accept-charset"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setEnctype(Ljava/lang/String;)V
    .registers 3
    .param p1, "enctype"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v0, "enctype"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public submit()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method
