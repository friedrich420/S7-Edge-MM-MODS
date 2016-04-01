.class public Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;
.super Lmf/org/apache/xerces/dom/CDATASectionImpl;
.source "DeferredCDATASectionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x1b8718135ee7291eL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/CDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 76
    iput p2, p0, fNodeIndex:I

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncData(Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .registers 3

    .prologue
    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 102
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 103
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, data:Ljava/lang/String;

    .line 105
    return-void
.end method
