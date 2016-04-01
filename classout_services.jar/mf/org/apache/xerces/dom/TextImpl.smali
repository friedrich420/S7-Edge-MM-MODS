.class public Lmf/org/apache/xerces/dom/TextImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;
.implements Lmf/org/w3c/dom/Text;


# static fields
.field static final serialVersionUID:J = -0x497b8d082105594dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private canModifyNext(Lmf/org/w3c/dom/Node;)Z
    .registers 13
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 477
    const/4 v3, 0x0

    .line 479
    .local v3, "textFirstChild":Z
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 480
    .local v2, "next":Lmf/org/w3c/dom/Node;
    :goto_a
    if-nez v2, :cond_e

    move v5, v6

    .line 537
    :cond_d
    :goto_d
    return v5

    .line 482
    :cond_e
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 484
    .local v4, "type":S
    if-ne v4, v10, :cond_3d

    .line 487
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 491
    .local v0, "firstChild":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_d

    .line 498
    :goto_1a
    if-nez v0, :cond_21

    .line 534
    .end local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    :cond_1c
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_a

    .line 499
    .restart local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    :cond_21
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 501
    .local v1, "lType":S
    if-eq v1, v8, :cond_29

    .line 502
    if-ne v1, v9, :cond_2f

    .line 503
    :cond_29
    const/4 v3, 0x1

    .line 522
    :goto_2a
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1a

    .line 504
    :cond_2f
    if-ne v1, v10, :cond_39

    .line 505
    invoke-direct {p0, v0}, canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 511
    const/4 v3, 0x1

    .line 513
    goto :goto_2a

    .line 516
    :cond_39
    if-nez v3, :cond_d

    move v5, v6

    .line 519
    goto :goto_d

    .line 524
    .end local v0    # "firstChild":Lmf/org/w3c/dom/Node;
    .end local v1    # "lType":S
    :cond_3d
    if-eq v4, v8, :cond_1c

    .line 525
    if-eq v4, v9, :cond_1c

    move v5, v6

    .line 531
    goto :goto_d
.end method

.method private canModifyPrev(Lmf/org/w3c/dom/Node;)Z
    .registers 13
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 392
    const/4 v3, 0x0

    .line 394
    .local v3, "textLastChild":Z
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 396
    .local v2, "prev":Lmf/org/w3c/dom/Node;
    :goto_a
    if-nez v2, :cond_e

    move v5, v6

    .line 454
    :cond_d
    :goto_d
    return v5

    .line 398
    :cond_e
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    .line 400
    .local v4, "type":S
    if-ne v4, v10, :cond_3d

    .line 403
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 407
    .local v1, "lastChild":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_d

    .line 414
    :goto_1a
    if-nez v1, :cond_21

    .line 451
    .end local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_1c
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_a

    .line 415
    .restart local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_21
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 417
    .local v0, "lType":S
    if-eq v0, v8, :cond_29

    .line 418
    if-ne v0, v9, :cond_2f

    .line 419
    :cond_29
    const/4 v3, 0x1

    .line 439
    :goto_2a
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1a

    .line 420
    :cond_2f
    if-ne v0, v10, :cond_39

    .line 421
    invoke-direct {p0, v1}, canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 427
    const/4 v3, 0x1

    .line 429
    goto :goto_2a

    .line 433
    :cond_39
    if-nez v3, :cond_d

    move v5, v6

    .line 436
    goto :goto_d

    .line 441
    .end local v0    # "lType":S
    .end local v1    # "lastChild":Lmf/org/w3c/dom/Node;
    :cond_3d
    if-eq v4, v8, :cond_1c

    .line 442
    if-eq v4, v9, :cond_1c

    move v5, v6

    .line 448
    goto :goto_d
.end method

.method private getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .registers 10
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "inEntRef":Z
    if-eqz p3, :cond_d

    .line 240
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_1d

    move v0, v3

    .line 243
    :cond_d
    :goto_d
    if-nez p1, :cond_1f

    .line 264
    if-eqz v0, :cond_41

    .line 265
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 269
    :cond_1c
    :goto_1c
    return v3

    :cond_1d
    move v0, v4

    .line 240
    goto :goto_d

    .line 244
    :cond_1f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 245
    .local v1, "type":S
    if-ne v1, v5, :cond_34

    .line 246
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 258
    :goto_2f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_d

    .line 250
    :cond_34
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3a

    .line 251
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    :cond_3a
    move-object v2, p1

    .line 252
    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v2, p2}, insertTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2f

    .end local v1    # "type":S
    :cond_41
    move v3, v4

    .line 269
    goto :goto_1c
.end method

.method private getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .registers 10
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "inEntRef":Z
    if-eqz p3, :cond_d

    .line 193
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_1d

    move v0, v3

    .line 196
    :cond_d
    :goto_d
    if-nez p1, :cond_1f

    .line 217
    if-eqz v0, :cond_41

    .line 218
    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 222
    :cond_1c
    :goto_1c
    return v3

    :cond_1d
    move v0, v4

    .line 193
    goto :goto_d

    .line 197
    :cond_1f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 198
    .local v1, "type":S
    if-ne v1, v5, :cond_34

    .line 199
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 211
    :goto_2f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_d

    .line 203
    :cond_34
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3a

    .line 204
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    :cond_3a
    move-object v2, p1

    .line 205
    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2f

    .end local v1    # "type":S
    :cond_41
    move v3, v4

    .line 222
    goto :goto_1c
.end method

.method private hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 548
    move-object v0, p1

    .line 550
    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-nez v0, :cond_6

    .line 568
    :cond_5
    :goto_5
    return v2

    .line 554
    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 555
    :goto_a
    if-nez v0, :cond_e

    .line 568
    const/4 v2, 0x1

    goto :goto_5

    .line 556
    :cond_e
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 558
    .local v1, "type":I
    if-ne v1, v4, :cond_19

    .line 559
    invoke-direct {p0, v0}, hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    goto :goto_5

    .line 561
    :cond_19
    const/4 v3, 0x3

    if-eq v1, v3, :cond_21

    .line 562
    const/4 v3, 0x4

    if-eq v1, v3, :cond_21

    .line 563
    if-ne v1, v4, :cond_5

    .line 566
    :cond_21
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x3

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 142
    invoke-virtual {p0}, needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 143
    invoke-virtual {p0}, synchronizeData()V

    .line 146
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, data:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 148
    iget-object v2, p0, data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_1f
    invoke-virtual {p0}, getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 159
    invoke-virtual {p0}, getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected insertTextContent(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_a
    return-void
.end method

.method public isElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p0}, synchronizeData()V

    .line 130
    :cond_9
    invoke-virtual {p0}, internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public isIgnorableWhitespace()Z
    .registers 2

    .prologue
    .line 577
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 578
    invoke-virtual {p0}, synchronizeData()V

    .line 580
    :cond_9
    invoke-virtual {p0}, internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public removeData()Ljava/lang/String;
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, data:Ljava/lang/String;

    .line 654
    .local v0, "olddata":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, data:Ljava/lang/String;

    .line 655
    return-object v0
.end method

.method public replaceData(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, data:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .registers 12
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 286
    invoke-virtual {p0}, synchronizeData()V

    .line 290
    :cond_e
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 291
    .local v3, "parent":Lmf/org/w3c/dom/Node;
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_20

    .line 293
    :cond_1a
    if-eqz v3, :cond_1f

    .line 294
    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 369
    :cond_1f
    :goto_1f
    return-object v1

    .line 300
    :cond_20
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_52

    .line 301
    invoke-direct {p0, p0}, canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 302
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 304
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 305
    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    .line 303
    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 309
    :cond_3d
    invoke-direct {p0, p0}, canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 310
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    .line 312
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    .line 313
    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    .line 311
    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 318
    :cond_52
    const/4 v0, 0x0

    .line 319
    .local v0, "currentNode":Lmf/org/w3c/dom/Text;
    invoke-virtual {p0}, isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 320
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    .line 321
    .local v1, "newNode":Lmf/org/w3c/dom/Text;
    if-eqz v3, :cond_1f

    .line 322
    invoke-interface {v3, v1, p0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 323
    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 324
    move-object v0, v1

    .line 334
    .end local v1    # "newNode":Lmf/org/w3c/dom/Text;
    :goto_6a
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 335
    .local v4, "prev":Lmf/org/w3c/dom/Node;
    :goto_6e
    if-nez v4, :cond_7d

    .line 352
    :cond_70
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 353
    .local v2, "next":Lmf/org/w3c/dom/Node;
    :goto_74
    if-nez v2, :cond_9e

    :cond_76
    move-object v1, v0

    .line 369
    goto :goto_1f

    .line 329
    .end local v2    # "next":Lmf/org/w3c/dom/Node;
    .end local v4    # "prev":Lmf/org/w3c/dom/Node;
    :cond_78
    invoke-virtual {p0, p1}, setData(Ljava/lang/String;)V

    .line 330
    move-object v0, p0

    goto :goto_6a

    .line 340
    .restart local v4    # "prev":Lmf/org/w3c/dom/Node;
    :cond_7d
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_95

    .line 341
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_95

    .line 342
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_70

    invoke-direct {p0, v4}, hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 343
    :cond_95
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 344
    move-object v4, v0

    .line 348
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_6e

    .line 358
    .restart local v2    # "next":Lmf/org/w3c/dom/Node;
    :cond_9e
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_b6

    .line 359
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_b6

    .line 360
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_76

    invoke-direct {p0, v2}, hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 361
    :cond_b6
    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 362
    move-object v2, v0

    .line 366
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_74
.end method

.method public setIgnorableWhitespace(Z)V
    .registers 3
    .param p1, "ignore"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    invoke-virtual {p0}, synchronizeData()V

    .line 110
    :cond_9
    invoke-virtual {p0, p1}, isIgnorableWhitespace(Z)V

    .line 112
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    iput-short v0, p0, flags:S

    .line 80
    iput-object v1, p0, nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 81
    iput-object v1, p0, previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 82
    invoke-virtual {p0, p1}, setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 83
    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public splitText(I)Lmf/org/w3c/dom/Text;
    .registers 9
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 610
    invoke-virtual {p0}, isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 611
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    .line 612
    const/4 v3, 0x7

    .line 613
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 611
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 616
    :cond_17
    invoke-virtual {p0}, needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 617
    invoke-virtual {p0}, synchronizeData()V

    .line 619
    :cond_20
    if-ltz p1, :cond_2a

    iget-object v2, p0, data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_3a

    .line 620
    :cond_2a
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x1

    .line 621
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INDEX_SIZE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 626
    :cond_3a
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    iget-object v3, p0, data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    .line 627
    .local v0, "newText":Lmf/org/w3c/dom/Text;
    iget-object v2, p0, data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, setNodeValue(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 631
    .local v1, "parentNode":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_5d

    .line 632
    iget-object v2, p0, nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-interface {v1, v0, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 635
    :cond_5d
    return-object v0
.end method
