.class public Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;
.super Lmf/org/apache/xerces/dom/EntityReferenceImpl;
.source "DeferredEntityReferenceImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x56ab1254629fc5fL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 103
    iput p2, p0, fNodeIndex:I

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncData(Z)V

    .line 106
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 145
    invoke-virtual {p0, v1}, isReadOnly(Z)V

    .line 147
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 148
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 149
    invoke-virtual {p0, v2, v2}, setReadOnly(ZZ)V

    .line 151
    return-void
.end method

.method protected synchronizeData()V
    .registers 3

    .prologue
    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 132
    iget-object v0, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 133
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, name:Ljava/lang/String;

    .line 134
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, baseURI:Ljava/lang/String;

    .line 136
    return-void
.end method
