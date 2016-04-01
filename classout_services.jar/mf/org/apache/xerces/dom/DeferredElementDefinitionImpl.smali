.class public Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;
.super Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
.source "DeferredElementDefinitionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5d06afa0904b42f7L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 63
    iput p2, p0, fNodeIndex:I

    .line 64
    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 65
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v4, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v2

    .line 100
    .local v2, "orig":Z
    iget-object v4, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 103
    invoke-virtual {p0, v5}, needsSyncChildren(Z)V

    .line 107
    iget-object v3, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v3, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 108
    .local v3, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    new-instance v4, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v4, p0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 112
    iget v4, p0, fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    .line 113
    .local v1, "nodeIndex":I
    :goto_20
    const/4 v4, -0x1

    if-ne v1, v4, :cond_27

    .line 120
    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 122
    return-void

    .line 115
    :cond_27
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    .line 116
    .local v0, "attr":Lmf/org/w3c/dom/Node;
    iget-object v4, p0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 114
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_20
.end method

.method protected synchronizeData()V
    .registers 3

    .prologue
    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 90
    iget-object v0, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 91
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, name:Ljava/lang/String;

    .line 93
    return-void
.end method
