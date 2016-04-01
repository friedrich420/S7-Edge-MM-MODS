.class public Lmf/org/apache/html/dom/HTMLTableElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableElement;


# static fields
.field private static final serialVersionUID:J = -0x195056a14d41939cL


# instance fields
.field private _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;

    .line 386
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLTableElementImpl;
    iput-object v1, v0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 387
    iput-object v1, v0, _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 388
    return-object v0
.end method

.method public declared-synchronized createCaption()Lmf/org/w3c/dom/html/HTMLElement;
    .registers 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    move-result-object v0

    .line 72
    .local v0, "section":Lmf/org/w3c/dom/html/HTMLElement;
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 76
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .local v1, "section":Ljava/lang/Object;
    :goto_8
    monitor-exit p0

    return-object v1

    .line 74
    .end local v1    # "section":Ljava/lang/Object;
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    :cond_a
    :try_start_a
    new-instance v0, Lmf/org/apache/html/dom/HTMLTableCaptionElementImpl;

    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v3, "CAPTION"

    invoke-direct {v0, v2, v3}, Lmf/org/apache/html/dom/HTMLTableCaptionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 75
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0, v0}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1c

    move-object v1, v0

    .line 76
    .restart local v1    # "section":Ljava/lang/Object;
    goto :goto_8

    .line 71
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .end local v1    # "section":Ljava/lang/Object;
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createTFoot()Lmf/org/w3c/dom/html/HTMLElement;
    .registers 5

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    move-result-object v0

    .line 168
    .local v0, "section":Lmf/org/w3c/dom/html/HTMLElement;
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 172
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .local v1, "section":Ljava/lang/Object;
    :goto_8
    monitor-exit p0

    return-object v1

    .line 170
    .end local v1    # "section":Ljava/lang/Object;
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    :cond_a
    :try_start_a
    new-instance v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v3, "TFOOT"

    invoke-direct {v0, v2, v3}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 171
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0, v0}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1c

    move-object v1, v0

    .line 172
    .restart local v1    # "section":Ljava/lang/Object;
    goto :goto_8

    .line 167
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .end local v1    # "section":Ljava/lang/Object;
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createTHead()Lmf/org/w3c/dom/html/HTMLElement;
    .registers 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    move-result-object v0

    .line 120
    .local v0, "section":Lmf/org/w3c/dom/html/HTMLElement;
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 124
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .local v1, "section":Ljava/lang/Object;
    :goto_8
    monitor-exit p0

    return-object v1

    .line 122
    .end local v1    # "section":Ljava/lang/Object;
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    :cond_a
    :try_start_a
    new-instance v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v3, "THEAD"

    invoke-direct {v0, v2, v3}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 123
    .restart local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0, v0}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1c

    move-object v1, v0

    .line 124
    .restart local v1    # "section":Ljava/lang/Object;
    goto :goto_8

    .line 119
    .end local v0    # "section":Lmf/org/w3c/dom/html/HTMLElement;
    .end local v1    # "section":Ljava/lang/Object;
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteCaption()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    move-result-object v0

    .line 85
    .local v0, "old":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 87
    :cond_a
    monitor-exit p0

    return-void

    .line 84
    .end local v0    # "old":Lmf/org/w3c/dom/Node;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteRow(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    move-result-object v1

    .line 358
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v1, :cond_9

    .line 378
    :goto_7
    monitor-exit p0

    return-void

    .line 360
    :cond_9
    :try_start_9
    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v2, :cond_1d

    .line 362
    if-nez p1, :cond_16

    .line 364
    invoke-virtual {p0, v1}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    goto :goto_7

    .line 357
    .end local v1    # "child":Lmf/org/w3c/dom/Node;
    :catchall_13
    move-exception v2

    monitor-exit p0

    throw v2

    .line 367
    .restart local v1    # "child":Lmf/org/w3c/dom/Node;
    :cond_16
    add-int/lit8 p1, p1, -0x1

    .line 376
    :cond_18
    :try_start_18
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5

    .line 370
    :cond_1d
    instance-of v2, v1, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    if-eqz v2, :cond_18

    .line 372
    move-object v0, v1

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_13

    move-result p1

    .line 373
    if-gez p1, :cond_18

    goto :goto_7
.end method

.method public declared-synchronized deleteTFoot()V
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    .line 181
    .local v0, "old":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_a

    .line 182
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 183
    :cond_a
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "old":Lmf/org/w3c/dom/Node;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteTHead()V
    .registers 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    .line 133
    .local v0, "old":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 135
    :cond_a
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "old":Lmf/org/w3c/dom/Node;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    const-string v0, "border"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;
    .registers 4

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    move-result-object v0

    .line 46
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v0, :cond_a

    .line 53
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_8
    monitor-exit p0

    return-object v0

    .line 48
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_a
    :try_start_a
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    if-eqz v1, :cond_1d

    .line 49
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 50
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    goto :goto_8

    .line 51
    :cond_1d
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_5

    .line 45
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCellPadding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    const-string v0, "cellpadding"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellSpacing()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    const-string v0, "cellspacing"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    const-string/jumbo v0, "frame"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_c

    .line 188
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 189
    :cond_c
    iget-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    const-string/jumbo v0, "rules"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    const-string/jumbo v0, "summary"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTBodies()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_c

    .line 196
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 197
    :cond_c
    iget-object v0, p0, _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public declared-synchronized getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    .registers 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    move-result-object v0

    .line 142
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v0, :cond_a

    .line 149
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_8
    monitor-exit p0

    return-object v0

    .line 144
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_a
    :try_start_a
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_1d

    .line 145
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TFOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 146
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    goto :goto_8

    .line 147
    :cond_1d
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_5

    .line 141
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    .registers 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    move-result-object v0

    .line 94
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v0, :cond_a

    .line 101
    const/4 v0, 0x0

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :goto_8
    monitor-exit p0

    return-object v0

    .line 96
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_a
    :try_start_a
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_1d

    .line 97
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "THEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    goto :goto_8

    .line 99
    :cond_1d
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_5

    .line 93
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertRow(I)Lmf/org/w3c/dom/html/HTMLElement;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 313
    new-instance v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v2, "TR"

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 315
    .local v0, "newRow":Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
    invoke-virtual {p0, p1, v0}, insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V

    .line 316
    return-object v0
.end method

.method insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "newRow"    # Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "lastSection":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 326
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v0, :cond_d

    .line 346
    if-eqz v1, :cond_2a

    .line 347
    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 350
    :cond_c
    :goto_c
    return-void

    .line 328
    :cond_d
    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v2, :cond_17

    .line 330
    if-nez p1, :cond_25

    .line 332
    invoke-virtual {p0, p2, v0}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_c

    .line 337
    :cond_17
    instance-of v2, v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    if-eqz v2, :cond_25

    .line 339
    move-object v1, v0

    move-object v2, v0

    .line 340
    check-cast v2, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result p1

    .line 341
    if-ltz p1, :cond_c

    .line 344
    :cond_25
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_5

    .line 349
    :cond_2a
    invoke-virtual {p0, p2}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_c
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .registers 3
    .param p1, "border"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "border"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public declared-synchronized setCaption(Lmf/org/w3c/dom/html/HTMLTableCaptionElement;)V
    .registers 4
    .param p1, "caption"    # Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    .prologue
    .line 59
    monitor-enter p0

    if-eqz p1, :cond_1a

    :try_start_3
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTM016 Argument \'caption\' is not an element of type <CAPTION>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 59
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, deleteCaption()V

    .line 62
    if-eqz p1, :cond_22

    .line 63
    invoke-virtual {p0, p1}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 64
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public setCellPadding(Ljava/lang/String;)V
    .registers 3
    .param p1, "cellPadding"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "cellpadding"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setCellSpacing(Ljava/lang/String;)V
    .registers 3
    .param p1, "cellSpacing"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "cellspacing"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setFrame(Ljava/lang/String;)V
    .registers 3
    .param p1, "frame"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string/jumbo v0, "frame"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setRules(Ljava/lang/String;)V
    .registers 3
    .param p1, "rules"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v0, "rules"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string/jumbo v0, "summary"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public declared-synchronized setTFoot(Lmf/org/w3c/dom/html/HTMLTableSectionElement;)V
    .registers 4
    .param p1, "tFoot"    # Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    .prologue
    .line 155
    monitor-enter p0

    if-eqz p1, :cond_1a

    :try_start_3
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TFOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTM018 Argument \'tFoot\' is not an element of type <TFOOT>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 155
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, deleteTFoot()V

    .line 158
    if-eqz p1, :cond_22

    .line 159
    invoke-virtual {p0, p1}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 160
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTHead(Lmf/org/w3c/dom/html/HTMLTableSectionElement;)V
    .registers 4
    .param p1, "tHead"    # Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    .prologue
    .line 107
    monitor-enter p0

    if-eqz p1, :cond_1a

    :try_start_3
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTM017 Argument \'tHead\' is not an element of type <THEAD>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 107
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, deleteTHead()V

    .line 110
    if-eqz p1, :cond_22

    .line 111
    invoke-virtual {p0, p1}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 112
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method
