.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;
.super Ljava/lang/Object;
.source "XMLParserPskc.java"


# instance fields
.field private mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 486
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    .line 487
    .local v0, "algoParam":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    const/4 v6, 0x0

    .line 488
    .local v6, "tagname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 490
    .local v7, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 493
    .local v4, "eventType":I
    :goto_b
    const/4 v1, 0x0

    .line 494
    .local v1, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 496
    packed-switch v4, :pswitch_data_184

    .line 551
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v1, :cond_17d

    .line 562
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_15
    return-object v0

    .line 501
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 502
    goto :goto_13

    .line 505
    :pswitch_1b
    if-eqz v6, :cond_13

    .line 507
    const-string v8, "Suite"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 508
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setSuite(Ljava/lang/String;)V

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter Suite = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_42} :catch_43
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_42} :catch_ec

    goto :goto_13

    .line 556
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :catch_43
    move-exception v3

    .line 557
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_15

    .line 510
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_48
    :try_start_48
    const-string v8, "ChallengeFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 511
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;-><init>()V

    .line 512
    .local v2, "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setEncoding(Ljava/lang/String;)V

    .line 513
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 515
    const/4 v8, 0x0

    const-string v9, "Min"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMin(Ljava/lang/String;)V

    .line 516
    const/4 v8, 0x0

    const-string v9, "Max"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMax(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setChallengeFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;)V

    .line 518
    if-eqz v2, :cond_13

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ChallengeFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ChallengeFormat CheckDigit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 523
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ChallengeFormat Min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMin()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ChallengeFormat Max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMax()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_ea} :catch_43
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_ea} :catch_ec

    goto/16 :goto_13

    .line 558
    .end local v1    # "breakWhile":Z
    .end local v2    # "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    .end local v4    # "eventType":I
    :catch_ec
    move-exception v3

    .line 559
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    .line 528
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_f2
    :try_start_f2
    const-string v8, "ResponseFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_172

    .line 529
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;-><init>()V

    .line 530
    .local v5, "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setEncoding(Ljava/lang/String;)V

    .line 531
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 533
    const/4 v8, 0x0

    const-string v9, "Length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setLength(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setResponseFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;)V

    .line 535
    if-eqz v5, :cond_13

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ResponseFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ResponseFormat CheckDigits = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: AlgoParameter ResponseFormat Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 543
    .end local v5    # "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    :cond_172
    const-string v8, "AlgorithmParameters"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 544
    const/4 v1, 0x1

    goto/16 :goto_13

    .line 554
    :cond_17d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_180
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_180} :catch_43
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_180} :catch_ec

    move-result v4

    .line 555
    goto/16 :goto_b

    .line 496
    nop

    :pswitch_data_184
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private parseCryptoModuleToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 430
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;-><init>()V

    .line 432
    .local v3, "mCryptoModule":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    :try_start_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 433
    .local v2, "eventType":I
    const/4 v5, 0x0

    .line 436
    .local v5, "text":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x0

    .line 437
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "tagname":Ljava/lang/String;
    packed-switch v2, :pswitch_data_5c

    .line 462
    :cond_12
    :goto_12
    :pswitch_12
    if-eqz v0, :cond_51

    .line 473
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_14
    return-object v3

    .line 444
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 445
    goto :goto_12

    .line 448
    :pswitch_1a
    if-eqz v4, :cond_12

    .line 450
    const-string v6, "Id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 451
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;->setId(Ljava/lang/String;)V

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: CryptoModuleInfo Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_41} :catch_56

    goto :goto_12

    .line 467
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_42
    move-exception v1

    .line 468
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_14

    .line 454
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_47
    :try_start_47
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 455
    const/4 v0, 0x1

    goto :goto_12

    .line 465
    :cond_51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_54} :catch_42
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_54} :catch_56

    move-result v2

    .line 466
    goto :goto_a

    .line 469
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 439
    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_12
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method private parseDataToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 573
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;-><init>()V

    .line 574
    .local v1, "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    const/4 v5, 0x0

    .line 575
    .local v5, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    const/4 v3, 0x0

    .line 576
    .local v3, "encrypt":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    const/4 v7, 0x0

    .line 577
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 579
    .local v8, "text":Ljava/lang/String;
    :try_start_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_c} :catch_173
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_179

    move-result v4

    .local v4, "eventType":I
    move-object v6, v5

    .line 582
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .local v6, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_e
    const/4 v0, 0x0

    .line 583
    .local v0, "breakWhile":Z
    :try_start_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 584
    packed-switch v4, :pswitch_data_186

    :cond_16
    move-object v5, v6

    .line 644
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_17
    if-eqz v0, :cond_16c

    .line 655
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_19
    return-object v1

    .line 586
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_1a
    if-nez v7, :cond_1e

    move-object v5, v6

    .line 587
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 588
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_1e
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 589
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 590
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_2c
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 591
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 592
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_3a
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 593
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 594
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_48
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 595
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 596
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_56
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 597
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 598
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_64
    const-string v9, "EncryptedValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 599
    invoke-virtual {p0, p1}, parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v3

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 604
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .line 605
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 608
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_78
    if-nez v7, :cond_7c

    move-object v5, v6

    .line 609
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 610
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_7c
    const-string v9, "PlainValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    if-eqz v8, :cond_93

    .line 612
    const-string v9, "\\s"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 613
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setPlainValue(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 614
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_93
    const-string v9, "ValueMAC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    if-eqz v8, :cond_a3

    .line 615
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setValueMAC(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 618
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_a3
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b8

    if-eqz v6, :cond_b8

    .line 619
    if-eqz v3, :cond_b2

    .line 620
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V

    .line 621
    :cond_b2
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setSecret(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 624
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_b8
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e2

    if-eqz v6, :cond_e2

    .line 625
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setCounter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParserPskc:: Data Counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 627
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_e2
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10c

    if-eqz v6, :cond_10c

    .line 628
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTime(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 629
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParserPskc:: Data Time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTime()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 630
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_10c
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_136

    if-eqz v6, :cond_136

    .line 631
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeInterval(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParserPskc:: Data TimeInterval = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 633
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_136
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_160

    if-eqz v6, :cond_160

    .line 634
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeDrift(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 635
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParserPskc:: Data TimeDrift = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeDrift()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 636
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_160
    const-string v9, "Data"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_165} :catch_182
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_165} :catch_17f

    move-result v9

    if-eqz v9, :cond_16

    .line 637
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 647
    :cond_16c
    :try_start_16c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_16f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_16f} :catch_173
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_179

    move-result v4

    move-object v6, v5

    .line 648
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_e

    .line 649
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_173
    move-exception v2

    .line 650
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_174
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_19

    .line 651
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_179
    move-exception v2

    .line 652
    .local v2, "e":Ljava/io/IOException;
    :goto_17a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19

    .line 651
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_17f
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17a

    .line 649
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_182
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_174

    .line 584
    nop

    :pswitch_data_186
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_78
        :pswitch_72
    .end packed-switch
.end method

.method private parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 342
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;-><init>()V

    .line 343
    .local v3, "mDeviceInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    const/4 v4, 0x0

    .line 344
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 347
    .local v5, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 350
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 351
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 353
    packed-switch v2, :pswitch_data_1ac

    .line 406
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_1a5

    .line 417
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 358
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 359
    goto :goto_13

    .line 362
    :pswitch_1b
    if-eqz v4, :cond_13

    .line 364
    const-string/jumbo v6, "manufacturer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    if-eqz v5, :cond_79

    .line 365
    const-string/jumbo v6, "oath."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    const-string/jumbo v6, "iana."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 366
    :cond_3a
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo Manufacturer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_57} :catch_58
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_57} :catch_74

    goto :goto_13

    .line 411
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_58
    move-exception v1

    .line 412
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_15

    .line 370
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_5d
    :try_start_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Non-compliant Manufacturer value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_73} :catch_58
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_73} :catch_74

    goto :goto_13

    .line 413
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_74
    move-exception v1

    .line 414
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 371
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_79
    :try_start_79
    const-string/jumbo v6, "serialno"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    if-eqz v5, :cond_a3

    .line 372
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo SerialNo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 375
    :cond_a3
    const-string/jumbo v6, "model"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cd

    if-eqz v5, :cond_cd

    .line 376
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setModel(Ljava/lang/String;)V

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo Model = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 378
    :cond_cd
    const-string v6, "IssueNo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    if-eqz v5, :cond_f6

    .line 379
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setIssueNo(Ljava/lang/String;)V

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo IssueNo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getIssueNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 382
    :cond_f6
    const-string v6, "DeviceBinding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11f

    if-eqz v5, :cond_11f

    .line 383
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setDeviceBinding(Ljava/lang/String;)V

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo DeviceBinding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 386
    :cond_11f
    const-string v6, "StartDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_148

    if-eqz v5, :cond_148

    .line 387
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setStartDate(Ljava/lang/String;)V

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo StartDate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 390
    :cond_148
    const-string v6, "ExpiryDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_171

    if-eqz v5, :cond_171

    .line 391
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setExpiryDate(Ljava/lang/String;)V

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo ExpiryDate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 394
    :cond_171
    const-string v6, "UserId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    if-eqz v5, :cond_19a

    .line 395
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setUserID(Ljava/lang/String;)V

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: DeviceInfo UserId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 398
    :cond_19a
    const-string v6, "DeviceInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 399
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 409
    :cond_1a5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1a8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_1a8} :catch_58
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_1a8} :catch_74

    move-result v2

    .line 410
    goto/16 :goto_b

    .line 353
    nop

    :pswitch_data_1ac
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4} :catch_74
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_79

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .line 195
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .local v4, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_6
    :try_start_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "tagname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 198
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_84

    :cond_e
    move-object v3, v4

    .line 229
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_f
    if-eqz v0, :cond_6e

    .line 239
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v5    # "tagname":Ljava/lang/String;
    :goto_11
    return-object v3

    .line 200
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v5    # "tagname":Ljava/lang/String;
    :pswitch_12
    if-nez v5, :cond_16

    move-object v3, v4

    .line 201
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 202
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_16
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 204
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;-><init>()V

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 205
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_24
    const-string v6, "Key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    if-eqz v4, :cond_37

    .line 206
    invoke-direct {p0, p1}, parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 207
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_37
    const-string v6, "DeviceInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    if-eqz v4, :cond_4a

    .line 208
    invoke-direct {p0, p1}, parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 209
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_4a
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    .line 210
    invoke-direct {p0, p1}, parseCryptoModuleToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setCryptoModule(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :pswitch_5d
    move-object v3, v4

    .line 215
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 218
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :pswitch_5f
    if-nez v5, :cond_63

    move-object v3, v4

    .line 219
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 220
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_63
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_68} :catch_81
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_68} :catch_7e

    move-result v6

    if-eqz v6, :cond_e

    .line 221
    const/4 v0, 0x1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 232
    :cond_6e
    :try_start_6e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_79

    move-result v2

    move-object v4, v3

    .line 233
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_6

    .line 234
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v5    # "tagname":Ljava/lang/String;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_74
    move-exception v1

    .line 235
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_75
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_11

    .line 236
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_79
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    :goto_7a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 236
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_7e
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_7a

    .line 234
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_81
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_75

    .line 198
    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_12
        :pswitch_5f
        :pswitch_5d
    .end packed-switch
.end method

.method private parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 250
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;-><init>()V

    .line 251
    .local v3, "mKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    const/4 v4, 0x0

    .line 252
    .local v4, "tagname":Ljava/lang/String;
    const-string v6, "Id"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setId(Ljava/lang/String;)V

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 254
    const-string v6, "Algorithm"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithm(Ljava/lang/String;)V

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 257
    const/4 v5, 0x0

    .line 259
    .local v5, "text":Ljava/lang/String;
    :try_start_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 262
    .local v2, "eventType":I
    :goto_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_1a2

    .line 313
    :cond_5a
    :goto_5a
    if-eqz v0, :cond_19c

    .line 319
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 321
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    .line 330
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :cond_78
    :goto_78
    return-object v3

    .line 267
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_79
    if-eqz v4, :cond_5a

    .line 269
    const-string v6, "AlgorithmParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 270
    invoke-direct {p0, p1}, parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_8a} :catch_a0

    goto :goto_5a

    .line 324
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_8b
    move-exception v1

    .line 325
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_78

    .line 271
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_90
    :try_start_90
    const-string v6, "Data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 272
    invoke-direct {p0, p1}, parseDataToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;)V
    :try_end_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_9f} :catch_8b
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9f} :catch_a0

    goto :goto_5a

    .line 326
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_a0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_a5
    :try_start_a5
    const-string v6, "Policy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 274
    invoke-direct {p0, p1}, parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;)V

    goto :goto_5a

    .line 279
    :pswitch_b5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 280
    goto :goto_5a

    .line 283
    :pswitch_ba
    if-eqz v4, :cond_5a

    .line 285
    const-string v6, "Issuer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 286
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setIssuer(Ljava/lang/String;)V

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key Issuer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 288
    :cond_e3
    const-string v6, "FriendlyName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 289
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setFriendlyName(Ljava/lang/String;)V

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key FriendlyName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 291
    :cond_10a
    const-string v6, "UserID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 292
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setUserID(Ljava/lang/String;)V

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: UserID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 294
    :cond_131
    const-string v6, "KeyProfileID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_158

    .line 295
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyProfileID(Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key ProfileID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getKeyProfileID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 297
    :cond_158
    const-string v6, "KeyReference"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 298
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyReference(Ljava/lang/String;)V

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: Key KeyReference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getKeyReference()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 300
    :cond_17f
    const-string v6, "Key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 301
    iget-object v6, v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->mOcraSuite:Ljava/lang/String;

    if-eqz v6, :cond_199

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    if-nez v6, :cond_199

    .line 304
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V

    .line 306
    :cond_199
    const/4 v0, 0x1

    goto/16 :goto_5a

    .line 316
    :cond_19c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_19f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_19f} :catch_8b
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_19f} :catch_a0

    move-result v2

    .line 317
    goto/16 :goto_52

    .line 265
    :pswitch_data_1a2
    .packed-switch 0x2
        :pswitch_79
        :pswitch_ba
        :pswitch_b5
    .end packed-switch
.end method

.method private parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 128
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;-><init>()V

    .line 130
    .local v3, "macMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    :try_start_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 132
    .local v2, "eventType":I
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 134
    .local v5, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 136
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_a0

    .line 169
    :cond_12
    :goto_12
    if-eqz v0, :cond_99

    .line 179
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_14
    return-object v3

    .line 138
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_15
    if-eqz v4, :cond_12

    .line 140
    const-string v6, "MACMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 141
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setShaAlgo(Ljava/lang/String;)V

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: MACMethod Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_43} :catch_7d

    goto :goto_12

    .line 174
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_44
    move-exception v1

    .line 175
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_14

    .line 148
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_49
    :try_start_49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 149
    goto :goto_12

    .line 152
    :pswitch_4e
    if-eqz v4, :cond_12

    .line 154
    const-string v6, "EncryptionMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 155
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherAlgo(Ljava/lang/String;)V

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParserPskc:: EncryptionMethod Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_7c} :catch_44
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_7c} :catch_7d

    goto :goto_12

    .line 176
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_7d
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_82
    :try_start_82
    const-string v6, "CipherValue"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 159
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherData(Ljava/lang/String;)V

    goto :goto_12

    .line 160
    :cond_8e
    const-string v6, "MACKey"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 172
    :cond_99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_9c} :catch_44
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_9c} :catch_7d

    move-result v2

    .line 173
    goto/16 :goto_9

    .line 136
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_15
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method

.method private parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 666
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;-><init>()V

    .line 667
    .local v4, "policy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    const/4 v5, 0x0

    .line 668
    .local v5, "tagname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 670
    .local v6, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 673
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 674
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 676
    packed-switch v2, :pswitch_data_1cc

    .line 734
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_1c6

    .line 745
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v4

    .line 681
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 682
    goto :goto_13

    .line 685
    :pswitch_1b
    if-eqz v5, :cond_13

    .line 687
    const-string v7, "StartDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    if-eqz v6, :cond_4c

    .line 688
    if-eqz v6, :cond_2c

    .line 689
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setStartDate(Ljava/lang/String;)V

    .line 691
    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: Policy StartDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_46} :catch_47
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_46} :catch_74

    goto :goto_13

    .line 739
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_47
    move-exception v1

    .line 740
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_15

    .line 692
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_4c
    :try_start_4c
    const-string v7, "ExpiryDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    if-eqz v6, :cond_79

    .line 693
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setExpiryDate(Ljava/lang/String;)V

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: Policy ExpiryDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_73} :catch_47
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_73} :catch_74

    goto :goto_13

    .line 741
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_74
    move-exception v1

    .line 742
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 695
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_79
    :try_start_79
    const-string v7, "NumberOfTransactions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a2

    if-eqz v6, :cond_a2

    .line 696
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setNoOfTransactions(Ljava/lang/String;)V

    .line 697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: Policy NoOfTransactions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 699
    :cond_a2
    const-string v7, "KeyUsage"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cf

    if-eqz v6, :cond_cf

    .line 700
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setKeyUsage(Ljava/lang/String;)V

    .line 701
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: Policy KeyUsage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 703
    :cond_cf
    const-string v7, "PINPolicy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1bb

    if-eqz v6, :cond_1bb

    .line 704
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;-><init>()V

    .line 705
    .local v3, "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    const/4 v7, 0x0

    const-string v8, "PINKeyId"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinKeyID(Ljava/lang/String;)V

    .line 706
    const/4 v7, 0x0

    const-string v8, "MaxFailedAttempts"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxFailedAttempts(Ljava/lang/String;)V

    .line 708
    const/4 v7, 0x0

    const-string v8, "MinLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMinLength(Ljava/lang/String;)V

    .line 709
    const/4 v7, 0x0

    const-string v8, "MaxLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxLength(Ljava/lang/String;)V

    .line 710
    const/4 v7, 0x0

    const-string v8, "PINUsageMode"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinUsageMode(Ljava/lang/String;)V

    .line 712
    const/4 v7, 0x0

    const-string v8, "PINEncoding"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinEncoding(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setPinPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;)V

    .line 714
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy PINKeyId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy MaxFailedAttempts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy MinLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy MaxLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 722
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy PINUsageMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParserPskc:: PINPolicy PINEncoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 726
    .end local v3    # "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    :cond_1bb
    const-string v7, "Policy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 727
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 737
    :cond_1c6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_1c9} :catch_47
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_1c9} :catch_74

    move-result v2

    .line 738
    goto/16 :goto_b

    .line 676
    :pswitch_data_1cc
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 14
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 55
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 56
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 57
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 59
    const/4 v8, 0x0

    invoke-interface {v6, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 62
    .local v3, "eventType":I
    :goto_17
    if-eq v3, v11, :cond_24

    .line 63
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    const/4 v0, 0x0

    .line 67
    .local v0, "breakWhile":Z
    packed-switch v3, :pswitch_data_ee

    .line 107
    :cond_22
    :goto_22
    :pswitch_22
    if-eqz v0, :cond_e7

    .line 118
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    .end local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v7    # "tagname":Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 69
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    .restart local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v7    # "tagname":Ljava/lang/String;
    :pswitch_25
    if-eqz v7, :cond_22

    .line 71
    const-string v8, "KeyContainer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 73
    new-instance v8, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-direct {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;-><init>()V

    iput-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 74
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    const/4 v9, 0x0

    const-string v10, "Version"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setVersion(Ljava/lang/String;)V

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: KeyContainer Version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_67

    .line 78
    const/4 v0, 0x1

    .line 80
    :cond_67
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    const/4 v9, 0x0

    const-string v10, "Id"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setId(Ljava/lang/String;)V

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParserPskc:: KeyContainer Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 82
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    const/4 v9, 0x0

    const-string/jumbo v10, "xmlns"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setXmlns(Ljava/lang/String;)V
    :try_end_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9c} :catch_b7

    goto :goto_22

    .line 113
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    .end local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v7    # "tagname":Ljava/lang/String;
    :catch_9d
    move-exception v1

    .line 114
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_24

    .line 83
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    .restart local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v7    # "tagname":Ljava/lang/String;
    :cond_a2
    :try_start_a2
    const-string v8, "KeyPackage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 84
    invoke-direct {p0, v6}, parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_22

    .line 86
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->addKeys(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    :try_end_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_b5} :catch_9d
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b5} :catch_b7

    goto/16 :goto_22

    .line 115
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    .end local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v7    # "tagname":Ljava/lang/String;
    :catch_b7
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_24

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    .restart local v5    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v7    # "tagname":Ljava/lang/String;
    :cond_bd
    :try_start_bd
    const-string v8, "EncryptionKey"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 89
    invoke-virtual {p0, v6}, parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v2

    .line 90
    .local v2, "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    iget-object v8, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setKeyInfoEncryption(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;)V

    goto/16 :goto_22

    .line 91
    .end local v2    # "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    :cond_d0
    const-string v8, "MACMethod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 92
    invoke-direct {p0, v6}, parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    goto/16 :goto_22

    .line 93
    :cond_dd
    const-string v8, "Signature"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    goto/16 :goto_22

    .line 110
    :cond_e7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_ea} :catch_9d
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_ea} :catch_b7

    move-result v3

    .line 111
    goto/16 :goto_17

    .line 67
    nop

    :pswitch_data_ee
    .packed-switch 0x2
        :pswitch_25
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 750
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;-><init>()V

    .line 751
    .local v6, "value":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;-><init>()V

    .line 752
    .local v1, "cipher":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
    const/4 v4, 0x0

    .line 753
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 755
    .local v5, "text":Ljava/lang/String;
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 758
    .local v3, "eventType":I
    :goto_10
    const/4 v0, 0x0

    .line 759
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 761
    packed-switch v3, :pswitch_data_5e

    .line 785
    :cond_18
    :goto_18
    :pswitch_18
    if-eqz v0, :cond_58

    .line 796
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :goto_1a
    return-object v6

    .line 766
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :pswitch_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 767
    goto :goto_18

    .line 770
    :pswitch_20
    if-eqz v4, :cond_18

    .line 772
    const-string v7, "EncryptionMethod"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 773
    const/4 v7, 0x0

    const-string v8, "Algorithm"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setAlgorithm(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_34} :catch_49

    goto :goto_18

    .line 790
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_35
    move-exception v2

    .line 791
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1a

    .line 774
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_3a
    :try_start_3a
    const-string v7, "CipherValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 775
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->setCipherValue(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setCipherData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_48} :catch_35
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_18

    .line 792
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_49
    move-exception v2

    .line 793
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 777
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_4e
    :try_start_4e
    const-string v7, "EncryptedValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 778
    const/4 v0, 0x1

    goto :goto_18

    .line 788
    :cond_58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_5b} :catch_35
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_49

    move-result v3

    .line 789
    goto :goto_10

    .line 761
    nop

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_18
        :pswitch_20
        :pswitch_1b
    .end packed-switch
.end method

.method public parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 800
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;-><init>()V

    .line 801
    .local v5, "mKeyInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    const/4 v6, 0x0

    .line 802
    .local v6, "tagname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 804
    .local v7, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 807
    .local v4, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 808
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 809
    packed-switch v4, :pswitch_data_62

    .line 845
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_58

    .line 855
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_15
    return-object v5

    .line 814
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 815
    goto :goto_13

    .line 818
    :pswitch_1b
    const/4 v2, 0x0

    .line 819
    .local v2, "certData":[B
    const/4 v1, 0x0

    .line 820
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_13

    .line 823
    const-string v8, "X509Certificate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 824
    if-eqz v7, :cond_2e

    .line 825
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 828
    :cond_2e
    if-eqz v2, :cond_13

    goto :goto_13

    .line 833
    :cond_31
    const-string v8, "KeyName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 834
    if-eqz v7, :cond_13

    const-string v8, "Pre-shared-key"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 835
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_48} :catch_5d

    goto :goto_13

    .line 850
    .end local v0    # "breakWhile":Z
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certData":[B
    .end local v4    # "eventType":I
    :catch_49
    move-exception v3

    .line 851
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_15

    .line 837
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "certData":[B
    .restart local v4    # "eventType":I
    :cond_4e
    :try_start_4e
    const-string v8, "EncryptionKey"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 838
    const/4 v0, 0x1

    goto :goto_13

    .line 848
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certData":[B
    :cond_58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_5b} :catch_49
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_5d

    move-result v4

    .line 849
    goto :goto_b

    .line 852
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    :catch_5d
    move-exception v3

    .line 853
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 809
    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V
    .registers 2
    .param p1, "mKeyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .prologue
    .line 42
    iput-object p1, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 43
    return-void
.end method
