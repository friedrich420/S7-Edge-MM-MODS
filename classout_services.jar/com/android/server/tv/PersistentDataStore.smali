.class final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field private static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedRatingsChanged:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mParentalControlsEnabled:Z

.field private mParentalControlsEnabledChanged:Z

.field private final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, mBlockedRatings:Ljava/util/List;

    .line 190
    new-instance v1, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v1, p0, mSaveRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 88
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "userDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_47

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_47

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User dir cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_47
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "tv-input-manager-state.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, mAtomicFile:Landroid/util/AtomicFile;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/PersistentDataStore;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/PersistentDataStore;

    .prologue
    .line 64
    invoke-direct {p0}, save()V

    return-void
.end method

.method private broadcastChangesIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-boolean v0, p0, mParentalControlsEnabledChanged:Z

    if-eqz v0, :cond_15

    .line 223
    iput-boolean v3, p0, mParentalControlsEnabledChanged:Z

    .line 224
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 227
    :cond_15
    iget-boolean v0, p0, mBlockedRatingsChanged:Z

    if-eqz v0, :cond_29

    .line 228
    iput-boolean v3, p0, mBlockedRatingsChanged:Z

    .line 229
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 232
    :cond_29
    return-void
.end method

.method private clearState()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, mParentalControlsEnabled:Z

    .line 156
    return-void
.end method

.method private load()V
    .registers 6

    .prologue
    .line 159
    invoke-direct {p0}, clearState()V

    .line 163
    :try_start_3
    iget-object v3, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_22

    move-result-object v1

    .line 170
    .local v1, "is":Ljava/io/InputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 171
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v2}, loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_39
    .catchall {:try_start_9 .. :try_end_1e} :catchall_34

    .line 177
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 179
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_21
    return-void

    .line 164
    :catch_22
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    goto :goto_21

    .line 173
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_24
    move-exception v3

    move-object v0, v3

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    :goto_26
    :try_start_26
    const-string v3, "TvInputManagerService"

    const-string v4, "Failed to load tv input manager persistent store data."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-direct {p0}, clearState()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_34

    .line 177
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_21

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_34
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 173
    :catch_39
    move-exception v3

    move-object v0, v3

    goto :goto_26
.end method

.method private loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 262
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    const/4 v2, 0x0

    const-string/jumbo v3, "string"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "ratingString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 266
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing string attribute on rating"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2d
    iget-object v2, p0, mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 272
    .end local v1    # "ratingString":Ljava/lang/String;
    :cond_37
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 243
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 245
    .local v1, "outerDepth":I
    :cond_a
    :goto_a
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "blocked-ratings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 247
    invoke-direct {p0, p1}, loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 248
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "parental-controls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 249
    const/4 v2, 0x0

    const-string/jumbo v3, "enabled"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "enabled":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 251
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing enabled attribute on parental-controls"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, mParentalControlsEnabled:Z

    goto :goto_a

    .line 257
    .end local v0    # "enabled":Ljava/lang/String;
    :cond_4e
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, mLoaded:Z

    if-nez v0, :cond_a

    .line 148
    invoke-direct {p0}, load()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, mLoaded:Z

    .line 151
    :cond_a
    return-void
.end method

.method private postSave()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method private save()V
    .registers 7

    .prologue
    .line 200
    :try_start_0
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_32

    move-result-object v1

    .line 201
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 203
    .local v3, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 204
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_3b

    .line 207
    const/4 v3, 0x1

    .line 209
    if-eqz v3, :cond_2c

    .line 210
    :try_start_23
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, broadcastChangesIfNeeded()V

    .line 219
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_2b
    return-void

    .line 213
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_2c
    iget-object v4, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_32

    goto :goto_2b

    .line 216
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_32
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "TvInputManagerService"

    const-string v5, "Failed to save tv input manager persistent store data."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 209
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_3b
    move-exception v4

    if-eqz v3, :cond_47

    .line 210
    :try_start_3e
    iget-object v5, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 211
    invoke-direct {p0}, broadcastChangesIfNeeded()V

    .line 213
    :goto_46
    throw v4

    :cond_47
    iget-object v5, p0, mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4c} :catch_32

    goto :goto_46
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
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 277
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v2, "blocked-ratings"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    iget-object v3, p0, mBlockedRatings:Ljava/util/List;

    monitor-enter v3

    .line 280
    :try_start_1d
    iget-object v2, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvContentRating;

    .line 281
    .local v1, "rating":Landroid/media/tv/TvContentRating;
    const/4 v2, 0x0

    const-string/jumbo v4, "rating"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    const/4 v2, 0x0

    const-string/jumbo v4, "string"

    invoke-virtual {v1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const/4 v2, 0x0

    const-string/jumbo v4, "rating"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_23

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rating":Landroid/media/tv/TvContentRating;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_1d .. :try_end_4b} :catchall_49

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 286
    const-string v2, "blocked-ratings"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const-string/jumbo v2, "parental-controls"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, mParentalControlsEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    const-string/jumbo v2, "parental-controls"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string/jumbo v2, "tv-input-manager-state"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 292
    return-void
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 129
    invoke-direct {p0}, loadIfNeeded()V

    .line 130
    if-eqz p1, :cond_18

    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 131
    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, mBlockedRatingsChanged:Z

    .line 133
    invoke-direct {p0}, postSave()V

    .line 135
    :cond_18
    return-void
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .registers 3

    .prologue
    .line 124
    invoke-direct {p0}, loadIfNeeded()V

    .line 125
    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    iget-object v1, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/TvContentRating;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvContentRating;

    return-object v0
.end method

.method public isParentalControlsEnabled()Z
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, loadIfNeeded()V

    .line 99
    iget-boolean v0, p0, mParentalControlsEnabled:Z

    return v0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .registers 6
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 112
    invoke-direct {p0}, loadIfNeeded()V

    .line 113
    iget-object v3, p0, mBlockedRatings:Ljava/util/List;

    monitor-enter v3

    .line 114
    :try_start_6
    iget-object v2, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvContentRating;

    .line 115
    .local v0, "blockedRating":Landroid/media/tv/TvContentRating;
    invoke-virtual {p1, v0}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 116
    const/4 v2, 0x1

    monitor-exit v3

    .line 120
    .end local v0    # "blockedRating":Landroid/media/tv/TvContentRating;
    :goto_20
    return v2

    .line 119
    :cond_21
    monitor-exit v3

    .line 120
    const/4 v2, 0x0

    goto :goto_20

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 138
    invoke-direct {p0}, loadIfNeeded()V

    .line 139
    if-eqz p1, :cond_18

    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 140
    iget-object v0, p0, mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, mBlockedRatingsChanged:Z

    .line 142
    invoke-direct {p0}, postSave()V

    .line 144
    :cond_18
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, loadIfNeeded()V

    .line 104
    iget-boolean v0, p0, mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_f

    .line 105
    iput-boolean p1, p0, mParentalControlsEnabled:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, mParentalControlsEnabledChanged:Z

    .line 107
    invoke-direct {p0}, postSave()V

    .line 109
    :cond_f
    return-void
.end method
