.class Lcom/android/server/im/FeatureInfoParser;
.super Ljava/lang/Object;
.source "FeatureInfoParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/im/FeatureInfoParser$FeatureInfoAttribute;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mXmlParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/im/InjectionManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -FeatureInfoParser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/XmlResourceParser;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "xmlParser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "firstboot"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, mXmlParser:Landroid/content/res/XmlResourceParser;

    .line 56
    iput-boolean p4, p0, isFirstBoot:Z

    .line 57
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private postMessageToHandler(Lcom/android/server/im/InjectionFeatureInfo;)V
    .registers 8
    .param p1, "featureinfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    .line 202
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 204
    .local v1, "msgObj":Landroid/os/Message;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending parser data ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "from thread id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "FEATURE_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 210
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method


# virtual methods
.method public parseFeatureInfoFile()V
    .registers 25

    .prologue
    .line 64
    const/4 v10, 0x0

    .line 66
    .local v10, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "readServiceList() thread id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 68
    .local v18, "startTime":J
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v15, "parentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 71
    .local v12, "isFeatureInfoStartTagAvailable":Z
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_3d} :catch_d1
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3d} :catch_39e

    move-result v7

    .local v7, "eventType":I
    move-object v11, v10

    .line 72
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .local v11, "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_3f
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_36d

    .line 73
    if-nez v7, :cond_60

    .line 74
    const/4 v12, 0x0

    .line 76
    :try_start_48
    sget-object v17, TAG:Ljava/lang/String;

    const-string v20, "XmlPullParser.START_DOCUMENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_53} :catch_14f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_177

    move-object v10, v11

    .line 173
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_54
    :try_start_54
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_5d} :catch_d1
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_39e

    move-result v7

    move-object v11, v10

    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_3f

    .line 77
    :cond_60
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_29e

    .line 79
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "featureinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8c

    .line 81
    const/4 v12, 0x1

    .line 83
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v20, "featureinfo tag available"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_54

    .line 84
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "feature"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_152

    .line 86
    if-eqz v12, :cond_143

    .line 87
    new-instance v10, Lcom/android/server/im/InjectionFeatureInfo;

    invoke-direct {v10}, Lcom/android/server/im/InjectionFeatureInfo;-><init>()V
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_aa} :catch_14f
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_aa} :catch_177

    .line 93
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :try_start_aa
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "XmlPullParser.START_TAG "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_d0} :catch_d1
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_d0} :catch_39e

    goto :goto_54

    .line 177
    .end local v7    # "eventType":I
    :catch_d1
    move-exception v6

    .line 178
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_d2
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 182
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_d5
    move-object/from16 v0, p0

    iget-boolean v0, v0, isFirstBoot:Z

    move/from16 v17, v0

    if-nez v17, :cond_13c

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 187
    .local v13, "msgObj":Landroid/os/Message;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "kill parent  list = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Thread id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v17, "FEATURE_INFO"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 192
    invoke-virtual {v13, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v13    # "msgObj":Landroid/os/Message;
    :cond_13c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v8, v20, v18

    .line 198
    .local v8, "endTime":J
    return-void

    .line 89
    .end local v8    # "endTime":J
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v7    # "eventType":I
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_143
    :try_start_143
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Invalid FeatureInfo Tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 177
    :catch_14f
    move-exception v6

    move-object v10, v11

    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto :goto_d2

    .line 94
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "source"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1cd

    .line 96
    if-nez v11, :cond_17e

    .line 97
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Invalid Feature Tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_177
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_143 .. :try_end_177} :catch_14f
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_177} :catch_177

    .line 179
    :catch_177
    move-exception v6

    move-object v10, v11

    .line 180
    .end local v7    # "eventType":I
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .local v6, "e":Ljava/io/IOException;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :goto_179
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d5

    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v7    # "eventType":I
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_17e
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v21, "class"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "clazz":Ljava/lang/String;
    if-eqz v16, :cond_1c3

    if-eqz v5, :cond_1c3

    .line 104
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1bb

    .line 105
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_1bb
    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v5}, Lcom/android/server/im/InjectionFeatureInfo;->setSourceDetails(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    .line 112
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 108
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_1c3
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v17, "Invalid source information"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v6

    .line 112
    .end local v5    # "clazz":Ljava/lang/String;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v16    # "pkgName":Ljava/lang/String;
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "target"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_241

    .line 114
    if-nez v11, :cond_1f2

    .line 115
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Invalid Feature Tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 117
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 119
    .restart local v16    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v21, "class"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .restart local v5    # "clazz":Ljava/lang/String;
    if-eqz v16, :cond_237

    if-eqz v5, :cond_237

    .line 122
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22f

    .line 123
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    :cond_22f
    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v5}, Lcom/android/server/im/InjectionFeatureInfo;->setTargetDetails(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    .line 130
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 126
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_237
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v17, "Invalid target information"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v6

    .line 130
    .end local v5    # "clazz":Ljava/lang/String;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v16    # "pkgName":Ljava/lang/String;
    :cond_241
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v20, "category"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36a

    .line 132
    if-nez v11, :cond_265

    .line 133
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Invalid Feature Tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 138
    .local v14, "name":Ljava/lang/String;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "category name ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v11, v14}, Lcom/android/server/im/InjectionFeatureInfo;->setCategory(Ljava/lang/String;)V

    move-object v10, v11

    .line 140
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 141
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v14    # "name":Ljava/lang/String;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_29e
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v7, v0, :cond_2a7

    move-object v10, v11

    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 142
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_2a7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v7, v0, :cond_36a

    .line 144
    sget-object v17, TAG:Ljava/lang/String;

    const-string v20, "XmlPullParser.END_TAG"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "feature"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_348

    .line 147
    if-eqz v11, :cond_31c

    invoke-virtual {v11}, Lcom/android/server/im/InjectionFeatureInfo;->isComplete()Z

    move-result v17

    if-eqz v17, :cond_31c

    .line 149
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Adding feature info to the list "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-boolean v0, v0, isFirstBoot:Z

    move/from16 v17, v0

    if-nez v17, :cond_314

    iget-object v0, v11, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_314

    .line 155
    iget-object v0, v11, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_314
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, postMessageToHandler(Lcom/android/server/im/InjectionFeatureInfo;)V

    move-object v10, v11

    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 160
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_31c
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Feature information is incomplete for "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v11, :cond_343

    const-string v17, "NULL"

    :goto_331
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v6

    .line 160
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_343
    invoke-virtual {v11}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_331

    .line 165
    :cond_348
    move-object/from16 v0, p0

    iget-object v0, v0, mXmlParser:Landroid/content/res/XmlResourceParser;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "featureinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36a

    .line 168
    sget-object v17, TAG:Ljava/lang/String;

    const-string v20, " feature info end tag available"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36a
    move-object v10, v11

    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_54

    .line 176
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_36d
    sget-object v20, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "featureinfo ="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v11, :cond_39b

    invoke-virtual {v11}, Lcom/android/server/im/InjectionFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_385
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 181
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    goto/16 :goto_d5

    .line 176
    .end local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :cond_39b
    const-string v17, " its null"
    :try_end_39d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17e .. :try_end_39d} :catch_14f
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_39d} :catch_177

    goto :goto_385

    .line 179
    .end local v7    # "eventType":I
    .end local v11    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    .restart local v10    # "featureinfo":Lcom/android/server/im/InjectionFeatureInfo;
    :catch_39e
    move-exception v6

    goto/16 :goto_179
.end method

.method public run()V
    .registers 1

    .prologue
    .line 219
    invoke-virtual {p0}, parseFeatureInfoFile()V

    .line 220
    return-void
.end method
