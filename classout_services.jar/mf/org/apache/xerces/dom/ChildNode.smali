.class public abstract Lmf/org/apache/xerces/dom/ChildNode;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "ChildNode.java"


# static fields
.field static final serialVersionUID:J = -0x54d3ce1bf89da1b2L


# instance fields
.field protected nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

.field protected previousSibling:Lmf/org/apache/xerces/dom/ChildNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 2
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 62
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 99
    .local v0, "newnode":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v1, v0, previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 100
    iput-object v1, v0, nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, isFirstChild(Z)V

    .line 103
    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, isFirstChild()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_7
.end method

.method final parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, isFirstChild()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_7
.end method
