.class Lcom/android/settings/KiesLocationReceiver$KiesOperation;
.super Landroid/os/AsyncTask;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KiesOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:I

.field private mContext:Landroid/content/Context;

.field private mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

.field private mErrorCode:I

.field private mOperation:I

.field private mPath:Ljava/lang/String;

.field private mResult:I

.field private mSaveKey:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mSessionTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/KiesLocationReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/KiesLocationReceiver;Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "operation"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->this$0:Lcom/android/settings/KiesLocationReceiver;

    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 124
    iput v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 125
    iput v1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    .line 126
    iput v1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    .line 131
    iput v1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    .line 144
    iput-object p2, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    .line 145
    iput p3, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    .line 146
    const-string v0, "SESSION_KEY"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    .line 147
    const-string v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    .line 148
    const-string v0, "SECURITY_LEVEL"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    .line 149
    const-string v0, "SAVE_PATH"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    .line 150
    const-string v0, "SOURCE"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    .line 151
    const-string v0, "ACTION"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    .line 152
    new-instance v0, Lcom/android/settings/KiesLocationReceiver$Encryption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/android/settings/KiesLocationReceiver;Lcom/android/settings/KiesLocationReceiver$1;)V

    iput-object v0, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

    .line 153
    return-void
.end method

.method private generateXml(Ljava/io/File;)I
    .locals 11
    .param p1, "xml"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 232
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 234
    .local v4, "res":Landroid/content/ContentResolver;
    const-string v8, "vzw_lbs"

    invoke-static {v4, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 235
    .local v6, "vzwEnabled":Z
    const-string v8, "KiesLocationReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vzwEnabled == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v8, "location_mode"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, "currentLocationMode":I
    const-string v8, "KiesLocationReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentLocationMode == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v8, "UTF-8"

    invoke-interface {v5, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 240
    const-string v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const/4 v8, 0x0

    const-string v9, "VZWLocationSvc"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const/4 v8, 0x0

    const-string v9, "vzw_location_service"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    if-eqz v6, :cond_2

    const-string v8, "on"

    :goto_0
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const/4 v8, 0x0

    const-string v9, "vzw_location_service"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    const/4 v8, 0x0

    const-string v9, "location_mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const/4 v8, 0x0

    const-string v9, "location_mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const/4 v8, 0x0

    const-string v9, "VZWLocationSvc"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 254
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    long-to-int v7, v8

    .line 269
    if-eqz v3, :cond_0

    .line 270
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v2, v3

    .line 277
    .end local v0    # "currentLocationMode":I
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "vzwEnabled":Z
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return v7

    .line 244
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "currentLocationMode":I
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "vzwEnabled":Z
    :cond_2
    :try_start_3
    const-string v8, "off"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v0    # "currentLocationMode":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "vzwEnabled":Z
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 259
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    if-eqz v2, :cond_1

    .line 270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 272
    :catch_2
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 263
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    if-eqz v2, :cond_1

    .line 270
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 272
    :catch_4
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 266
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 269
    if-eqz v2, :cond_1

    .line 270
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 272
    :catch_6
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 268
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 269
    :goto_6
    if-eqz v2, :cond_3

    .line 270
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 274
    :cond_3
    :goto_7
    throw v7

    .line 272
    :catch_7
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 268
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 264
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 261
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 258
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private readXml(Ljava/io/File;)I
    .locals 14
    .param p1, "xml"    # Ljava/io/File;

    .prologue
    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "input":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 289
    .local v9, "totalCount":I
    const/4 v5, 0x0

    .line 290
    .local v5, "item":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 292
    .local v7, "res":Landroid/content/ContentResolver;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 294
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 295
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "UTF-8"

    invoke-interface {v6, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 296
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 297
    .local v1, "eventType":I
    :goto_0
    const/4 v11, 0x1

    if-eq v1, v11, :cond_8

    .line 298
    packed-switch v1, :pswitch_data_0

    .line 340
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 305
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tag == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 349
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 350
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    if-eqz v3, :cond_1

    .line 364
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    const/4 v11, 0x0

    :goto_4
    return v11

    .line 308
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const/4 v5, 0x0

    .line 309
    goto :goto_1

    .line 311
    :pswitch_3
    if-eqz v5, :cond_0

    .line 314
    :try_start_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "value":Ljava/lang/String;
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tag value == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, "result":Z
    const-string v11, "on"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 318
    const/4 v8, 0x1

    .line 322
    :cond_2
    :goto_5
    const-string v11, "vzw_location_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 323
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting vzw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v11, "vzw_lbs"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 335
    :cond_3
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 336
    goto/16 :goto_1

    .line 319
    :cond_4
    const-string v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 320
    const/4 v8, 0x0

    goto :goto_5

    .line 325
    :cond_5
    const-string v11, "location_mode"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 326
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting location mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v11, "location_mode"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 352
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "result":Z
    .end local v10    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 353
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 354
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 363
    if-eqz v3, :cond_1

    .line 364
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 366
    :catch_2
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "result":Z
    .restart local v10    # "value":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v11, "standalone_gps_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 329
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting gps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v11, "gps"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 355
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "result":Z
    .end local v10    # "value":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v3, v4

    .line 356
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 357
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 363
    if-eqz v3, :cond_1

    .line 364
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 366
    :catch_4
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "result":Z
    .restart local v10    # "value":Ljava/lang/String;
    :cond_7
    :try_start_a
    const-string v11, "google_location_service"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 332
    const-string v11, "KiesLocationReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting google: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v11, "network"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 358
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "result":Z
    .end local v10    # "value":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v3, v4

    .line 359
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_9
    :try_start_b
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 360
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 363
    if-eqz v3, :cond_1

    .line 364
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 366
    :catch_6
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    if-nez v9, :cond_a

    .line 344
    :try_start_d
    const-string v11, "KiesLocationReceiver"

    const-string v12, "failed to restore - no items"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 346
    const/4 v11, 0x0

    .line 363
    if-eqz v4, :cond_9

    .line 364
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_9
    :goto_a
    move-object v3, v4

    .line 368
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 366
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    .line 367
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v12

    long-to-int v11, v12

    .line 363
    if-eqz v4, :cond_b

    .line 364
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_b
    :goto_b
    move-object v3, v4

    .line 368
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 366
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    .line 367
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 366
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 363
    :goto_c
    if-eqz v3, :cond_c

    .line 364
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 368
    :cond_c
    :goto_d
    throw v11

    .line 366
    :catch_a
    move-exception v0

    .line 367
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_c

    .line 358
    :catch_b
    move-exception v0

    goto :goto_9

    .line 355
    :catch_c
    move-exception v0

    goto/16 :goto_8

    .line 352
    :catch_d
    move-exception v0

    goto/16 :goto_7

    .line 349
    :catch_e
    move-exception v0

    goto/16 :goto_2

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 157
    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-nez v5, :cond_1

    .line 158
    :cond_0
    const-string v5, "KiesLocationReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mOperation=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 160
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 219
    :goto_0
    return-object v5

    .line 163
    :cond_1
    iget v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v5, v6, :cond_5

    .line 164
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "temp.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "temp_file":Ljava/io/File;
    iget v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-nez v5, :cond_4

    .line 167
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    # invokes: Lcom/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/settings/KiesLocationReceiver$Encryption;->access$100(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v4}, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->generateXml(Ljava/io/File;)I

    move-result v3

    .line 169
    .local v3, "fileLength":I
    if-lez v3, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "location_service.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    # invokes: Lcom/android/settings/KiesLocationReceiver$Encryption;->encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    invoke-static {v5, v4, v6, v7}, Lcom/android/settings/KiesLocationReceiver$Encryption;->access$200(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    .line 171
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 172
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 189
    .end local v3    # "fileLength":I
    :cond_3
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v5

    .line 182
    :cond_4
    iget v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-ne v5, v7, :cond_3

    .line 183
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "location_service.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "encryptedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    const-string v5, "KiesLocationReceiver"

    const-string v6, "operation cancelled, delete the encrypted file"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 193
    .end local v2    # "encryptedFile":Ljava/io/File;
    .end local v4    # "temp_file":Ljava/io/File;
    :cond_5
    iget v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v5, v7, :cond_8

    .line 194
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "temp.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v4    # "temp_file":Ljava/io/File;
    :try_start_3
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "location_service.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "encrypt":Ljava/io/File;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 198
    :cond_6
    const-string v5, "KiesLocationReceiver"

    const-string v6, "Encrypted file does not exist"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 200
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 201
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 204
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    # invokes: Lcom/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/settings/KiesLocationReceiver$Encryption;->access$100(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/android/settings/KiesLocationReceiver$Encryption;

    iget v6, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    # invokes: Lcom/android/settings/KiesLocationReceiver$Encryption;->decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    invoke-static {v5, v1, v4, v6}, Lcom/android/settings/KiesLocationReceiver$Encryption;->access$300(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    .line 206
    invoke-direct {p0, v4}, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->readXml(Ljava/io/File;)I

    move-result v3

    .line 207
    .restart local v3    # "fileLength":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 208
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 210
    .end local v1    # "encrypt":Ljava/io/File;
    .end local v3    # "fileLength":I
    :catch_2
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v5

    .line 219
    .end local v4    # "temp_file":Ljava/io/File;
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "fileLength"    # Ljava/lang/Integer;

    .prologue
    .line 375
    iget v1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_BACKUP_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "response":Landroid/content/Intent;
    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    :goto_0
    const-string v1, "RESULT"

    iget v2, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v1, "ERR_CODE"

    iget v2, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 388
    return-void

    .line 379
    .end local v0    # "response":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_RESTORE_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "response":Landroid/content/Intent;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/KiesLocationReceiver$KiesOperation;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
