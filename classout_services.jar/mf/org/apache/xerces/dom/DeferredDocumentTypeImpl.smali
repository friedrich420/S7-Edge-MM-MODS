.class public Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;
.super Lmf/org/apache/xerces/dom/DocumentTypeImpl;
.source "DeferredDocumentTypeImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x1e268db160e6dd65L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 73
    iput p2, p0, fNodeIndex:I

    .line 74
    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 75
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 114
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v3

    .line 115
    .local v3, "orig":Z
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 118
    invoke-virtual {p0, v9}, needsSyncChildren(Z)V

    .line 122
    iget-object v4, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 124
    .local v4, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 125
    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 126
    new-instance v6, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v6, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v6, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "last":Lmf/org/apache/xerces/dom/DeferredNode;
    iget v6, p0, fNodeIndex:I

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    .line 131
    .local v0, "index":I
    :goto_33
    const/4 v6, -0x1

    if-ne v0, v6, :cond_42

    .line 178
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 181
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v9}, setReadOnly(ZZ)V

    .line 183
    return-void

    .line 134
    :cond_42
    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v2

    .line 135
    .local v2, "node":Lmf/org/apache/xerces/dom/DeferredNode;
    invoke-interface {v2}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v5

    .line 136
    .local v5, "type":I
    sparse-switch v5, :sswitch_data_9e

    .line 167
    :cond_4d
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-interface {v2}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 171
    const-string v8, ", class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 172
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    :goto_77
    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v0

    goto :goto_33

    .line 140
    :sswitch_7c
    iget-object v6, p0, entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_77

    .line 146
    :sswitch_82
    iget-object v6, p0, notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_77

    .line 152
    :sswitch_88
    iget-object v6, p0, elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_77

    .line 158
    :sswitch_8e
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v6, v6, Lmf/org/apache/xerces/dom/DocumentImpl;->allowGrammarAccess:Z

    if-eqz v6, :cond_4d

    .line 159
    invoke-virtual {p0, v2, v1}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 160
    move-object v1, v2

    .line 161
    goto :goto_77

    .line 136
    nop

    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_8e
        0x6 -> :sswitch_7c
        0xc -> :sswitch_82
        0x15 -> :sswitch_88
    .end sparse-switch
.end method

.method protected synchronizeData()V
    .registers 4

    .prologue
    .line 96
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, needsSyncData(Z)V

    .line 100
    iget-object v1, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 101
    .local v1, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, name:Ljava/lang/String;

    .line 104
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, publicID:Ljava/lang/String;

    .line 105
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, systemID:Ljava/lang/String;

    .line 106
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .line 107
    .local v0, "extraDataIndex":I
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, internalSubset:Ljava/lang/String;

    .line 108
    return-void
.end method
