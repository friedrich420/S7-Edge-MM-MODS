.class public Lmf/org/apache/xerces/dom/DeferredNotationImpl;
.super Lmf/org/apache/xerces/dom/NotationImpl;
.source "DeferredNotationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x4f2d6dee39d1f240L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 72
    iput p2, p0, fNodeIndex:I

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncData(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .registers 4

    .prologue
    .line 97
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, needsSyncData(Z)V

    .line 101
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 102
    .local v1, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, name:Ljava/lang/String;

    .line 104
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 106
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, publicId:Ljava/lang/String;

    .line 107
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, systemId:Ljava/lang/String;

    .line 108
    iget v2, p0, fNodeIndex:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .line 109
    .local v0, "extraDataIndex":I
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 110
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, baseURI:Ljava/lang/String;

    .line 113
    return-void
.end method
