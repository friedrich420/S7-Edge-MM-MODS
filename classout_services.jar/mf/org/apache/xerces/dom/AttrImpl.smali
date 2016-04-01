.class public Lmf/org/apache/xerces/dom/AttrImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Attr;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 158
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, value:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, value:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, name:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1}, isSpecified(Z)V

    .line 154
    invoke-virtual {p0, v1}, hasStringValue(Z)V

    .line 155
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, needsSyncChildren(Z)V

    .line 1234
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1215
    invoke-virtual {p0}, synchronizeChildren()V

    .line 1218
    :cond_9
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1220
    return-void
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .registers 7
    .param p1, "insertedChild"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1161
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_22

    .line 1162
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v1

    .line 1163
    .local v1, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1166
    .local v0, "next":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-eq v2, v3, :cond_1e

    .line 1167
    :cond_16
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_21

    .line 1168
    :cond_1e
    invoke-virtual {p0, v4}, isNormalized(Z)V

    .line 1178
    .end local v0    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    .end local v1    # "prev":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_21
    :goto_21
    return-void

    .line 1174
    :cond_22
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1175
    invoke-virtual {p0, v4}, isNormalized(Z)V

    goto :goto_21
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .registers 5
    .param p1, "previousSibling"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    const/4 v2, 0x3

    .line 1196
    if-eqz p1, :cond_17

    .line 1197
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_17

    .line 1199
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1200
    .local v0, "next":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_17

    .line 1201
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, isNormalized(Z)V

    .line 1204
    .end local v0    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_17
    return-void
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "deep"    # Z

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 230
    invoke-virtual {p0}, synchronizeChildren()V

    .line 232
    :cond_a
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 235
    .local v1, "clone":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v1}, hasStringValue()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 238
    const/4 v2, 0x0

    iput-object v2, v1, value:Ljava/lang/Object;

    .line 243
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_1d
    if-nez v0, :cond_23

    .line 248
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_1f
    invoke-virtual {v1, v3}, isSpecified(Z)V

    .line 249
    return-object v1

    .line 245
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_23
    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 244
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1d
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 632
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 633
    invoke-virtual {p0}, synchronizeChildren()V

    .line 635
    :cond_9
    return-object p0
.end method

.method public getElement()Lmf/org/w3c/dom/Element;
    .registers 2

    .prologue
    .line 520
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_8
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 642
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 643
    invoke-virtual {p0}, synchronizeChildren()V

    .line 645
    :cond_9
    invoke-virtual {p0}, makeChildNode()V

    .line 646
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 654
    invoke-virtual {p0}, synchronizeChildren()V

    .line 656
    :cond_9
    invoke-virtual {p0}, lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .registers 4

    .prologue
    .line 1019
    invoke-virtual {p0}, hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1020
    const/4 v0, 0x1

    .line 1027
    :cond_7
    return v0

    .line 1022
    :cond_8
    iget-object v1, p0, value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1023
    .local v1, "node":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v0, 0x0

    .line 1024
    .local v0, "length":I
    :goto_d
    if-eqz v1, :cond_7

    .line 1025
    add-int/lit8 v0, v0, 0x1

    .line 1024
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_d
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 326
    invoke-virtual {p0}, synchronizeData()V

    .line 328
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    invoke-virtual {p0}, synchronizeData()V

    .line 267
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lmf/org/w3c/dom/Element;
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_8
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .registers 1

    .prologue
    .line 302
    return-object p0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 497
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    invoke-virtual {p0}, synchronizeData()V

    .line 500
    :cond_9
    invoke-virtual {p0}, isSpecified()Z

    move-result v0

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, type:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 292
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    .line 294
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getValue()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 440
    invoke-virtual {p0}, needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 441
    invoke-virtual {p0}, synchronizeData()V

    .line 443
    :cond_a
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 444
    invoke-virtual {p0}, synchronizeChildren()V

    .line 446
    :cond_13
    iget-object v4, p0, value:Ljava/lang/Object;

    if-nez v4, :cond_1a

    .line 447
    const-string v4, ""

    .line 479
    :goto_19
    return-object v4

    .line 449
    :cond_1a
    invoke-virtual {p0}, hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 450
    iget-object v4, p0, value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_19

    .line 453
    :cond_25
    iget-object v1, p0, value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 455
    .local v1, "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v0, 0x0

    .line 456
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_43

    move-object v4, v1

    .line 457
    check-cast v4, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_37
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 465
    .local v2, "node":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v2, :cond_3d

    if-nez v0, :cond_48

    :cond_3d
    if-nez v0, :cond_41

    const-string v0, ""

    .end local v0    # "data":Ljava/lang/String;
    :cond_41
    move-object v4, v0

    goto :goto_19

    .line 460
    .end local v2    # "node":Lmf/org/apache/xerces/dom/ChildNode;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_43
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 467
    .restart local v2    # "node":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_48
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "value":Ljava/lang/StringBuffer;
    :goto_4d
    if-nez v2, :cond_54

    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    .line 469
    :cond_54
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_6c

    move-object v4, v2

    .line 470
    check-cast v4, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    .line 471
    if-nez v0, :cond_66

    const-string v4, ""

    goto :goto_19

    .line 472
    :cond_66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    :goto_69
    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_4d

    .line 475
    :cond_6c
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_69
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 611
    invoke-virtual {p0}, synchronizeChildren()V

    .line 613
    :cond_9
    iget-object v0, p0, value:Ljava/lang/Object;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .registers 21
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual/range {p0 .. p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v10

    .line 716
    .local v10, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v3, v10, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 718
    .local v3, "errorChecking":Z
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_48

    .line 736
    if-eqz v3, :cond_16

    .line 737
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 738
    .local v5, "kid":Lmf/org/w3c/dom/Node;
    :goto_14
    if-nez v5, :cond_1d

    .line 747
    .end local v5    # "kid":Lmf/org/w3c/dom/Node;
    :cond_16
    :goto_16
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v14

    if-nez v14, :cond_3c

    .line 864
    :goto_1c
    return-object p1

    .line 740
    .restart local v5    # "kid":Lmf/org/w3c/dom/Node;
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_37

    .line 741
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 738
    .end local v7    # "msg":Ljava/lang/String;
    :cond_37
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_14

    .line 748
    .end local v5    # "kid":Lmf/org/w3c/dom/Node;
    :cond_3c
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_16

    .line 753
    :cond_48
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_59

    .line 755
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    .line 756
    invoke-virtual/range {p0 .. p1}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 757
    invoke-virtual/range {p0 .. p2}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1c

    .line 761
    :cond_59
    invoke-virtual/range {p0 .. p0}, needsSyncChildren()Z

    move-result v14

    if-eqz v14, :cond_62

    .line 762
    invoke-virtual/range {p0 .. p0}, synchronizeChildren()V

    .line 765
    :cond_62
    if-eqz v3, :cond_f4

    .line 766
    invoke-virtual/range {p0 .. p0}, isReadOnly()Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 767
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NO_MODIFICATION_ALLOWED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 768
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 770
    .end local v7    # "msg":Ljava/lang/String;
    :cond_7c
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    if-eq v14, v10, :cond_94

    .line 771
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "WRONG_DOCUMENT_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 772
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x4

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 774
    .end local v7    # "msg":Ljava/lang/String;
    :cond_94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_b0

    .line 775
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 776
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 779
    .end local v7    # "msg":Ljava/lang/String;
    :cond_b0
    if-eqz p2, :cond_cd

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    if-eq v14, v0, :cond_cd

    .line 780
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NOT_FOUND_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 781
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/16 v15, 0x8

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 787
    .end local v7    # "msg":Ljava/lang/String;
    :cond_cd
    const/4 v13, 0x1

    .line 788
    .local v13, "treeSafe":Z
    move-object/from16 v2, p0

    .local v2, "a":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_d0
    if-eqz v13, :cond_d4

    if-nez v2, :cond_e8

    .line 792
    :cond_d4
    if-nez v13, :cond_f4

    .line 793
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 794
    .restart local v7    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 790
    .end local v7    # "msg":Ljava/lang/String;
    :cond_e8
    move-object/from16 v0, p1

    if-eq v0, v2, :cond_f2

    const/4 v13, 0x1

    .line 788
    :goto_ed
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v2

    goto :goto_d0

    .line 790
    :cond_f2
    const/4 v13, 0x0

    goto :goto_ed

    .line 798
    .end local v2    # "a":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v13    # "treeSafe":Z
    :cond_f4
    invoke-virtual/range {p0 .. p0}, makeChildNode()V

    .line 801
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v8, p1

    .line 804
    check-cast v8, Lmf/org/apache/xerces/dom/ChildNode;

    .line 806
    .local v8, "newInternal":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v9

    .line 807
    .local v9, "oldparent":Lmf/org/w3c/dom/Node;
    if-eqz v9, :cond_10b

    .line 808
    invoke-interface {v9, v8}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_10b
    move-object/from16 v12, p2

    .line 812
    check-cast v12, Lmf/org/apache/xerces/dom/ChildNode;

    .line 815
    .local v12, "refInternal":Lmf/org/apache/xerces/dom/ChildNode;
    move-object/from16 v0, p0

    iput-object v0, v8, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 816
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, value:Ljava/lang/Object;

    check-cast v4, Lmf/org/apache/xerces/dom/ChildNode;

    .line 821
    .local v4, "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    if-nez v4, :cond_13a

    .line 823
    move-object/from16 v0, p0

    iput-object v8, v0, value:Ljava/lang/Object;

    .line 824
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 825
    iput-object v8, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 857
    :goto_129
    invoke-virtual/range {p0 .. p0}, changed()V

    .line 860
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v10, v0, v8, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 862
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto/16 :goto_1c

    .line 828
    :cond_13a
    if-nez v12, :cond_145

    .line 830
    iget-object v6, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 831
    .local v6, "lastChild":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v8, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 832
    iput-object v6, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 833
    iput-object v8, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_129

    .line 837
    .end local v6    # "lastChild":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_145
    move-object/from16 v0, p2

    if-ne v0, v4, :cond_15e

    .line 839
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 840
    iput-object v4, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 841
    iget-object v14, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v14, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 842
    iput-object v8, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 843
    move-object/from16 v0, p0

    iput-object v8, v0, value:Ljava/lang/Object;

    .line 844
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto :goto_129

    .line 848
    :cond_15e
    iget-object v11, v12, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 849
    .local v11, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v12, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 850
    iput-object v8, v11, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 851
    iput-object v8, v12, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 852
    iput-object v11, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_129
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .registers 13
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 899
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    .line 900
    .local v5, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v7, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_39

    .line 901
    invoke-virtual {p0}, isReadOnly()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 902
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "msg":Ljava/lang/String;
    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    .line 905
    .end local v1    # "msg":Ljava/lang/String;
    :cond_20
    if-eqz p1, :cond_39

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eq v7, p0, :cond_39

    .line 906
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NOT_FOUND_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/16 v8, 0x8

    invoke-direct {v7, v8, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    .end local v1    # "msg":Ljava/lang/String;
    :cond_39
    move-object v3, p1

    .line 911
    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    .line 914
    .local v3, "oldInternal":Lmf/org/apache/xerces/dom/ChildNode;
    invoke-virtual {v5, p0, v3, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 918
    iget-object v7, p0, value:Ljava/lang/Object;

    if-ne v3, v7, :cond_6f

    .line 920
    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 922
    iget-object v7, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v7, p0, value:Ljava/lang/Object;

    .line 923
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 924
    .local v0, "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    if-eqz v0, :cond_58

    .line 925
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 926
    iget-object v7, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v7, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 943
    .end local v0    # "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_58
    :goto_58
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v4

    .line 946
    .local v4, "oldPreviousSibling":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v5, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 947
    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 948
    iput-object v9, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 949
    iput-object v9, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 951
    invoke-virtual {p0}, changed()V

    .line 954
    invoke-virtual {v5, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 956
    invoke-virtual {p0, v4}, checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 958
    return-object v3

    .line 929
    .end local v4    # "oldPreviousSibling":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_6f
    iget-object v6, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 930
    .local v6, "prev":Lmf/org/apache/xerces/dom/ChildNode;
    iget-object v2, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 931
    .local v2, "next":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v2, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 932
    if-nez v2, :cond_7e

    .line 934
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 935
    .restart local v0    # "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v6, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_58

    .line 938
    .end local v0    # "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_7e
    iput-object v6, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_58
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .registers 3
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1069
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    return v0
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, isIdAttribute()Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1039
    invoke-virtual {p0}, hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1040
    if-nez p1, :cond_d

    iget-object v3, p0, value:Ljava/lang/Object;

    if-nez v3, :cond_e

    .line 1055
    :cond_d
    :goto_d
    return-object v2

    .line 1044
    :cond_e
    invoke-virtual {p0}, makeChildNode()V

    .line 1045
    iget-object v2, p0, value:Ljava/lang/Object;

    check-cast v2, Lmf/org/w3c/dom/Node;

    goto :goto_d

    .line 1048
    :cond_16
    if-ltz p1, :cond_d

    .line 1051
    iget-object v1, p0, value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1052
    .local v1, "node":Lmf/org/apache/xerces/dom/ChildNode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, p1, :cond_21

    if-nez v1, :cond_23

    :cond_21
    move-object v2, v1

    .line 1055
    goto :goto_d

    .line 1053
    :cond_23
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .registers 2

    .prologue
    .line 662
    invoke-virtual {p0}, makeChildNode()V

    .line 663
    iget-object v0, p0, value:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .registers 3
    .param p1, "node"    # Lmf/org/apache/xerces/dom/ChildNode;

    .prologue
    .line 668
    iget-object v0, p0, value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 669
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 671
    :cond_a
    return-void
.end method

.method protected makeChildNode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-virtual {p0}, hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 174
    iget-object v1, p0, value:Ljava/lang/Object;

    if-eqz v1, :cond_25

    .line 176
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-object v1, p0, value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    .line 177
    .local v0, "text":Lmf/org/apache/xerces/dom/TextImpl;
    iput-object v0, p0, value:Ljava/lang/Object;

    .line 178
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    .line 179
    iput-object v0, v0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 180
    iput-object p0, v0, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 181
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    .line 183
    .end local v0    # "text":Lmf/org/apache/xerces/dom/TextImpl;
    :cond_25
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, hasStringValue(Z)V

    .line 185
    :cond_29
    return-void
.end method

.method public normalize()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 539
    invoke-virtual {p0}, isNormalized()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 572
    :cond_d
    :goto_d
    return-void

    .line 543
    :cond_e
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 544
    .local v0, "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    move-object v1, v0

    .local v1, "kid":Lmf/org/w3c/dom/Node;
    :goto_13
    if-nez v1, :cond_1a

    .line 571
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, isNormalized(Z)V

    goto :goto_d

    .line 545
    :cond_1a
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 552
    .local v2, "next":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_3a

    .line 555
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_3c

    move-object v3, v1

    .line 557
    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, v2}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 559
    move-object v2, v1

    .line 544
    :cond_3a
    :goto_3a
    move-object v1, v2

    goto :goto_13

    .line 564
    :cond_3c
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3a

    .line 565
    :cond_4c
    invoke-virtual {p0, v1}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3a
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0}, hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 885
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_FOUND_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 888
    .end local v0    # "msg":Ljava/lang/String;
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method rename(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {p0}, synchronizeData()V

    .line 168
    :cond_9
    iput-object p1, p0, name:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 986
    invoke-virtual {p0}, makeChildNode()V

    .line 995
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 996
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 998
    invoke-virtual {p0, p1, p2, v1}, internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 999
    if-eq p1, p2, :cond_13

    .line 1000
    invoke-virtual {p0, p2, v1}, internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 1004
    :cond_13
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1006
    return-object p2
.end method

.method public setIdAttribute(Z)V
    .registers 3
    .param p1, "id"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    invoke-virtual {p0}, synchronizeData()V

    .line 213
    :cond_9
    invoke-virtual {p0, p1}, isIdAttribute(Z)V

    .line 214
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, setValue(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 4
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 192
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 193
    invoke-virtual {p0}, synchronizeChildren()V

    .line 195
    :cond_9
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 196
    invoke-virtual {p0}, hasStringValue()Z

    move-result v1

    if-nez v1, :cond_18

    .line 197
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 198
    .local v0, "child":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_16
    if-nez v0, :cond_19

    .line 202
    .end local v0    # "child":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_18
    return-void

    .line 199
    .restart local v0    # "child":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_19
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 198
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_16
.end method

.method public setReadOnly(ZZ)V
    .registers 6
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 1109
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    .line 1111
    if-eqz p2, :cond_14

    .line 1113
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1114
    invoke-virtual {p0}, synchronizeChildren()V

    .line 1117
    :cond_e
    invoke-virtual {p0}, hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1129
    :cond_14
    return-void

    .line 1121
    :cond_15
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1122
    .local v0, "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_19
    if-eqz v0, :cond_14

    .line 1124
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_26

    .line 1125
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    .line 1123
    :cond_26
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_19
.end method

.method public setSpecified(Z)V
    .registers 3
    .param p1, "arg"    # Z

    .prologue
    .line 581
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    invoke-virtual {p0}, synchronizeData()V

    .line 584
    :cond_9
    invoke-virtual {p0, p1}, isSpecified(Z)V

    .line 586
    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 593
    iput-object p1, p0, type:Ljava/lang/Object;

    .line 594
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 12
    .param p1, "newvalue"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 339
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    .line 341
    .local v3, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v6, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_21

    invoke-virtual {p0}, isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 342
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v6, v7, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/4 v7, 0x7

    invoke-direct {v6, v7, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 346
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    invoke-virtual {p0}, getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v4

    .line 347
    .local v4, "ownerElement":Lmf/org/w3c/dom/Element;
    const-string v2, ""

    .line 348
    .local v2, "oldvalue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 350
    .local v5, "textNode":Lmf/org/apache/xerces/dom/TextImpl;
    invoke-virtual {p0}, needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 351
    invoke-virtual {p0}, synchronizeData()V

    .line 353
    :cond_31
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 354
    invoke-virtual {p0}, synchronizeChildren()V

    .line 356
    :cond_3a
    iget-object v6, p0, value:Ljava/lang/Object;

    if-eqz v6, :cond_75

    .line 357
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 360
    invoke-virtual {p0}, hasStringValue()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 361
    iget-object v2, p0, value:Ljava/lang/Object;

    .end local v2    # "oldvalue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 364
    .restart local v2    # "oldvalue":Ljava/lang/String;
    iget-object v6, p0, value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v5

    .end local v5    # "textNode":Lmf/org/apache/xerces/dom/TextImpl;
    check-cast v5, Lmf/org/apache/xerces/dom/TextImpl;

    .line 365
    .restart local v5    # "textNode":Lmf/org/apache/xerces/dom/TextImpl;
    iput-object v5, p0, value:Ljava/lang/Object;

    .line 366
    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    .line 367
    iput-object v5, v5, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 368
    iput-object p0, v5, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 369
    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    .line 370
    invoke-virtual {p0, v8}, hasStringValue(Z)V

    .line 371
    invoke-virtual {p0, v5, v7}, internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 397
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, isIdAttribute()Z

    move-result v6

    if-eqz v6, :cond_75

    if-eqz v4, :cond_75

    .line 398
    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 407
    :cond_75
    invoke-virtual {p0, v7}, isSpecified(Z)V

    .line 408
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 412
    if-nez v5, :cond_cb

    .line 413
    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v5

    .end local v5    # "textNode":Lmf/org/apache/xerces/dom/TextImpl;
    check-cast v5, Lmf/org/apache/xerces/dom/TextImpl;

    .line 418
    .restart local v5    # "textNode":Lmf/org/apache/xerces/dom/TextImpl;
    :goto_86
    invoke-virtual {p0, v5, v9, v7}, internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 419
    invoke-virtual {p0, v8}, hasStringValue(Z)V

    .line 421
    invoke-virtual {v3, p0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V

    .line 428
    :goto_8f
    invoke-virtual {p0}, isIdAttribute()Z

    move-result v6

    if-eqz v6, :cond_9a

    if-eqz v4, :cond_9a

    .line 429
    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 432
    :cond_9a
    return-void

    .line 374
    :cond_9b
    invoke-virtual {p0}, getValue()Ljava/lang/String;

    move-result-object v2

    .line 375
    :goto_9f
    iget-object v6, p0, value:Ljava/lang/Object;

    if-eqz v6, :cond_6a

    .line 376
    iget-object v6, p0, value:Ljava/lang/Object;

    check-cast v6, Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v6, v7}, internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_9f

    .line 381
    :cond_ab
    invoke-virtual {p0}, hasStringValue()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 382
    iget-object v2, p0, value:Ljava/lang/Object;

    .end local v2    # "oldvalue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 394
    .restart local v2    # "oldvalue":Ljava/lang/String;
    :goto_b5
    iput-object v9, p0, value:Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, v8}, needsSyncChildren(Z)V

    goto :goto_6a

    .line 386
    :cond_bb
    invoke-virtual {p0}, getValue()Ljava/lang/String;

    move-result-object v2

    .line 388
    iget-object v0, p0, value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 389
    .local v0, "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    iput-object v9, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 390
    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 391
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_b5

    .line 416
    .end local v0    # "firstChild":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_cb
    iput-object p1, v5, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    goto :goto_86

    .line 424
    :cond_ce
    iput-object p1, p0, value:Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, v7}, hasStringValue(Z)V

    .line 426
    invoke-virtual {p0}, changed()V

    goto :goto_8f
.end method

.method protected synchronizeChildren()V
    .registers 2

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, needsSyncChildren(Z)V

    .line 1142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
