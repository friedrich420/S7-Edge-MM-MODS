.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const/4 v0, 0x0

    .line 519
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private scanForIdentifier()I
    .locals 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x2d

    .line 357
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 376
    :goto_0
    return v1

    .line 359
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 360
    .local v2, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 362
    .local v1, "lastValidPos":I
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 363
    .local v0, "ch":I
    if-ne v0, v5, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    .line 366
    :cond_1
    if-lt v0, v6, :cond_2

    if-le v0, v7, :cond_4

    :cond_2
    if-lt v0, v9, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_3
    if-ne v0, v8, :cond_8

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    .line 370
    :goto_1
    if-lt v0, v6, :cond_5

    if-le v0, v7, :cond_9

    :cond_5
    if-lt v0, v9, :cond_6

    const/16 v3, 0x7a

    if-le v0, v3, :cond_9

    :cond_6
    const/16 v3, 0x30

    if-lt v0, v3, :cond_7

    const/16 v3, 0x39

    if-le v0, v3, :cond_9

    :cond_7
    if-eq v0, v5, :cond_9

    if-eq v0, v8, :cond_9

    .line 373
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 375
    :cond_8
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_0

    .line 371
    :cond_9
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 348
    .local v0, "end":I
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v0, v2, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 352
    :goto_0
    return-object v1

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_0
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    :goto_0
    return-object v3

    .line 529
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 530
    .local v2, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 532
    .local v1, "lastValidPos":I
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 533
    .local v0, "ch":I
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    :cond_1
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-le v4, v2, :cond_4

    .line 539
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 535
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v1, v4, 0x1

    .line 536
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 540
    :cond_4
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_0
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 13
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 505
    :goto_0
    return v9

    .line 389
    :cond_0
    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 390
    .local v6, "start":I
    const/4 v2, 0x0

    .line 391
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    const/4 v5, 0x0

    .line 393
    .local v5, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 395
    const/16 v10, 0x3e

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 396
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 397
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 404
    :cond_1
    :goto_1
    const/16 v10, 0x2a

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 405
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 414
    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 497
    :cond_3
    :goto_3
    if-eqz v5, :cond_17

    .line 499
    invoke-virtual {p1, v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 500
    const/4 v9, 0x1

    goto :goto_0

    .line 398
    :cond_4
    const/16 v10, 0x2b

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 399
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 400
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_1

    .line 407
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "tag":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 409
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v7}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 410
    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_2

    .line 416
    .end local v7    # "tag":Ljava/lang/String;
    :cond_6
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 419
    if-nez v5, :cond_7

    .line 420
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 421
    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    :cond_7
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 423
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "Invalid \".class\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 424
    :cond_8
    const-string v10, "class"

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v5, v10, v11, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_2

    .line 429
    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    const/16 v10, 0x23

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 432
    if-nez v5, :cond_a

    .line 433
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 434
    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    :cond_a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 435
    .restart local v8    # "value":Ljava/lang/String;
    if-nez v8, :cond_b

    .line 436
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 437
    :cond_b
    const-string v10, "id"

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v5, v10, v11, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    .line 441
    .end local v8    # "value":Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_3

    .line 445
    const/16 v10, 0x5b

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 447
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 448
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "attrName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 450
    .local v1, "attrValue":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 451
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 452
    :cond_d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    const/16 v10, 0x3d

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 455
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 460
    :cond_e
    :goto_4
    if-eqz v3, :cond_12

    .line 461
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 462
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v1

    .line 463
    if-nez v1, :cond_11

    .line 464
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 456
    :cond_f
    const-string v10, "~="

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 457
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    .line 458
    :cond_10
    const-string v10, "|="

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 459
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    .line 465
    :cond_11
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 467
    :cond_12
    const/16 v10, 0x5d

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-nez v10, :cond_13

    .line 468
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 469
    :cond_13
    if-nez v3, :cond_14

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .end local v3    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_14
    invoke-virtual {v5, v0, v3, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_2

    .line 474
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :cond_15
    const/16 v10, 0x3a

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 477
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 478
    .local v4, "pseudoStart":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 479
    const/16 v10, 0x28

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 480
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 481
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 482
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    const/16 v10, 0x29

    invoke-virtual {p0, v10}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v10

    if-nez v10, :cond_16

    .line 484
    add-int/lit8 v10, v4, -0x1

    iput v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_3

    .line 489
    :cond_16
    iget-object v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v11, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_3

    .line 504
    .end local v4    # "pseudoStart":I
    :cond_17
    iput v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_0
.end method
