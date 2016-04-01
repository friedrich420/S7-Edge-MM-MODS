.class final Lcom/android/server/firewall/PortFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "PortFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/PortFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 60
    const/4 v2, -0x1

    .line 61
    .local v2, "lowerBound":I
    const/4 v4, -0x1

    .line 63
    .local v4, "upperBound":I
    const-string/jumbo v7, "equals"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "equalsValue":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 67
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_2e

    move-result v6

    .line 72
    .local v6, "value":I
    move v2, v6

    .line 73
    move v4, v6

    .line 76
    .end local v6    # "value":I
    :cond_12
    const-string/jumbo v7, "min"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "lowerBoundString":Ljava/lang/String;
    const-string/jumbo v7, "max"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "upperBoundString":Ljava/lang/String;
    if-nez v3, :cond_24

    if-eqz v5, :cond_54

    .line 79
    :cond_24
    if-eqz v0, :cond_48

    .line 80
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Port filter cannot use both equals and range filtering"

    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 68
    .end local v3    # "lowerBoundString":Ljava/lang/String;
    .end local v5    # "upperBoundString":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid port value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 85
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "lowerBoundString":Ljava/lang/String;
    .restart local v5    # "upperBoundString":Ljava/lang/String;
    :cond_48
    if-eqz v3, :cond_4e

    .line 87
    :try_start_4a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_5a

    move-result v2

    .line 95
    :cond_4e
    if-eqz v5, :cond_54

    .line 97
    :try_start_50
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_53} :catch_74

    move-result v4

    .line 107
    :cond_54
    new-instance v7, Lcom/android/server/firewall/PortFilter;

    invoke-direct {v7, v2, v4, v10}, Lcom/android/server/firewall/PortFilter;-><init>(IILcom/android/server/firewall/PortFilter$1;)V

    return-object v7

    .line 88
    :catch_5a
    move-exception v1

    .line 89
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid minimum port value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 98
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_74
    move-exception v1

    .line 99
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid maximum port value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7
.end method
