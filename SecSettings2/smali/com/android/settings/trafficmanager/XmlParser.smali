.class public Lcom/android/settings/trafficmanager/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# instance fields
.field private final KEY_WORD:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private inFile:Ljava/io/InputStream;

.field private mNormalFeature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWord_contain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "TrafficManager/XmlParser"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/XmlParser;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "SMSKeyWord"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/XmlParser;->KEY_WORD:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/XmlParser;->mNormalFeature:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v2, "TrafficManager/XmlParser"

    iput-object v2, p0, Lcom/android/settings/trafficmanager/XmlParser;->TAG:Ljava/lang/String;

    .line 19
    const-string v2, "SMSKeyWord"

    iput-object v2, p0, Lcom/android/settings/trafficmanager/XmlParser;->KEY_WORD:Ljava/lang/String;

    .line 20
    iput-object v3, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    .line 21
    iput-object v3, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/trafficmanager/XmlParser;->mNormalFeature:Ljava/util/HashMap;

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "mFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public ParserFile()V
    .locals 9

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x0

    .line 39
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    .line 40
    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 41
    .local v1, "TagValue":Ljava/lang/String;
    const/4 v3, -0x1

    .line 43
    .local v3, "eventType":I
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 46
    :cond_0
    if-nez v5, :cond_2

    .line 113
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 115
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 116
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 50
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 52
    :goto_1
    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    .line 53
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 54
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 101
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    goto :goto_1

    .line 56
    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 57
    :try_start_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    :cond_5
    const-string v6, "TrafficManager/XmlParserLPF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TagName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TagValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 75
    const-string v6, "SMSKeyWord"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 76
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 77
    iput-object v1, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    .line 78
    const-string v6, "TrafficManager/XmlParserLPF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWord_contain: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_6
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mWord_contain:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    const-string v6, "TrafficManager/XmlParserLPF111"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TagName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TagValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mNormalFeature:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-eqz v6, :cond_7

    .line 85
    :try_start_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    goto/16 :goto_1

    .line 86
    :catch_1
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 115
    :try_start_8
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 116
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 117
    :catch_3
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_9
    const-string v6, "TrafficManager/XmlParserLPF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->mNormalFeature:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 113
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    if-eqz v7, :cond_8

    .line 115
    :try_start_a
    iget-object v7, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 116
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 120
    :cond_8
    :goto_3
    throw v6

    .line 102
    :catch_4
    move-exception v2

    .line 104
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 115
    :try_start_c
    iget-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 116
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/trafficmanager/XmlParser;->inFile:Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 117
    :catch_5
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public getXmlValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/trafficmanager/XmlParser;->mNormalFeature:Ljava/util/HashMap;

    return-object v0
.end method
