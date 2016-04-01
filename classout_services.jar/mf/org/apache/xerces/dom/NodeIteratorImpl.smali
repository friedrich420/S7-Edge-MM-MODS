.class public Lmf/org/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "NodeIteratorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .registers 7
    .param p1, "document"    # Lmf/org/apache/xerces/dom/DocumentImpl;
    .param p2, "root"    # Lmf/org/w3c/dom/Node;
    .param p3, "whatToShow"    # I
    .param p4, "nodeFilter"    # Lmf/org/w3c/dom/traversal/NodeFilter;
    .param p5, "entityReferenceExpansion"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, fWhatToShow:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, fDetach:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, fForward:Z

    .line 94
    iput-object p1, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 95
    iput-object p2, p0, fRoot:Lmf/org/w3c/dom/Node;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 97
    iput p3, p0, fWhatToShow:I

    .line 98
    iput-object p4, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    .line 99
    iput-boolean p5, p0, fEntityReferenceExpansion:Z

    .line 100
    return-void
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)Z
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 233
    iget-object v2, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_16

    .line 234
    iget v2, p0, fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    .line 236
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 234
    goto :goto_13

    .line 236
    :cond_16
    iget v2, p0, fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2b

    .line 237
    iget-object v2, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    if-eq v2, v0, :cond_13

    :cond_2b
    move v0, v1

    .line 236
    goto :goto_13
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, fDetach:Z

    .line 369
    iget-object v0, p0, fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V

    .line 370
    return-void
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, fWhatToShow:I

    return v0
.end method

.method matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 252
    :cond_6
    :goto_6
    return-object v0

    .line 249
    :cond_7
    iget-object v0, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .local v0, "n":Lmf/org/w3c/dom/Node;
    :goto_9
    iget-object v2, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v2, :cond_f

    move-object v0, v1

    .line 252
    goto :goto_6

    .line 250
    :cond_f
    if-eq p1, v0, :cond_6

    .line 249
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_9
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 131
    iget-boolean v3, p0, fDetach:Z

    if-eqz v3, :cond_17

    .line 132
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 133
    const/16 v4, 0xb

    .line 134
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 138
    :cond_17
    iget-object v3, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_1c

    .line 178
    :cond_1b
    :goto_1b
    return-object v2

    .line 140
    :cond_1c
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 141
    .local v1, "nextNode":Lmf/org/w3c/dom/Node;
    const/4 v0, 0x0

    .line 144
    .local v0, "accepted":Z
    :cond_1f
    if-nez v0, :cond_1b

    .line 147
    iget-boolean v3, p0, fForward:Z

    if-nez v3, :cond_38

    if-eqz v1, :cond_38

    .line 149
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 161
    :goto_29
    iput-boolean v5, p0, fForward:Z

    .line 164
    if-eqz v1, :cond_1b

    .line 167
    invoke-virtual {p0, v1}, acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_1f

    .line 170
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 171
    iget-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1b

    .line 152
    :cond_38
    iget-boolean v3, p0, fEntityReferenceExpansion:Z

    if-nez v3, :cond_4b

    .line 153
    if-eqz v1, :cond_4b

    .line 154
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4b

    .line 155
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 156
    goto :goto_29

    .line 157
    :cond_4b
    invoke-virtual {p0, v1, v5}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_29
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "visitChildren"    # Z

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_6

    iget-object v1, p0, fRoot:Lmf/org/w3c/dom/Node;

    .line 297
    :cond_5
    :goto_5
    return-object v1

    .line 267
    :cond_6
    if-eqz p2, :cond_13

    .line 269
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 270
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 271
    .local v1, "result":Lmf/org/w3c/dom/Node;
    goto :goto_5

    .line 275
    .end local v1    # "result":Lmf/org/w3c/dom/Node;
    :cond_13
    iget-object v3, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v3, :cond_19

    move-object v1, v2

    .line 276
    goto :goto_5

    .line 280
    :cond_19
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 281
    .restart local v1    # "result":Lmf/org/w3c/dom/Node;
    if-nez v1, :cond_5

    .line 285
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 286
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_23
    if-eqz v0, :cond_29

    iget-object v3, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v3, :cond_2b

    :cond_29
    move-object v1, v2

    .line 297
    goto :goto_5

    .line 287
    :cond_2b
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 288
    if-nez v1, :cond_5

    .line 291
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_23
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-boolean v3, p0, fDetach:Z

    if-eqz v3, :cond_16

    .line 188
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    .line 189
    const/16 v4, 0xb

    .line 190
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 194
    :cond_16
    iget-object v3, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-eqz v3, :cond_1e

    iget-object v3, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_1f

    .line 227
    :cond_1e
    :goto_1e
    return-object v2

    .line 196
    :cond_1f
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 197
    .local v1, "previousNode":Lmf/org/w3c/dom/Node;
    const/4 v0, 0x0

    .line 200
    .local v0, "accepted":Z
    :cond_22
    if-nez v0, :cond_1e

    .line 202
    iget-boolean v3, p0, fForward:Z

    if-eqz v3, :cond_3c

    if-eqz v1, :cond_3c

    .line 204
    iget-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 211
    :goto_2c
    const/4 v3, 0x0

    iput-boolean v3, p0, fForward:Z

    .line 215
    if-eqz v1, :cond_1e

    .line 218
    invoke-virtual {p0, v1}, acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_22

    .line 221
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 222
    iget-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1e

    .line 207
    :cond_3c
    invoke-virtual {p0, v1}, previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2c
.end method

.method previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 308
    iget-object v1, p0, fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x0

    .line 330
    :cond_5
    :goto_5
    return-object v0

    .line 311
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 312
    .local v0, "result":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_11

    .line 314
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 315
    goto :goto_5

    .line 319
    :cond_11
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-boolean v1, p0, fEntityReferenceExpansion:Z

    if-nez v1, :cond_24

    .line 321
    if-eqz v0, :cond_24

    .line 322
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 325
    :cond_24
    :goto_24
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_24
.end method

.method public removeNode(Lmf/org/w3c/dom/Node;)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 341
    if-nez p1, :cond_3

    .line 365
    :cond_2
    :goto_2
    return-void

    .line 343
    :cond_3
    invoke-virtual {p0, p1}, matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 345
    .local v0, "deleted":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 347
    iget-boolean v2, p0, fForward:Z

    if-eqz v2, :cond_14

    .line 348
    invoke-virtual {p0, v0}, previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 352
    :cond_14
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 353
    .local v1, "next":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_1e

    .line 355
    iput-object v1, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 359
    :cond_1e
    invoke-virtual {p0, v0}, previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, fForward:Z

    goto :goto_2
.end method
