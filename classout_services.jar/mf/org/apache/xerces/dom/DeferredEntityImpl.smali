.class public Lmf/org/apache/xerces/dom/DeferredEntityImpl;
.super Lmf/org/apache/xerces/dom/EntityImpl;
.source "DeferredEntityImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x420f8ee1ad39e3c6L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 85
    iput p2, p0, fNodeIndex:I

    .line 86
    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 87
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 143
    invoke-virtual {p0, v1}, isReadOnly(Z)V

    .line 145
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 146
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 147
    invoke-virtual {p0, v2, v2}, setReadOnly(ZZ)V

    .line 149
    return-void
.end method

.method protected synchronizeData()V
    .registers 5

    .prologue
    .line 111
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, needsSyncData(Z)V

    .line 115
    iget-object v2, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 116
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, name:Ljava/lang/String;

    .line 119
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, publicId:Ljava/lang/String;

    .line 120
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, systemId:Ljava/lang/String;

    .line 121
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .line 122
    .local v0, "extraDataIndex":I
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 124
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, notationName:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, version:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, encoding:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 132
    .local v1, "extraIndex2":I
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, baseURI:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, inputEncoding:Ljava/lang/String;

    .line 135
    return-void
.end method
