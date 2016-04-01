.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private mLoaded:Z

.field private mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

.field private mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/display-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mAtomicFile:Landroid/util/AtomicFile;

    .line 81
    return-void
.end method

.method private clearState()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 229
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 206
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 210
    .end local v1    # "i":I
    :goto_1b
    return v1

    .line 205
    .restart local v1    # "i":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 210
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method private load()V
    .registers 6

    .prologue
    .line 232
    invoke-direct {p0}, clearState()V

    .line 236
    :try_start_3
    iget-object v3, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_22

    move-result-object v1

    .line 243
    .local v1, "is":Ljava/io/InputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 244
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v2}, loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_33
    .catchall {:try_start_9 .. :try_end_1e} :catchall_42

    .line 253
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 255
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_21
    return-void

    .line 237
    :catch_22
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/io/FileNotFoundException;
    goto :goto_21

    .line 246
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_24
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/io/IOException;
    :try_start_25
    const-string v3, "DisplayManager"

    const-string v4, "Failed to load display manager persistent store data."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    invoke-direct {p0}, clearState()V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_42

    .line 253
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .line 249
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_33
    move-exception v0

    .line 250
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_34
    const-string v3, "DisplayManager"

    const-string v4, "Failed to load display manager persistent store data."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    invoke-direct {p0}, clearState()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_42

    .line 253
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_42
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 282
    const-string/jumbo v1, "display-manager-state"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 284
    .local v0, "outerDepth":I
    :cond_a
    :goto_a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 286
    invoke-direct {p0, p1}, loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 288
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-dlna-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 289
    const-string v1, "DisplayManager"

    const-string/jumbo v2, "loadFromXml call loadRememberedDLNADeviceFromXml"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, p1}, loadRememberedDLNADeviceFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 293
    :cond_39
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, mLoaded:Z

    if-nez v0, :cond_a

    .line 215
    invoke-direct {p0}, load()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, mLoaded:Z

    .line 218
    :cond_a
    return-void
.end method

.method private loadRememberedDLNADeviceFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 329
    const-string/jumbo v0, "deviceName"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "deviceName":Ljava/lang/String;
    const-string/jumbo v0, "p2pmac"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "p2pMacAddress":Ljava/lang/String;
    const-string/jumbo v0, "macfromarp"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "macAddressFromARP":Ljava/lang/String;
    const-string/jumbo v0, "nettype"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "netType":Ljava/lang/String;
    const-string/jumbo v0, "uid"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "uid":Ljava/lang/String;
    const-string/jumbo v0, "dlnatype"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "dlnaType":Ljava/lang/String;
    const-string v0, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadRememberedDLNADeviceFromXml deviceName:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", p2pMacAddress:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", macAddressFromARP:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", netType:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", uid:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", type:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz v6, :cond_7a

    if-nez v1, :cond_82

    .line 338
    :cond_7a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Missing uid or deviceName attribute on dlna-device."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_82
    new-instance v0, Landroid/hardware/display/DLNADevice;

    const-string v2, ""

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DLNADevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 344
    return-void
.end method

.method private loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 298
    .local v8, "outerDepth":I
    :cond_6
    :goto_6
    invoke-static {p1, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "wifi-display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    const-string/jumbo v0, "deviceAddress"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "deviceAddress":Ljava/lang/String;
    const-string/jumbo v0, "deviceName"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "deviceName":Ljava/lang/String;
    const-string/jumbo v0, "deviceAlias"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "deviceAlias":Ljava/lang/String;
    const-string/jumbo v0, "deviceType"

    invoke-interface {p1, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "deviceType":Ljava/lang/String;
    if-eqz v1, :cond_39

    if-nez v2, :cond_41

    .line 305
    :cond_39
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_41
    invoke-direct {p0, v1}, findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4f

    .line 309
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Found duplicate wifi display device address."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_4f
    iget-object v9, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 324
    .end local v1    # "deviceAddress":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "deviceAlias":Ljava/lang/String;
    .end local v7    # "deviceType":Ljava/lang/String;
    :cond_5c
    return-void
.end method

.method private save()V
    .registers 7

    .prologue
    .line 260
    :try_start_0
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2f

    move-result-object v1

    .line 261
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 263
    .local v3, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 264
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, v2}, saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 266
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_38

    .line 267
    const/4 v3, 0x1

    .line 269
    if-eqz v3, :cond_29

    .line 270
    :try_start_23
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 278
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_28
    return-void

    .line 272
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_29
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_28

    .line 275
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_2f
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "DisplayManager"

    const-string v5, "Failed to save display manager persistent store data."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 269
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_38
    move-exception v4

    if-eqz v3, :cond_41

    .line 270
    :try_start_3b
    iget-object v5, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 272
    :goto_40
    throw v4

    :cond_41
    iget-object v5, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_2f

    goto :goto_40
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 347
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 348
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 349
    const-string/jumbo v2, "display-manager-state"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    .line 352
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v2, "wifi-display"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string/jumbo v2, "deviceAddress"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const-string/jumbo v2, "deviceName"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 356
    const-string/jumbo v2, "deviceAlias"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    :cond_57
    const-string/jumbo v2, "deviceType"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string/jumbo v2, "wifi-display"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_21

    .line 363
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_68
    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    iget-object v2, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v2, :cond_139

    .line 366
    const-string/jumbo v2, "remembered-dlna-device"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string/jumbo v2, "deviceName"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    const-string/jumbo v2, "p2pmac"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    const-string/jumbo v2, "macfromarp"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getMacAddressFromARP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string/jumbo v2, "nettype"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getNetType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    const-string/jumbo v2, "uid"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    const-string/jumbo v2, "dlnatype"

    iget-object v3, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v3}, Landroid/hardware/display/DLNADevice;->getDLNAType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string/jumbo v2, "remembered-dlna-device"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    const-string v2, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveToXml deviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", p2pMacAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", macAddressFromARP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getMacAddressFromARP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", netType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getNetType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dlnatype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v4}, Landroid/hardware/display/DLNADevice;->getDLNAType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_139
    const-string/jumbo v2, "display-manager-state"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 378
    return-void
.end method

.method private setDirty()V
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    .line 222
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 11
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 113
    if-eqz p1, :cond_44

    .line 114
    invoke-direct {p0}, loadIfNeeded()V

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "index":I
    if-ltz v8, :cond_1c

    .line 119
    iget-object v0, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    .line 121
    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 124
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 132
    .end local v3    # "alias":Ljava/lang/String;
    .end local v8    # "index":I
    :goto_43
    return-object v0

    :cond_44
    move-object v0, p1

    goto :goto_43
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 8
    .param p1, "displays"    # [Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v5, 0x0

    .line 136
    move-object v3, p1

    .line 137
    .local v3, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz v3, :cond_1e

    .line 138
    array-length v0, p1

    .line 139
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_1e

    .line 140
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 141
    .local v2, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v4, p1, v1

    if-eq v2, v4, :cond_1b

    .line 142
    if-ne v3, p1, :cond_19

    .line 143
    new-array v3, v0, [Landroid/hardware/display/WifiDisplay;

    .line 144
    invoke-static {p1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :cond_19
    aput-object v2, v3, v1

    .line 139
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/hardware/display/WifiDisplay;
    :cond_1e
    return-object v3
.end method

.method public forgetRememberedDLNADevice()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 199
    invoke-direct {p0}, setDirty()V

    .line 201
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1}, findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "index":I
    if-ltz v0, :cond_10

    .line 189
    iget-object v1, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, setDirty()V

    .line 191
    const/4 v1, 0x1

    .line 193
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getRememberedDLNADevice()Landroid/hardware/display/DLNADevice;
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, loadIfNeeded()V

    .line 102
    iget-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    return-object v0
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, loadIfNeeded()V

    .line 92
    invoke-direct {p0, p1}, findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 94
    iget-object v1, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 96
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, loadIfNeeded()V

    .line 109
    iget-object v0, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    iget-object v1, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public rememberDLNADevice(Landroid/hardware/display/DLNADevice;)Z
    .registers 4
    .param p1, "dlnaDevice"    # Landroid/hardware/display/DLNADevice;

    .prologue
    .line 172
    invoke-direct {p0}, loadIfNeeded()V

    .line 174
    iget-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    if-eqz v0, :cond_19

    iget-object v0, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DLNADevice;->equals(Landroid/hardware/display/DLNADevice;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 175
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "rememberDLNADevice already existed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    .line 181
    :goto_18
    return v0

    .line 179
    :cond_19
    iput-object p1, p0, mRememberedDLNADevice:Landroid/hardware/display/DLNADevice;

    .line 180
    invoke-direct {p0}, setDirty()V

    .line 181
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .registers 5
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 154
    invoke-direct {p0}, loadIfNeeded()V

    .line 156
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "index":I
    if-ltz v0, :cond_27

    .line 158
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 159
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 160
    const/4 v2, 0x0

    .line 167
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    :goto_1c
    return v2

    .line 162
    .restart local v1    # "other":Landroid/hardware/display/WifiDisplay;
    :cond_1d
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    :goto_22
    invoke-direct {p0}, setDirty()V

    .line 167
    const/4 v2, 0x1

    goto :goto_1c

    .line 164
    :cond_27
    iget-object v2, p0, mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method public saveIfNeeded()V
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, mDirty:Z

    if-eqz v0, :cond_a

    .line 85
    invoke-direct {p0}, save()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, mDirty:Z

    .line 88
    :cond_a
    return-void
.end method
