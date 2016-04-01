.class Lmf/org/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;
.source "HTMLCollectionImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmf/org/w3c/dom/html/HTMLCollection;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lmf/org/w3c/dom/Element;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/html/HTMLElement;S)V
    .registers 5
    .param p1, "topLevel"    # Lmf/org/w3c/dom/html/HTMLElement;
    .param p2, "lookingFor"    # S

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    if-nez p1, :cond_d

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_d
    iput-object p1, p0, _topLevel:Lmf/org/w3c/dom/Element;

    .line 171
    iput-short p2, p0, _lookingFor:S

    .line 172
    return-void
.end method

.method private getLength(Lmf/org/w3c/dom/Element;)I
    .registers 7
    .param p1, "topLevel"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 236
    monitor-enter p1

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "length":I
    :try_start_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 242
    .local v2, "node":Lmf/org/w3c/dom/Node;
    :goto_6
    if-nez v2, :cond_a

    .line 236
    monitor-exit p1

    .line 258
    return v1

    .line 248
    :cond_a
    instance-of v3, v2, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_1b

    .line 250
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 255
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_6

    .line 252
    :cond_20
    invoke-virtual {p0}, recurse()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 253
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3}, getLength(Lmf/org/w3c/dom/Element;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1b

    .line 236
    .end local v2    # "node":Lmf/org/w3c/dom/Node;
    :catchall_30
    move-exception v3

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_30

    throw v3
.end method

.method private item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;
    .registers 9
    .param p1, "topLevel"    # Lmf/org/w3c/dom/Element;
    .param p2, "index"    # Lmf/org/apache/html/dom/CollectionIndex;

    .prologue
    const/4 v4, 0x0

    .line 283
    monitor-enter p1

    .line 288
    :try_start_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 289
    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_6
    if-nez v1, :cond_b

    .line 283
    monitor-exit p1

    move-object v1, v4

    .line 312
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :goto_a
    return-object v1

    .line 295
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_b
    instance-of v3, v1, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_28

    .line 297
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 299
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->isZero()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 300
    monitor-exit p1

    goto :goto_a

    .line 283
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :catchall_22
    move-exception v3

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_22

    throw v3

    .line 301
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_25
    :try_start_25
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->decrement()V

    .line 309
    :cond_28
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_6

    .line 302
    :cond_2d
    invoke-virtual {p0}, recurse()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 304
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3, p2}, item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 305
    .local v2, "result":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_28

    .line 306
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_22

    move-object v1, v2

    goto :goto_a
.end method

.method private namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "topLevel"    # Lmf/org/w3c/dom/Element;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    monitor-enter p1

    .line 333
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 334
    .local v1, "node":Lmf/org/w3c/dom/Node;
    :goto_5
    if-nez v1, :cond_9

    .line 353
    monitor-exit p1

    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :goto_8
    return-object v1

    .line 340
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_9
    instance-of v3, v1, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_2f

    .line 342
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-virtual {p0, v3, p2}, collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 343
    monitor-exit p1

    goto :goto_8

    .line 329
    .end local v1    # "node":Lmf/org/w3c/dom/Node;
    :catchall_19
    move-exception v3

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v3

    .line 344
    .restart local v1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, recurse()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 346
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3, p2}, namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 347
    .local v2, "result":Lmf/org/w3c/dom/Node;
    if-eqz v2, :cond_2f

    .line 348
    monitor-exit p1

    move-object v1, v2

    goto :goto_8

    .line 351
    .end local v2    # "result":Lmf/org/w3c/dom/Node;
    :cond_2f
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_19

    move-result-object v1

    goto :goto_5
.end method


# virtual methods
.method protected collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z
    .registers 8
    .param p1, "elem"    # Lmf/org/w3c/dom/Element;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    monitor-enter p1

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "match":Z
    :try_start_4
    iget-short v3, p0, _lookingFor:S

    packed-switch v3, :pswitch_data_b4

    .line 455
    :goto_9
    :pswitch_9
    if-eqz v0, :cond_ad

    if-eqz p2, :cond_ad

    .line 459
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v2, :cond_a2

    .line 460
    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 461
    monitor-exit p1

    .line 465
    :goto_1f
    return v1

    .line 399
    :pswitch_20
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v3, :cond_33

    .line 400
    const-string/jumbo v3, "name"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 399
    if-lez v3, :cond_33

    move v0, v1

    .line 401
    :goto_32
    goto :goto_9

    :cond_33
    move v0, v2

    .line 399
    goto :goto_32

    .line 404
    :pswitch_35
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLFormElement;

    .line 405
    goto :goto_9

    .line 408
    :pswitch_38
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLImageElement;

    .line 409
    goto :goto_9

    .line 414
    :pswitch_3b
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAppletElement;

    if-nez v3, :cond_62

    .line 415
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLObjectElement;

    if-eqz v3, :cond_60

    .line 416
    const-string v3, "application/java"

    const-string v4, "codetype"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 417
    const-string v3, "classid"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "java:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_60
    move v0, v2

    .line 418
    :goto_61
    goto :goto_9

    :cond_62
    move v0, v1

    .line 414
    goto :goto_61

    .line 421
    :pswitch_64
    instance-of v0, p1, Lmf/org/apache/html/dom/HTMLFormControl;

    .line 422
    goto :goto_9

    .line 425
    :pswitch_67
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-nez v3, :cond_6f

    .line 426
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    if-eqz v3, :cond_7e

    .line 427
    :cond_6f
    const-string/jumbo v3, "href"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 425
    if-lez v3, :cond_7e

    move v0, v1

    .line 428
    :goto_7d
    goto :goto_9

    :cond_7e
    move v0, v2

    .line 425
    goto :goto_7d

    .line 431
    :pswitch_80
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    .line 432
    goto :goto_9

    .line 435
    :pswitch_83
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLOptionElement;

    .line 436
    goto :goto_9

    .line 439
    :pswitch_86
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    .line 440
    goto :goto_9

    .line 443
    :pswitch_89
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v3, :cond_9c

    .line 444
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TBODY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    move v0, v1

    .line 445
    :goto_9a
    goto/16 :goto_9

    :cond_9c
    move v0, v2

    .line 443
    goto :goto_9a

    .line 448
    :pswitch_9e
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    goto/16 :goto_9

    .line 462
    :cond_a2
    const-string/jumbo v1, "id"

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 387
    :cond_ad
    monitor-exit p1

    move v1, v0

    .line 465
    goto/16 :goto_1f

    .line 387
    :catchall_b1
    move-exception v1

    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_4 .. :try_end_b3} :catchall_b1

    throw v1

    .line 394
    :pswitch_data_b4
    .packed-switch -0x3
        :pswitch_9e
        :pswitch_89
        :pswitch_80
        :pswitch_9
        :pswitch_20
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_67
        :pswitch_83
        :pswitch_86
        :pswitch_64
    .end packed-switch
.end method

.method public final getLength()I
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, _topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0}, getLength(Lmf/org/w3c/dom/Element;)I

    move-result v0

    return v0
.end method

.method public final item(I)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 198
    if-gez p1, :cond_a

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTM012 Argument \'index\' is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_a
    iget-object v0, p0, _topLevel:Lmf/org/w3c/dom/Element;

    new-instance v1, Lmf/org/apache/html/dom/CollectionIndex;

    invoke-direct {v1, p1}, Lmf/org/apache/html/dom/CollectionIndex;-><init>(I)V

    invoke-direct {p0, v0, v1}, item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public final namedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    if-nez p1, :cond_a

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTM013 Argument \'name\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_a
    iget-object v0, p0, _topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected recurse()Z
    .registers 2

    .prologue
    .line 368
    iget-short v0, p0, _lookingFor:S

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
