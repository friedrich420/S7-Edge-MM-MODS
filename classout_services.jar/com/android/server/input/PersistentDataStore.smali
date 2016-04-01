.class final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$1;,
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mInputDevices:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mAtomicFile:Landroid/util/AtomicFile;

    .line 79
    return-void
.end method

.method private clearState()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 203
    return-void
.end method

.method private getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, loadIfNeeded()V

    .line 181
    iget-object v1, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 182
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 183
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .end local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    .line 184
    .restart local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    iget-object v1, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-direct {p0}, setDirty()V

    .line 187
    :cond_1d
    return-object v0
.end method

.method private load()V
    .registers 6

    .prologue
    .line 206
    invoke-direct {p0}, clearState()V

    .line 210
    :try_start_3
    iget-object v3, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_22

    move-result-object v1

    .line 217
    .local v1, "is":Ljava/io/InputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 218
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v2}, loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_33
    .catchall {:try_start_9 .. :try_end_1e} :catchall_42

    .line 227
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 229
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_21
    return-void

    .line 211
    :catch_22
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/io/FileNotFoundException;
    goto :goto_21

    .line 220
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_24
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/io/IOException;
    :try_start_25
    const-string v3, "InputManager"

    const-string v4, "Failed to load input manager persistent store data."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-direct {p0}, clearState()V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_42

    .line 227
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .line 223
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_33
    move-exception v0

    .line 224
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_34
    const-string v3, "InputManager"

    const-string v4, "Failed to load input manager persistent store data."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-direct {p0}, clearState()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_42

    .line 227
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
    .line 256
    const-string/jumbo v1, "input-manager-state"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 258
    .local v0, "outerDepth":I
    :cond_a
    :goto_a
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "input-devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 260
    invoke-direct {p0, p1}, loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 263
    :cond_21
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, mLoaded:Z

    if-nez v0, :cond_a

    .line 192
    invoke-direct {p0}, load()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, mLoaded:Z

    .line 195
    :cond_a
    return-void
.end method

.method private loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 268
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "input-device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    const-string/jumbo v3, "descriptor"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_29

    .line 272
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing descriptor attribute on input-device."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_29
    iget-object v3, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 276
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Found duplicate input device."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_39
    new-instance v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-direct {v2, v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    .line 280
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 281
    iget-object v3, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 284
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_47
    return-void
.end method

.method private save()V
    .registers 7

    .prologue
    .line 234
    :try_start_0
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2f

    move-result-object v1

    .line 235
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 237
    .local v3, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 238
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v2}, saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 240
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_38

    .line 241
    const/4 v3, 0x1

    .line 243
    if-eqz v3, :cond_29

    .line 244
    :try_start_23
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 252
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_28
    return-void

    .line 246
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_29
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_28

    .line 249
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_2f
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "InputManager"

    const-string v5, "Failed to save input manager persistent store data."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 243
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_38
    move-exception v4

    if-eqz v3, :cond_41

    .line 244
    :try_start_3b
    iget-object v5, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 246
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
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 288
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v4, "input-manager-state"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string/jumbo v4, "input-devices"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    iget-object v4, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    .local v0, "descriptor":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 294
    .local v3, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const-string/jumbo v4, "input-device"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string/jumbo v4, "descriptor"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 297
    const-string/jumbo v4, "input-device"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_25

    .line 299
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    .end local v3    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_53
    const-string/jumbo v4, "input-devices"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    const-string/jumbo v4, "input-manager-state"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 302
    return-void
.end method

.method private setDirty()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    .line 199
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 138
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 139
    invoke-direct {p0}, setDirty()V

    .line 142
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 114
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    move-result-object v1

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 129
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_12

    .line 130
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 132
    :goto_11
    return-object v1

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 89
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 90
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v1, :cond_a

    .line 91
    sget-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 98
    :cond_9
    :goto_9
    return-object v0

    .line 94
    :cond_a
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    move-result-object v0

    .line 95
    .local v0, "cal":Landroid/hardware/input/TouchCalibration;
    if-nez v0, :cond_9

    .line 96
    sget-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    goto :goto_9
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 148
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 149
    invoke-direct {p0}, setDirty()V

    .line 152
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "changed":Z
    iget-object v3, p0, mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 167
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 168
    const/4 v0, 0x1

    goto :goto_b

    .line 171
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_1f
    if-eqz v0, :cond_26

    .line 172
    invoke-direct {p0}, setDirty()V

    .line 173
    const/4 v3, 0x1

    .line 175
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public saveIfNeeded()V
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, mDirty:Z

    if-eqz v0, :cond_a

    .line 83
    invoke-direct {p0}, save()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, mDirty:Z

    .line 86
    :cond_a
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 120
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 121
    invoke-direct {p0}, setDirty()V

    .line 124
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 104
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 105
    invoke-direct {p0}, setDirty()V

    .line 109
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, v1}, getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 157
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 158
    invoke-direct {p0}, setDirty()V

    .line 159
    const/4 v1, 0x1

    .line 161
    :cond_11
    return v1
.end method
