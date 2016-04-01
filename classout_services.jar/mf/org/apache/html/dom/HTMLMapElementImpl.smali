.class public Lmf/org/apache/html/dom/HTMLMapElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLMapElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLMapElement;


# static fields
.field private static final serialVersionUID:J = 0x685f8f6916fc1ac8L


# instance fields
.field private _areas:Lmf/org/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 62
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLMapElementImpl;

    .line 63
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLMapElementImpl;
    const/4 v1, 0x0

    iput-object v1, v0, _areas:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 64
    return-object v0
.end method

.method public getAreas()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, _areas:Lmf/org/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_c

    .line 40
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _areas:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 41
    :cond_c
    iget-object v0, p0, _areas:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
