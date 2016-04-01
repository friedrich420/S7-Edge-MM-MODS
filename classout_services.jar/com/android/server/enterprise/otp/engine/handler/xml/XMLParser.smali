.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# instance fields
.field private mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

.field private mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

.field private mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

.field private mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

.field public xmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 656
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    .line 657
    .local v0, "algoParam":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    const/4 v6, 0x0

    .line 658
    .local v6, "tagname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 660
    .local v7, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 663
    .local v4, "eventType":I
    :goto_b
    const/4 v1, 0x0

    .line 664
    .local v1, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 666
    packed-switch v4, :pswitch_data_1b2

    .line 721
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v1, :cond_1ab

    .line 732
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_15
    return-object v0

    .line 671
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 672
    goto :goto_13

    .line 675
    :pswitch_1b
    if-eqz v6, :cond_13

    .line 677
    const-string v8, "Suite"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 678
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setSuite(Ljava/lang/String;)V

    .line 679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter Suite = "

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
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_42} :catch_103

    goto :goto_13

    .line 726
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :catch_43
    move-exception v3

    .line 727
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser :: failed to parse Algorithm parameters - XmlPullParserException Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 680
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_5f
    :try_start_5f
    const-string v8, "ChallengeFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 681
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;-><init>()V

    .line 682
    .local v2, "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setEncoding(Ljava/lang/String;)V

    .line 683
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 685
    const/4 v8, 0x0

    const-string v9, "Min"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMin(Ljava/lang/String;)V

    .line 686
    const/4 v8, 0x0

    const-string v9, "Max"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMax(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setChallengeFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;)V

    .line 688
    if-eqz v2, :cond_13

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat CheckDigit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMin()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMax()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_101} :catch_43
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_101} :catch_103

    goto/16 :goto_13

    .line 728
    .end local v1    # "breakWhile":Z
    .end local v2    # "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    .end local v4    # "eventType":I
    :catch_103
    move-exception v3

    .line 729
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser :: failed to parse Algorithm parameters - IOException Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 698
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_120
    :try_start_120
    const-string v8, "ResponseFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a0

    .line 699
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;-><init>()V

    .line 700
    .local v5, "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setEncoding(Ljava/lang/String;)V

    .line 701
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 703
    const/4 v8, 0x0

    const-string v9, "Length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setLength(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setResponseFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;)V

    .line 705
    if-eqz v5, :cond_13

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat CheckDigits = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat Length = "

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

    .line 713
    .end local v5    # "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    :cond_1a0
    const-string v8, "AlgorithmParameters"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 714
    const/4 v1, 0x1

    goto/16 :goto_13

    .line 724
    :cond_1ab
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_120 .. :try_end_1ae} :catch_43
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_1ae} :catch_103

    move-result v4

    .line 725
    goto/16 :goto_b

    .line 666
    nop

    :pswitch_data_1b2
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1204
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;-><init>()V

    .line 1205
    .local v3, "mAuthenticationCodeMAC":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    const/4 v4, 0x0

    .line 1206
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1209
    .local v5, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1212
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 1213
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1215
    packed-switch v2, :pswitch_data_b8

    .line 1247
    :cond_13
    :goto_13
    if-eqz v0, :cond_b2

    .line 1258
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 1217
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    if-eqz v4, :cond_13

    .line 1219
    const-string v6, "Mac"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1220
    const/4 v6, 0x0

    const-string v7, "MacAlgorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setMacAlgo(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_5e

    goto :goto_13

    .line 1252
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_2b
    move-exception v1

    .line 1253
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Code MAC - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1225
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_47
    :try_start_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1226
    goto :goto_13

    .line 1229
    :pswitch_4c
    if-eqz v4, :cond_13

    .line 1231
    const-string v6, "IterationCount"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1232
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setIterationCount(I)V
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_5d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5d} :catch_5e

    goto :goto_13

    .line 1254
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_5e
    move-exception v1

    .line 1255
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Code MAC - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1233
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_7a
    :try_start_7a
    const-string v6, "Mac"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1234
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setMac(Ljava/lang/String;)V

    goto :goto_13

    .line 1235
    :cond_86
    const-string v6, "Nonce"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1236
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setNonce(Ljava/lang/String;)V

    goto :goto_13

    .line 1237
    :cond_92
    const-string v6, "AuthenticationCodeMAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 1238
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 1239
    :cond_9d
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, xmlName:Ljava/lang/String;

    const-string v7, "KeyProvServerFinished"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1240
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 1250
    :cond_b2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_b5} :catch_2b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_b5} :catch_5e

    move-result v2

    .line 1251
    goto/16 :goto_b

    .line 1215
    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_16
        :pswitch_4c
        :pswitch_47
    .end packed-switch
.end method

.method private parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1152
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;-><init>()V

    .line 1153
    .local v3, "mAuthenticationData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    const/4 v4, 0x0

    .line 1154
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1157
    .local v5, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1160
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 1161
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1163
    packed-switch v2, :pswitch_data_82

    .line 1189
    :cond_13
    :goto_13
    if-eqz v0, :cond_7d

    .line 1200
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 1165
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    if-eqz v4, :cond_13

    .line 1167
    const-string v6, "AuthenticationCodeMAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1168
    invoke-direct {p0, p1}, parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->setAuthenticationCodeMAC(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_27} :catch_57

    goto :goto_13

    .line 1194
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_28
    move-exception v1

    .line 1195
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Data - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1173
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_44
    :try_start_44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1174
    goto :goto_13

    .line 1177
    :pswitch_49
    if-eqz v4, :cond_13

    .line 1179
    const-string v6, "ClientID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1180
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->setClientID(Ljava/lang/String;)V
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_56} :catch_28
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_56} :catch_57

    goto :goto_13

    .line 1196
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_57
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Data - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1181
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_73
    :try_start_73
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1182
    const/4 v0, 0x1

    goto :goto_13

    .line 1192
    :cond_7d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_80} :catch_28
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_80} :catch_57

    move-result v2

    .line 1193
    goto :goto_b

    .line 1163
    :pswitch_data_82
    .packed-switch 0x2
        :pswitch_16
        :pswitch_49
        :pswitch_44
    .end packed-switch
.end method

.method private parseCryptoModuleToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 601
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;-><init>()V

    .line 603
    .local v3, "mCryptoModule":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    :try_start_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 604
    .local v2, "eventType":I
    const/4 v5, 0x0

    .line 607
    .local v5, "text":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x0

    .line 608
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "tagname":Ljava/lang/String;
    packed-switch v2, :pswitch_data_8a

    .line 633
    :cond_12
    :goto_12
    :pswitch_12
    if-eqz v0, :cond_68

    .line 644
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_14
    return-object v3

    .line 615
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 616
    goto :goto_12

    .line 619
    :pswitch_1a
    if-eqz v4, :cond_12

    .line 621
    const-string v6, "Id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 622
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;->setId(Ljava/lang/String;)V

    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: CryptoModuleInfo Id = "

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
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_41} :catch_6d

    goto :goto_12

    .line 638
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_42
    move-exception v1

    .line 639
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Crypto module - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 625
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_5e
    :try_start_5e
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 626
    const/4 v0, 0x1

    goto :goto_12

    .line 636
    :cond_68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_6b} :catch_42
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6b} :catch_6d

    move-result v2

    .line 637
    goto :goto_a

    .line 640
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_6d
    move-exception v1

    .line 641
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Crypto module - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 610
    nop

    :pswitch_data_8a
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
    .line 742
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;-><init>()V

    .line 743
    .local v1, "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    const/4 v5, 0x0

    .line 744
    .local v5, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    const/4 v3, 0x0

    .line 745
    .local v3, "encrypt":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    const/4 v7, 0x0

    .line 746
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 748
    .local v8, "text":Ljava/lang/String;
    :try_start_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_c} :catch_179
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_196

    move-result v4

    .local v4, "eventType":I
    move-object v6, v5

    .line 751
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .local v6, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_e
    const/4 v0, 0x0

    .line 752
    .local v0, "breakWhile":Z
    :try_start_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 753
    packed-switch v4, :pswitch_data_1ba

    :cond_16
    move-object v5, v6

    .line 814
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_17
    if-eqz v0, :cond_172

    .line 825
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_19
    return-object v1

    .line 755
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_1a
    if-nez v7, :cond_1e

    move-object v5, v6

    .line 756
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 757
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_1e
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 758
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 759
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_2c
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 760
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 761
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_3a
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 762
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 763
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_48
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 764
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 765
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_56
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 766
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 767
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_64
    const-string v9, "EncryptedValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 768
    invoke-virtual {p0, p1}, parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v3

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 773
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .line 774
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 777
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_78
    if-nez v7, :cond_7c

    move-object v5, v6

    .line 778
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 779
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_7c
    const-string v9, "PlainValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    if-eqz v8, :cond_93

    .line 781
    const-string v9, "\\s"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 782
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setPlainValue(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17

    .line 783
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_93
    const-string v9, "ValueMAC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a6

    if-eqz v8, :cond_a6

    .line 784
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setValueMAC(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setStructuredData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 787
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_a6
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_be

    if-eqz v6, :cond_be

    .line 788
    if-eqz v3, :cond_b5

    .line 789
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V

    .line 790
    :cond_b5
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setSecret(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 791
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setStructuredData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 794
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_be
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e8

    if-eqz v6, :cond_e8

    .line 795
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setCounter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 796
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data Counter = "

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

    .line 797
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_e8
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_112

    if-eqz v6, :cond_112

    .line 798
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTime(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data Time = "

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

    .line 800
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_112
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13c

    if-eqz v6, :cond_13c

    .line 801
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeInterval(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 802
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data TimeInterval = "

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

    .line 803
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_13c
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_166

    if-eqz v6, :cond_166

    .line 804
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeDrift(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 805
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data TimeDrift = "

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

    .line 806
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_166
    const-string v9, "Data"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_16b} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16b} :catch_1b3

    move-result v9

    if-eqz v9, :cond_16

    .line 807
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_17

    .line 817
    :cond_172
    :try_start_172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_175
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_175} :catch_179
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_196

    move-result v4

    move-object v6, v5

    .line 818
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_e

    .line 819
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_179
    move-exception v2

    .line 820
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_17a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse data token - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 821
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_196
    move-exception v2

    .line 822
    .local v2, "e":Ljava/io/IOException;
    :goto_197
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse data token - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 821
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_1b3
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_197

    .line 819
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_1b6
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_17a

    .line 753
    nop

    :pswitch_data_1ba
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
    .line 514
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;-><init>()V

    .line 515
    .local v3, "mDeviceInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    const/4 v4, 0x0

    .line 516
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 519
    .local v5, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 522
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 523
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 525
    packed-switch v2, :pswitch_data_1e2

    .line 578
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_1dc

    .line 589
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 530
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 531
    goto :goto_13

    .line 534
    :pswitch_1b
    if-eqz v4, :cond_13

    .line 536
    const-string/jumbo v6, "manufacturer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    if-eqz v5, :cond_a8

    .line 537
    const-string/jumbo v6, "oath."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    const-string/jumbo v6, "iana."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 538
    :cond_3a
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo Manufacturer = "

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
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_57} :catch_8b

    goto :goto_13

    .line 583
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_58
    move-exception v1

    .line 584
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Device info - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 542
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_74
    :try_start_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Non-compliant Manufacturer value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_8a} :catch_58
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8a} :catch_8b

    goto :goto_13

    .line 585
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_8b
    move-exception v1

    .line 586
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Device info - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 543
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_a8
    :try_start_a8
    const-string/jumbo v6, "serialno"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d2

    if-eqz v5, :cond_d2

    .line 544
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    .line 545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo SerialNo = "

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

    .line 547
    :cond_d2
    const-string/jumbo v6, "model"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fc

    if-eqz v5, :cond_fc

    .line 548
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setModel(Ljava/lang/String;)V

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo Model = "

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

    .line 550
    :cond_fc
    const-string v6, "IssueNo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_125

    if-eqz v5, :cond_125

    .line 551
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setIssueNo(Ljava/lang/String;)V

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo IssueNo = "

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

    .line 554
    :cond_125
    const-string v6, "DeviceBinding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14e

    if-eqz v5, :cond_14e

    .line 555
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setDeviceBinding(Ljava/lang/String;)V

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo DeviceBinding = "

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

    .line 558
    :cond_14e
    const-string v6, "StartDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_177

    if-eqz v5, :cond_177

    .line 559
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setStartDate(Ljava/lang/String;)V

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo StartDate = "

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

    .line 562
    :cond_177
    const-string v6, "ExpiryDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a0

    if-eqz v5, :cond_1a0

    .line 563
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setExpiryDate(Ljava/lang/String;)V

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo ExpiryDate = "

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

    .line 566
    :cond_1a0
    const-string v6, "UserId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c9

    if-eqz v5, :cond_1c9

    .line 567
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setUserID(Ljava/lang/String;)V

    .line 568
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo UserId = "

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

    .line 570
    :cond_1c9
    const-string v6, "DeviceInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d9

    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 571
    :cond_1d9
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 581
    :cond_1dc
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_1df} :catch_58
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_1df} :catch_8b

    move-result v2

    .line 582
    goto/16 :goto_b

    .line 525
    :pswitch_data_1e2
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 365
    const/4 v3, 0x0

    .line 367
    .local v3, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4} :catch_74
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_90

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .line 369
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .local v4, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_6
    :try_start_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "tagname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 372
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_b4

    :cond_e
    move-object v3, v4

    .line 403
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_f
    if-eqz v0, :cond_6e

    .line 413
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v5    # "tagname":Ljava/lang/String;
    :goto_11
    return-object v3

    .line 374
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v5    # "tagname":Ljava/lang/String;
    :pswitch_12
    if-nez v5, :cond_16

    move-object v3, v4

    .line 375
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 376
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_16
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 378
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;-><init>()V

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 379
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_24
    const-string v6, "Key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    if-eqz v4, :cond_37

    .line 380
    invoke-direct {p0, p1}, parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 381
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_37
    const-string v6, "DeviceInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    if-eqz v4, :cond_4a

    .line 382
    invoke-direct {p0, p1}, parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 383
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_4a
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    .line 384
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

    .line 389
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 392
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :pswitch_5f
    if-nez v5, :cond_63

    move-object v3, v4

    .line 393
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 394
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_63
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_68} :catch_b0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_68} :catch_ad

    move-result v6

    if-eqz v6, :cond_e

    .line 395
    const/4 v0, 0x1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_f

    .line 406
    :cond_6e
    :try_start_6e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_90

    move-result v2

    move-object v4, v3

    .line 407
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_6

    .line 408
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v5    # "tagname":Ljava/lang/String;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_74
    move-exception v1

    .line 409
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key package - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_11

    .line 410
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_90
    move-exception v1

    .line 411
    .local v1, "e":Ljava/io/IOException;
    :goto_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key package - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_ad
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_91

    .line 408
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_b0
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_75

    .line 372
    nop

    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_12
        :pswitch_5f
        :pswitch_5d
    .end packed-switch
.end method

.method private parseKeyProvClientHello(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1262
    const/4 v5, 0x0

    .line 1263
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1264
    .local v4, "tagname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1266
    .local v3, "parentTag":Ljava/lang/String;
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1269
    .local v2, "eventType":I
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_12e

    .line 1317
    :cond_f
    :goto_f
    if-eqz v0, :cond_128

    .line 1327
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_11
    return-void

    .line 1274
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_12
    if-eqz v4, :cond_f

    .line 1276
    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1277
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_54

    goto :goto_f

    .line 1322
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_26
    move-exception v1

    .line 1323
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Prov Client Hello - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_11

    .line 1278
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_42
    :try_start_42
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1279
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_53} :catch_26
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_53} :catch_54

    goto :goto_f

    .line 1324
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_54
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Prov Client Hello - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_11

    .line 1280
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_70
    :try_start_70
    const-string v6, "SupportedKeyTypes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1281
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, parseSupportedKeyTypes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedKeyTypes(Ljava/util/ArrayList;)V

    goto :goto_f

    .line 1282
    :cond_82
    const-string v6, "SupportedProtocolVariants"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 1283
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, parseProtocolVariant(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setProtocolVariant(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;)V

    goto/16 :goto_f

    .line 1284
    :cond_95
    const-string v6, "SupportedEncryptionAlgorithms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1285
    const-string v3, "SupportedEncryptionAlgorithms"

    goto/16 :goto_f

    .line 1286
    :cond_a1
    const-string v6, "SupportedMacAlgorithms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 1287
    const-string v3, "SupportedMacAlgorithms"

    goto/16 :goto_f

    .line 1288
    :cond_ad
    const-string v6, "SupportedKeyPackages"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1289
    const-string v3, "SupportedKeyPackages"

    goto/16 :goto_f

    .line 1294
    :pswitch_b9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1295
    goto/16 :goto_f

    .line 1298
    :pswitch_bf
    if-eqz v4, :cond_f

    .line 1300
    const-string v6, "KeyID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d2

    if-eqz v5, :cond_d2

    .line 1301
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setKeyID(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1302
    :cond_d2
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_eb

    if-eqz v3, :cond_eb

    const-string v6, "SupportedEncryptionAlgorithms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 1303
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedEncryptionAlgorithms(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1304
    :cond_eb
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_104

    if-eqz v3, :cond_104

    const-string v6, "SupportedMacAlgorithms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 1305
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedMacAlgorithms(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1306
    :cond_104
    const-string v6, "KeyPackageFormat"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    if-eqz v3, :cond_11d

    const-string v6, "SupportedKeyPackages"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 1307
    iget-object v6, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedKeyPackageFormat(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1308
    :cond_11d
    const-string v6, "KeyProvClientHello"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1309
    const/4 v0, 0x1

    goto/16 :goto_f

    .line 1320
    :cond_128
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_12b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_12b} :catch_26
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_12b} :catch_54

    move-result v2

    .line 1321
    goto/16 :goto_7

    .line 1272
    :pswitch_data_12e
    .packed-switch 0x2
        :pswitch_12
        :pswitch_bf
        :pswitch_b9
    .end packed-switch
.end method

.method private parseKeyProvTrigger(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1093
    const/4 v5, 0x0

    .line 1094
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1097
    .local v4, "tagname":Ljava/lang/String;
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1100
    .local v2, "eventType":I
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1101
    const/4 v0, 0x0

    .line 1103
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_ce

    .line 1139
    :cond_e
    :goto_e
    if-eqz v0, :cond_c8

    .line 1149
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_10
    return-void

    .line 1105
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_11
    if-eqz v4, :cond_e

    .line 1107
    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1108
    iget-object v6, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct {p0, p1}, parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_53

    goto :goto_e

    .line 1144
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_25
    move-exception v1

    .line 1145
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Provision Trigger - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_10

    .line 1109
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_41
    :try_start_41
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1110
    iget-object v6, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct {p0, p1}, parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_52} :catch_25
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_e

    .line 1146
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_53
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Provision Trigger - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_10

    .line 1115
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_6f
    :try_start_6f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1116
    goto :goto_e

    .line 1119
    :pswitch_74
    if-eqz v4, :cond_e

    .line 1121
    const-string v6, "KeyID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    if-eqz v5, :cond_86

    .line 1122
    iget-object v6, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setKeyID(Ljava/lang/String;)V

    goto :goto_e

    .line 1123
    :cond_86
    const-string v6, "TokenPlatformInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1124
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;-><init>()V

    .line 1125
    .local v3, "mTokenPlatformInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    const/4 v6, 0x0

    const-string v7, "AlgorithmLocation"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->setAlgoLocation(Ljava/lang/String;)V

    .line 1126
    const/4 v6, 0x0

    const-string v7, "KeyLocation"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->setKeyLocation(Ljava/lang/String;)V

    .line 1127
    iget-object v6, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setTokenPlatformInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;)V

    goto/16 :goto_e

    .line 1128
    .end local v3    # "mTokenPlatformInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    :cond_ae
    const-string v6, "ServerUrl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1129
    iget-object v6, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setServerURL(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1130
    :cond_bd
    const-string v6, "InitializationTrigger"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1131
    const/4 v0, 0x1

    goto/16 :goto_e

    .line 1142
    :cond_c8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_cb} :catch_25
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_cb} :catch_53

    move-result v2

    .line 1143
    goto/16 :goto_6

    .line 1103
    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_11
        :pswitch_74
        :pswitch_6f
    .end packed-switch
.end method

.method private parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 423
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;-><init>()V

    .line 424
    .local v3, "mKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    const/4 v4, 0x0

    .line 425
    .local v4, "tagname":Ljava/lang/String;
    const-string v6, "Id"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setId(Ljava/lang/String;)V

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 427
    const-string v6, "Algorithm"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithm(Ljava/lang/String;)V

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 430
    const/4 v5, 0x0

    .line 432
    .local v5, "text":Ljava/lang/String;
    :try_start_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 435
    .local v2, "eventType":I
    :goto_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_224

    .line 486
    :cond_5a
    :goto_5a
    if-eqz v0, :cond_21d

    .line 492
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 494
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    .line 503
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :cond_78
    :goto_78
    return-object v3

    .line 440
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_79
    if-eqz v4, :cond_5a

    .line 442
    const-string v6, "AlgorithmParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8c

    const-string/jumbo v6, "pskc:AlgorithmParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 443
    :cond_8c
    invoke-direct {p0, p1}, parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V
    :try_end_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_93} :catch_c9

    goto :goto_5a

    .line 497
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_94
    move-exception v1

    .line 498
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key token - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_78

    .line 444
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_b0
    :try_start_b0
    const-string v6, "Data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c1

    const-string/jumbo v6, "pskc:Data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 445
    :cond_c1
    invoke-direct {p0, p1}, parseDataToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;)V
    :try_end_c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b0 .. :try_end_c8} :catch_94
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c8} :catch_c9

    goto :goto_5a

    .line 499
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_c9
    move-exception v1

    .line 500
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key token - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_78

    .line 446
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_e5
    :try_start_e5
    const-string v6, "Policy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f6

    const-string/jumbo v6, "pskc:Policy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 447
    :cond_f6
    invoke-direct {p0, p1}, parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;)V

    goto/16 :goto_5a

    .line 452
    :pswitch_ff
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 453
    goto/16 :goto_5a

    .line 456
    :pswitch_105
    if-eqz v4, :cond_5a

    .line 458
    const-string v6, "Issuer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_118

    const-string/jumbo v6, "pskc:Issuer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_137

    .line 459
    :cond_118
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setIssuer(Ljava/lang/String;)V

    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Issuer = "

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

    .line 461
    :cond_137
    const-string v6, "FriendlyName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_148

    const-string/jumbo v6, "pskc:FriendlyName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_167

    .line 462
    :cond_148
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setFriendlyName(Ljava/lang/String;)V

    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key FriendlyName = "

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

    .line 464
    :cond_167
    const-string v6, "UserID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_178

    const-string/jumbo v6, "pskc:UserID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_197

    .line 465
    :cond_178
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setUserID(Ljava/lang/String;)V

    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: UserID = "

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

    .line 467
    :cond_197
    const-string v6, "KeyProfileID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a8

    const-string/jumbo v6, "pskc:KeyProfileID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c7

    .line 468
    :cond_1a8
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyProfileID(Ljava/lang/String;)V

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key ProfileID = "

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

    .line 470
    :cond_1c7
    const-string v6, "KeyReference"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d8

    const-string/jumbo v6, "pskc:KeyReference"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f7

    .line 471
    :cond_1d8
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyReference(Ljava/lang/String;)V

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key KeyReference = "

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

    .line 473
    :cond_1f7
    const-string v6, "Key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "pskc:Key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 474
    :cond_208
    iget-object v6, v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->mOcraSuite:Ljava/lang/String;

    if-eqz v6, :cond_21a

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    if-nez v6, :cond_21a

    .line 477
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V

    .line 479
    :cond_21a
    const/4 v0, 0x1

    goto/16 :goto_5a

    .line 489
    :cond_21d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_220
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e5 .. :try_end_220} :catch_94
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_220} :catch_c9

    move-result v2

    .line 490
    goto/16 :goto_52

    .line 438
    nop

    :pswitch_data_224
    .packed-switch 0x2
        :pswitch_79
        :pswitch_105
        :pswitch_ff
    .end packed-switch
.end method

.method private parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 302
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;-><init>()V

    .line 304
    .local v3, "macMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    :try_start_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 305
    .local v2, "eventType":I
    const/4 v5, 0x0

    .line 307
    .local v5, "text":Ljava/lang/String;
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "tagname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 311
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_d0

    .line 344
    :cond_12
    :goto_12
    if-eqz v0, :cond_ca

    .line 354
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_14
    return-object v3

    .line 313
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_15
    if-eqz v4, :cond_12

    .line 315
    const-string v6, "MACMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 316
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setShaAlgo(Ljava/lang/String;)V

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: MACMethod Algorithm = "

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
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_43} :catch_95

    goto :goto_12

    .line 349
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_44
    move-exception v1

    .line 350
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Mac method token - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 323
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_60
    :try_start_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 324
    goto :goto_12

    .line 327
    :pswitch_65
    if-eqz v4, :cond_12

    .line 329
    const-string v6, "EncryptionMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 330
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherAlgo(Ljava/lang/String;)V

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: EncryptionMethod Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_93} :catch_44
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_93} :catch_95

    goto/16 :goto_12

    .line 351
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_95
    move-exception v1

    .line 352
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Mac method token - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 333
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_b2
    :try_start_b2
    const-string v6, "CipherValue"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 334
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherData(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 335
    :cond_bf
    const-string v6, "MACKey"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 347
    :cond_ca
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_cd} :catch_44
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_cd} :catch_95

    move-result v2

    .line 348
    goto/16 :goto_a

    .line 311
    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_15
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method private parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 835
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;-><init>()V

    .line 836
    .local v4, "policy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    const/4 v5, 0x0

    .line 837
    .local v5, "tagname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 839
    .local v6, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 842
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 843
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 845
    packed-switch v2, :pswitch_data_1fc

    .line 903
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_1f5

    .line 914
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v4

    .line 850
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 851
    goto :goto_13

    .line 854
    :pswitch_1b
    if-eqz v5, :cond_13

    .line 856
    const-string v7, "StartDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    if-eqz v6, :cond_63

    .line 857
    if-eqz v6, :cond_2c

    .line 858
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setStartDate(Ljava/lang/String;)V

    .line 860
    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy StartDate = "

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
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_46} :catch_8b

    goto :goto_13

    .line 908
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_47
    move-exception v1

    .line 909
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse policy token - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 861
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_63
    :try_start_63
    const-string v7, "ExpiryDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    if-eqz v6, :cond_a8

    .line 862
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setExpiryDate(Ljava/lang/String;)V

    .line 863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy ExpiryDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_8a} :catch_47
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_8a} :catch_8b

    goto :goto_13

    .line 910
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_8b
    move-exception v1

    .line 911
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse policy token - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 864
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_a8
    :try_start_a8
    const-string v7, "NumberOfTransactions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d1

    if-eqz v6, :cond_d1

    .line 865
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setNoOfTransactions(Ljava/lang/String;)V

    .line 866
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy NoOfTransactions = "

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

    .line 868
    :cond_d1
    const-string v7, "KeyUsage"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fe

    if-eqz v6, :cond_fe

    .line 869
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setKeyUsage(Ljava/lang/String;)V

    .line 870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy KeyUsage = "

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

    .line 872
    :cond_fe
    const-string v7, "PINPolicy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ea

    if-eqz v6, :cond_1ea

    .line 873
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;-><init>()V

    .line 874
    .local v3, "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    const/4 v7, 0x0

    const-string v8, "PINKeyId"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinKeyID(Ljava/lang/String;)V

    .line 875
    const/4 v7, 0x0

    const-string v8, "MaxFailedAttempts"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxFailedAttempts(Ljava/lang/String;)V

    .line 877
    const/4 v7, 0x0

    const-string v8, "MinLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMinLength(Ljava/lang/String;)V

    .line 878
    const/4 v7, 0x0

    const-string v8, "MaxLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxLength(Ljava/lang/String;)V

    .line 879
    const/4 v7, 0x0

    const-string v8, "PINUsageMode"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinUsageMode(Ljava/lang/String;)V

    .line 881
    const/4 v7, 0x0

    const-string v8, "PINEncoding"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinEncoding(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setPinPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;)V

    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINKeyId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MaxFailedAttempts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MinLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MaxLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINUsageMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINEncoding = "

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

    .line 895
    .end local v3    # "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    :cond_1ea
    const-string v7, "Policy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 896
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 906
    :cond_1f5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_1f8} :catch_47
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_1f8} :catch_8b

    move-result v2

    .line 907
    goto/16 :goto_b

    .line 845
    nop

    :pswitch_data_1fc
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method private parseProtocolVariant(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1378
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;-><init>()V

    .line 1379
    .local v3, "mProtocolVariant":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    const/4 v5, 0x0

    .line 1380
    .local v5, "tagname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1383
    .local v6, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1386
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 1387
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1389
    packed-switch v2, :pswitch_data_d4

    .line 1431
    :cond_13
    :goto_13
    if-eqz v0, :cond_ce

    .line 1441
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 1391
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    if-eqz v5, :cond_13

    .line 1393
    const-string v7, "TwoPass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1394
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->TwoPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_25} :catch_50

    goto :goto_13

    .line 1436
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_26
    move-exception v1

    .line 1437
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse protocol variant - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1395
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_42
    :try_start_42
    const-string v7, "FourPass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1396
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->FourPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    :try_end_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_4f} :catch_26
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4f} :catch_50

    goto :goto_13

    .line 1438
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_50
    move-exception v1

    .line 1439
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse protocol variant - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1401
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_6c
    :try_start_6c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1402
    goto :goto_13

    .line 1405
    :pswitch_71
    if-eqz v5, :cond_13

    .line 1407
    const-string v7, "SupportedKeyProtectionMethod"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1408
    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedKeyProtectionMethod(Ljava/lang/String;)V

    goto :goto_13

    .line 1409
    :cond_7f
    const-string v7, "X509Certificate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1410
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;-><init>()V

    .line 1411
    .local v4, "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    if-eqz v6, :cond_13

    .line 1412
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->setX509Certificate([B)V

    .line 1413
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V

    goto/16 :goto_13

    .line 1415
    .end local v4    # "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    :cond_9b
    const-string v7, "KeyName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 1416
    if-eqz v6, :cond_b2

    const-string v7, "Pre-shared-key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 1417
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    .line 1419
    :cond_b2
    if-eqz v6, :cond_13

    const-string v7, "Passphrase"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1420
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    goto/16 :goto_13

    .line 1423
    :cond_c3
    const-string v7, "SupportedProtocolVariants"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1424
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 1434
    :cond_ce
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_d1} :catch_26
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_d1} :catch_50

    move-result v2

    .line 1435
    goto/16 :goto_b

    .line 1389
    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_16
        :pswitch_71
        :pswitch_6c
    .end packed-switch
.end method

.method private parseSupportedKeyTypes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v3, "listKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1332
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1336
    .local v5, "text":Ljava/lang/String;
    :try_start_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1339
    .local v2, "eventType":I
    :goto_b
    const/4 v0, 0x0

    .line 1340
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1342
    packed-switch v2, :pswitch_data_70

    .line 1363
    :cond_13
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_4f

    .line 1374
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_15
    return-object v3

    .line 1347
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1348
    goto :goto_13

    .line 1351
    :pswitch_1b
    if-eqz v4, :cond_13

    .line 1353
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1354
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_54

    goto :goto_13

    .line 1368
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_29
    move-exception v1

    .line 1369
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Supported Key types - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1355
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_45
    :try_start_45
    const-string v6, "SupportedKeyTypes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1356
    const/4 v0, 0x1

    goto :goto_13

    .line 1366
    :cond_4f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_52} :catch_29
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_52} :catch_54

    move-result v2

    .line 1367
    goto :goto_b

    .line 1370
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_54
    move-exception v1

    .line 1371
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Supported Key types - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_15

    .line 1342
    :pswitch_data_70
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
    .line 82
    iget-object v0, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-object v0
.end method

.method public getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    return-object v0
.end method

.method public getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    return-object v0
.end method

.method public getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 22
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x0

    .line 98
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 99
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 100
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 102
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 104
    .local v5, "eventType":I
    const-string v16, ""

    .line 105
    .local v16, "text":Ljava/lang/String;
    :goto_20
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_32

    .line 106
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 109
    .local v8, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    const/4 v9, 0x0

    .line 110
    .local v9, "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    const/4 v2, 0x0

    .line 111
    .local v2, "breakWhile":Z
    packed-switch v5, :pswitch_data_63a

    .line 282
    :cond_30
    :goto_30
    if-eqz v2, :cond_634

    .line 293
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 113
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :pswitch_33
    if-eqz v15, :cond_30

    .line 116
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "**Parsing tagname : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 117
    const-string v17, "KeyProvTrigger"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11a

    .line 119
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .line 120
    const-string v17, "KeyProvTrigger"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, xmlName:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setVersion(Ljava/lang/String;)V

    .line 122
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvTrigger Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_ac

    .line 125
    const/4 v2, 0x1

    .line 127
    :cond_ac
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 128
    .local v13, "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 129
    .local v12, "nsend":I
    move v7, v13

    .local v7, "i":I
    :goto_c3
    if-ge v7, v12, :cond_30

    .line 130
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e4

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setPrefixPSKC(Ljava/lang/String;)V

    .line 129
    :cond_e1
    :goto_e1
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 133
    :cond_e4
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e1

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setPrefixDSKPP(Ljava/lang/String;)V
    :try_end_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_fc} :catch_fd
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_fc} :catch_12b

    goto :goto_e1

    .line 288
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v7    # "i":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v11    # "nsUri":Ljava/lang/String;
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :catch_fd
    move-exception v3

    .line 289
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser :: failed to parse the XML - XmlPullParser Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 136
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_11a
    :try_start_11a
    const-string v17, "InitializationTrigger"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_148

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, parseKeyProvTrigger(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11a .. :try_end_129} :catch_fd
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_129} :catch_12b

    goto/16 :goto_30

    .line 290
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :catch_12b
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser :: failed to parse the XML - IOException Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_148
    :try_start_148
    const-string v17, "KeyProvClientHello"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24a

    .line 140
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .line 141
    const-string v17, "KeyProvClientHello"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, xmlName:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setVersion(Ljava/lang/String;)V

    .line 143
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvClientHello Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1a7

    .line 146
    const/4 v2, 0x1

    .line 148
    :cond_1a7
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 149
    .restart local v13    # "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 150
    .restart local v12    # "nsend":I
    move v7, v13

    .restart local v7    # "i":I
    :goto_1be
    if-ge v7, v12, :cond_243

    .line 151
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    .restart local v11    # "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1df

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixPSKC(Ljava/lang/String;)V

    .line 150
    :cond_1dc
    :goto_1dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1be

    .line 154
    :cond_1df
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f8

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixDSKPP(Ljava/lang/String;)V

    goto :goto_1dc

    .line 156
    :cond_1f8
    const-string/jumbo v17, "http://www.w3.org/2000/09/xmldsig#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_211

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixDS(Ljava/lang/String;)V

    goto :goto_1dc

    .line 158
    :cond_211
    const-string/jumbo v17, "http://www.w3.org/2001/04/xmlenc#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22a

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixXENC(Ljava/lang/String;)V

    goto :goto_1dc

    .line 160
    :cond_22a
    const-string/jumbo v17, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1dc

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixPKCS5(Ljava/lang/String;)V

    goto :goto_1dc

    .line 163
    .end local v11    # "nsUri":Ljava/lang/String;
    :cond_243
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, parseKeyProvClientHello(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_30

    .line 164
    .end local v7    # "i":I
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    :cond_24a
    const-string v17, "KeyProvServerFinished"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3db

    .line 166
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .line 167
    const-string v17, "KeyProvServerFinished"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, xmlName:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setVersion(Ljava/lang/String;)V

    .line 169
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2a9

    .line 172
    const/4 v2, 0x1

    .line 174
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Status"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setStatus(Ljava/lang/String;)V

    .line 175
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished Status = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Success"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2f1

    .line 178
    const/4 v2, 0x1

    .line 180
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "SessionID"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setSessionId(Ljava/lang/String;)V

    .line 181
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished SessionID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getSessionId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 183
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 184
    .restart local v13    # "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 185
    .restart local v12    # "nsend":I
    move v7, v13

    .restart local v7    # "i":I
    :goto_33d
    if-ge v7, v12, :cond_30

    .line 186
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 187
    .restart local v11    # "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_35e

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixPSKC(Ljava/lang/String;)V

    .line 185
    :cond_35b
    :goto_35b
    add-int/lit8 v7, v7, 0x1

    goto :goto_33d

    .line 189
    :cond_35e
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_377

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDSKPP(Ljava/lang/String;)V

    goto :goto_35b

    .line 191
    :cond_377
    const-string/jumbo v17, "http://www.w3.org/2000/09/xmldsig#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_390

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDS(Ljava/lang/String;)V

    goto :goto_35b

    .line 193
    :cond_390
    const-string/jumbo v17, "http://www.w3.org/2001/04/xmlenc#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3a9

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixXENC(Ljava/lang/String;)V

    goto :goto_35b

    .line 195
    :cond_3a9
    const-string/jumbo v17, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3c2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixPkcs5(Ljava/lang/String;)V

    goto :goto_35b

    .line 197
    :cond_3c2
    const-string/jumbo v17, "http://www.w3.org/2009/xmlsec-derivedkey#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_35b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDkey(Ljava/lang/String;)V

    goto :goto_35b

    .line 200
    .end local v7    # "i":I
    .end local v11    # "nsUri":Ljava/lang/String;
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    :cond_3db
    const-string v17, "KeyPackage"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_416

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_416

    .line 202
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;-><init>()V

    .line 203
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_413

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setDSKPPKeyPackage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;)V

    goto/16 :goto_30

    .line 207
    :cond_413
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 209
    :cond_416
    const-string v17, "KeyContainer"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4e6

    .line 211
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setVersion(Ljava/lang/String;)V

    .line 213
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser:: KeyContainer Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_46d

    .line 216
    const/4 v2, 0x1

    .line 218
    :cond_46d
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setId(Ljava/lang/String;)V

    .line 219
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser:: KeyContainer Id = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-nez v17, :cond_4c2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "xmlns"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setXmlns(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 223
    :cond_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    if-eqz v17, :cond_4e3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V

    goto/16 :goto_30

    .line 226
    :cond_4e3
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 229
    :cond_4e6
    const-string v17, "KeyPackage"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_525

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSKC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_510

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_525

    .line 232
    :cond_510
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    move-result-object v8

    .line 233
    if-eqz v8, :cond_30

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->addKeys(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    goto/16 :goto_30

    .line 236
    :cond_525
    const-string v17, "EncryptionKey"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_542

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v4

    .line 238
    .local v4, "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setKeyInfoEncryption(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;)V

    goto/16 :goto_30

    .line 239
    .end local v4    # "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    :cond_542
    const-string v17, "MACMethod"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_568

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_565

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setMacMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;)V

    goto/16 :goto_30

    .line 243
    :cond_565
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 244
    :cond_568
    const-string v17, "Signature"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_30

    .line 246
    const-string v17, "Mac"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5aa

    .line 247
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    invoke-direct {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;-><init>()V

    .line 248
    .local v10, "mMACDskpp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    const/16 v17, 0x0

    const-string v18, "MacAlgorithm"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->setAlgorithm(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5a7

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setMACType(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;)V

    goto/16 :goto_30

    .line 252
    :cond_5a7
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 253
    .end local v10    # "mMACDskpp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    :cond_5aa
    const-string v17, "AuthenticationData"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, xmlName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "KeyProvServerFinished"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_30

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V

    goto/16 :goto_30

    .line 260
    :pswitch_5db
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    .line 261
    goto/16 :goto_30

    .line 264
    :pswitch_5e1
    if-eqz v15, :cond_30

    .line 266
    const-string v17, "Mac"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_60b

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_608

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->setMac(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 270
    :cond_608
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 271
    :cond_60b
    const-string/jumbo v17, "serverId"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_631

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->setServerId(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 275
    :cond_631
    const/4 v2, 0x1

    goto/16 :goto_30

    .line 285
    :cond_634
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_637
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_148 .. :try_end_637} :catch_fd
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_637} :catch_12b

    move-result v5

    .line 286
    goto/16 :goto_20

    .line 111
    :pswitch_data_63a
    .packed-switch 0x2
        :pswitch_33
        :pswitch_5e1
        :pswitch_5db
    .end packed-switch
.end method

.method public parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 919
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;-><init>()V

    .line 920
    .local v6, "value":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;-><init>()V

    .line 921
    .local v1, "cipher":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
    const/4 v4, 0x0

    .line 922
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 924
    .local v5, "text":Ljava/lang/String;
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 927
    .local v3, "eventType":I
    :goto_10
    const/4 v0, 0x0

    .line 928
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 930
    packed-switch v3, :pswitch_data_8c

    .line 954
    :cond_18
    :goto_18
    :pswitch_18
    if-eqz v0, :cond_86

    .line 965
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :goto_1a
    return-object v6

    .line 935
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :pswitch_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 936
    goto :goto_18

    .line 939
    :pswitch_20
    if-eqz v4, :cond_18

    .line 941
    const-string v7, "EncryptionMethod"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 942
    const/4 v7, 0x0

    const-string v8, "Algorithm"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setAlgorithm(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_34} :catch_60

    goto :goto_18

    .line 959
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_35
    move-exception v2

    .line 960
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse EncryptedType token - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1a

    .line 943
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_51
    :try_start_51
    const-string v7, "CipherValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 944
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->setCipherValue(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setCipherData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;)V
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5f} :catch_35
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5f} :catch_60

    goto :goto_18

    .line 961
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_60
    move-exception v2

    .line 962
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse EncryptedType token - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1a

    .line 946
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_7c
    :try_start_7c
    const-string v7, "EncryptedValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 947
    const/4 v0, 0x1

    goto :goto_18

    .line 957
    :cond_86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_89} :catch_35
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_89} :catch_60

    move-result v3

    .line 958
    goto :goto_10

    .line 930
    nop

    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_18
        :pswitch_20
        :pswitch_1b
    .end packed-switch
.end method

.method public parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 969
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;-><init>()V

    .line 970
    .local v5, "mKeyInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    const/4 v3, 0x0

    .line 971
    .local v3, "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    const/4 v7, 0x0

    .line 972
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 974
    .local v8, "text":Ljava/lang/String;
    :try_start_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_b} :catch_2e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_bf

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .line 977
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .local v4, "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :goto_d
    const/4 v0, 0x0

    .line 978
    .local v0, "breakWhile":Z
    :try_start_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 979
    packed-switch v2, :pswitch_data_e4

    :cond_15
    move-object v3, v4

    .line 1020
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :goto_16
    if-eqz v0, :cond_b8

    .line 1030
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_18
    return-object v5

    .line 981
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_19
    if-nez v7, :cond_1d

    move-object v3, v4

    .line 982
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_16

    .line 983
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_1d
    const-string v9, "DerivedKey"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 984
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;-><init>()V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_2a} :catch_df
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_dc

    .line 985
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :try_start_2a
    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setDerivedKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;)V
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_bf

    goto :goto_16

    .line 1025
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_2e
    move-exception v1

    .line 1026
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Encryption key token - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_18

    .line 986
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_4a
    if-eqz v4, :cond_15

    :try_start_4c
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 987
    invoke-virtual {p0, p1}, parseKeyDerivationMethod(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->setKeyDerivationMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;)V

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_16

    .line 992
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v3, v4

    .line 993
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_16

    .line 996
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_63
    if-nez v7, :cond_67

    move-object v3, v4

    .line 997
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_16

    .line 999
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_67
    const-string v9, "X509Certificate"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 1000
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;-><init>()V

    .line 1001
    .local v6, "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    if-eqz v8, :cond_81

    .line 1002
    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->setX509Certificate([B)V

    .line 1003
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V

    :cond_81
    move-object v3, v4

    .line 1005
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_16

    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .end local v6    # "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_83
    const-string v9, "KeyName"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 1006
    if-eqz v8, :cond_9a

    const-string v9, "Pre-shared-key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 1007
    sget-object v9, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v5, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    .line 1009
    :cond_9a
    if-eqz v8, :cond_15

    const-string v9, "Passphrase"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1010
    sget-object v9, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v5, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_16

    .line 1012
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_ac
    const-string v9, "EncryptionKey"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_b1} :catch_df
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_b1} :catch_dc

    move-result v9

    if-eqz v9, :cond_15

    .line 1013
    const/4 v0, 0x1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_16

    .line 1023
    :cond_b8
    :try_start_b8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_bb} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bf

    move-result v2

    move-object v4, v3

    .line 1024
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_d

    .line 1027
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_bf
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/io/IOException;
    :goto_c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Encryption key token - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1027
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_dc
    move-exception v1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_c0

    .line 1025
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_df
    move-exception v1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_2f

    .line 979
    nop

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_19
        :pswitch_63
        :pswitch_5d
    .end packed-switch
.end method

.method public parseKeyDerivationMethod(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1034
    const/4 v3, 0x0

    .line 1035
    .local v3, "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    const/4 v5, 0x0

    .line 1036
    .local v5, "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    const/4 v7, 0x0

    .line 1037
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1039
    .local v8, "text":Ljava/lang/String;
    :try_start_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_7} :catch_a2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_bf

    move-result v2

    .local v2, "eventType":I
    move-object v6, v5

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .local v6, "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v4, v3

    .line 1042
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .local v4, "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :goto_a
    const/4 v0, 0x0

    .line 1043
    .local v0, "breakWhile":Z
    :try_start_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1044
    packed-switch v2, :pswitch_data_f4

    :cond_12
    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1079
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :goto_14
    if-eqz v0, :cond_9a

    .line 1089
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_16
    return-object v3

    .line 1046
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_17
    if-nez v7, :cond_1c

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1047
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1048
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_1c
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 1049
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;-><init>()V
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_29} :catch_e6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_dc

    .line 1050
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    const/4 v9, 0x0

    :try_start_2a
    const-string v10, "Algorithm"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->setAlgorithm(Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_33} :catch_ea
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_33} :catch_e0

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_14

    .line 1051
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_35
    :try_start_35
    const-string v9, "PBKDF2-params"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1052
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;-><init>()V
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_42} :catch_e6
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_dc

    .line 1053
    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    if-eqz v4, :cond_f0

    .line 1054
    :try_start_44
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->setPBKDFParams(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;)V
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_47} :catch_ed
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_e3

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1059
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_49
    :try_start_49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1060
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1063
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_50
    if-nez v7, :cond_55

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1064
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1065
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_55
    if-eqz v6, :cond_65

    const-string v9, "Salt"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 1066
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setmSalt(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1067
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_65
    if-eqz v6, :cond_79

    const-string v9, "IterationCount"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 1068
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setIterationCount(I)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1069
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_79
    if-eqz v6, :cond_8d

    const-string v9, "KeyLength"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 1070
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setKeyLength(I)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_14

    .line 1071
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_8d
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_92} :catch_e6
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_92} :catch_dc

    move-result v9

    if-eqz v9, :cond_12

    .line 1072
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_14

    .line 1082
    :cond_9a
    :try_start_9a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_9d} :catch_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_bf

    move-result v2

    move-object v6, v5

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v4, v3

    .line 1083
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_a

    .line 1084
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_a2
    move-exception v1

    .line 1085
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_a3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Key Derivation Method - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1086
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_bf
    move-exception v1

    .line 1087
    .local v1, "e":Ljava/io/IOException;
    :goto_c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Key Derivation Method - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1086
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_dc
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_c0

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_e0
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_c0

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :catch_e3
    move-exception v1

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_c0

    .line 1084
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_e6
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_a3

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_ea
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_a3

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :catch_ed
    move-exception v1

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_a3

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :cond_f0
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_14

    .line 1044
    nop

    :pswitch_data_f4
    .packed-switch 0x2
        :pswitch_17
        :pswitch_50
        :pswitch_49
    .end packed-switch
.end method

.method public setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V
    .registers 2
    .param p1, "mKeyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .prologue
    .line 86
    iput-object p1, p0, mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 87
    return-void
.end method

.method public setKeyProvClientHello(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .registers 2
    .param p1, "mKeyProvClientHello"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 61
    iput-object p1, p0, mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .line 62
    return-void
.end method

.method public setKeyProvServerFinished(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .registers 2
    .param p1, "mKeyProvServerFinished"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 78
    iput-object p1, p0, mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .line 79
    return-void
.end method

.method public setKeyProvTrigger(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .registers 2
    .param p1, "mKeyProvTrigger"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 69
    iput-object p1, p0, mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .line 70
    return-void
.end method
