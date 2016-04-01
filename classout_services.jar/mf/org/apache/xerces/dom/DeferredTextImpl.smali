.class public Lmf/org/apache/xerces/dom/DeferredTextImpl;
.super Lmf/org/apache/xerces/dom/TextImpl;
.source "DeferredTextImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x2010f31313a241d1L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 67
    iput p2, p0, fNodeIndex:I

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncData(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v2}, needsSyncData(Z)V

    .line 93
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 94
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, data:Ljava/lang/String;

    .line 101
    iget v3, p0, fNodeIndex:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v3

    if-ne v3, v1, :cond_1f

    :goto_1b
    invoke-virtual {p0, v1}, isIgnorableWhitespace(Z)V

    .line 103
    return-void

    :cond_1f
    move v1, v2

    .line 101
    goto :goto_1b
.end method
