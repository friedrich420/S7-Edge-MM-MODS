.class public final Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrNSImpl;
.source "DeferredAttrNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x544e780ac09de522L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 67
    iput p2, p0, fNodeIndex:I

    .line 68
    invoke-virtual {p0, v1}, needsSyncData(Z)V

    .line 69
    invoke-virtual {p0, v1}, needsSyncChildren(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 125
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V

    .line 126
    return-void
.end method

.method protected synchronizeData()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0, v6}, needsSyncData(Z)V

    .line 94
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 95
    .local v3, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v4, p0, fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, name:Ljava/lang/String;

    .line 98
    iget-object v4, p0, name:Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 99
    .local v2, "index":I
    if-gez v2, :cond_4b

    .line 100
    iget-object v4, p0, name:Ljava/lang/String;

    iput-object v4, p0, localName:Ljava/lang/String;

    .line 106
    :goto_21
    iget v4, p0, fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    .line 107
    .local v0, "extra":I
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_56

    move v4, v5

    :goto_2c
    invoke-virtual {p0, v4}, isSpecified(Z)V

    .line 108
    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_58

    :goto_33
    invoke-virtual {p0, v5}, isIdAttribute(Z)V

    .line 110
    iget v4, p0, fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, namespaceURI:Ljava/lang/String;

    .line 112
    iget v4, p0, fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    .line 113
    .local v1, "extraNode":I
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, type:Ljava/lang/Object;

    .line 114
    return-void

    .line 103
    .end local v0    # "extra":I
    .end local v1    # "extraNode":I
    :cond_4b
    iget-object v4, p0, name:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, localName:Ljava/lang/String;

    goto :goto_21

    .restart local v0    # "extra":I
    :cond_56
    move v4, v6

    .line 107
    goto :goto_2c

    :cond_58
    move v5, v6

    .line 108
    goto :goto_33
.end method
