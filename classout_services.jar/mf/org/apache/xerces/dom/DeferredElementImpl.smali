.class public Lmf/org/apache/xerces/dom/DeferredElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "DeferredElementImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 79
    iput p2, p0, fNodeIndex:I

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncChildren(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 133
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 134
    return-void
.end method

.method protected final synchronizeData()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 101
    invoke-virtual {p0, v5}, needsSyncData(Z)V

    .line 105
    iget-object v4, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 108
    .local v4, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget-boolean v3, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 109
    .local v3, "orig":Z
    iput-boolean v5, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 111
    iget v5, p0, fNodeIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, name:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, setupDefaultAttributes()V

    .line 115
    iget v5, p0, fNodeIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v2

    .line 116
    .local v2, "index":I
    if-eq v2, v6, :cond_33

    .line 117
    invoke-virtual {p0}, getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 119
    .local v1, "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_24
    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 120
    .local v0, "attr":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 121
    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    .line 122
    if-ne v2, v6, :cond_24

    .line 126
    .end local v0    # "attr":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v1    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_33
    iput-boolean v3, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 128
    return-void
.end method
