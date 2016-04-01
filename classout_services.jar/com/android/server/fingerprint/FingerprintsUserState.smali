.class Lcom/android/server/fingerprint/FingerprintsUserState;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mFingerprints:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFingerprints:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$1;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, mWriteStateRunnable:Ljava/lang/Runnable;

    .line 66
    invoke-static {p2}, getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mFile:Ljava/io/File;

    .line 67
    iput-object p1, p0, mCtx:Landroid/content/Context;

    .line 68
    monitor-enter p0

    .line 69
    :try_start_1a
    invoke-direct {p0}, readStateSyncLocked()V

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintsUserState;

    .prologue
    .line 47
    invoke-direct {p0}, doWriteState()V

    return-void
.end method

.method private doWriteState()V
    .registers 13

    .prologue
    .line 191
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, mFile:Ljava/io/File;

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 195
    .local v1, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    .line 196
    :try_start_8
    iget-object v8, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_8f

    .line 199
    const/4 v5, 0x0

    .line 201
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 203
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 204
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 206
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    const/4 v8, 0x0

    const-string/jumbo v9, "fingerprints"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 210
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v0, :cond_92

    .line 211
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 212
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const/4 v8, 0x0

    const-string/jumbo v9, "fingerprint"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v8, 0x0

    const-string/jumbo v9, "fingerId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const/4 v8, 0x0

    const-string/jumbo v9, "groupId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const/4 v8, 0x0

    const-string/jumbo v9, "deviceId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/4 v8, 0x0

    const-string/jumbo v9, "fingerprint"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_8c} :catch_a3
    .catchall {:try_start_10 .. :try_end_8c} :catchall_b6

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 197
    .end local v0    # "count":I
    .end local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "i":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_8f
    move-exception v8

    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v8

    .line 220
    .restart local v0    # "count":I
    .restart local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v4    # "i":I
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_92
    const/4 v8, 0x0

    :try_start_93
    const-string/jumbo v9, "fingerprints"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 222
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9f} :catch_a3
    .catchall {:try_start_93 .. :try_end_9f} :catchall_b6

    .line 230
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 232
    return-void

    .line 225
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_a3
    move-exception v7

    .line 226
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_a4
    const-string v8, "FingerprintState"

    const-string v9, "Failed to write settings, restoring backup"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 228
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Failed to write fingerprints"

    invoke-direct {v8, v9, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_b6
    .catchall {:try_start_a4 .. :try_end_b6} :catchall_b6

    .line 230
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_b6
    move-exception v8

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method

.method private getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_31

    .line 183
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 184
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 187
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_31
    return-object v8
.end method

.method private static getFileForUser(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUniqueName()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 128
    const/4 v2, 0x1

    .line 129
    .local v2, "guess":I
    const/4 v0, 0x0

    .line 131
    .local v0, "defaultName":Ljava/lang/String;
    :try_start_4
    iget-object v6, p0, mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    .local v3, "mRes":Landroid/content/res/Resources;
    if-eqz v3, :cond_24

    .line 133
    const-string/jumbo v6, "fingerprint_list_item"

    const-string/jumbo v7, "string"

    const-string v8, "com.android.settings"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, "stringId":I
    if-eqz v5, :cond_24

    .line 135
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_23} :catch_3e

    move-result-object v0

    .line 144
    .end local v3    # "mRes":Landroid/content/res/Resources;
    .end local v5    # "stringId":I
    :cond_24
    :goto_24
    if-nez v0, :cond_48

    .line 145
    iget-object v6, p0, mCtx:Landroid/content/Context;

    const v7, 0x10401d6

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "name":Ljava/lang/String;
    :goto_37
    invoke-direct {p0, v4}, isUnique(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 150
    return-object v4

    .line 138
    .end local v4    # "name":Ljava/lang/String;
    :catch_3e
    move-exception v1

    .line 139
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "FingerprintState"

    const-string/jumbo v7, "getUniqueName, NameNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 147
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_48
    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_37

    .line 152
    :cond_55
    add-int/lit8 v2, v2, 0x1

    .line 153
    goto :goto_24
.end method

.method private isUnique(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v2, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 158
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    const/4 v2, 0x0

    .line 162
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 281
    .local v9, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v0, 0x1

    if-eq v11, v0, :cond_5f

    const/4 v0, 0x3

    if-ne v11, v0, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v9, :cond_5f

    .line 282
    :cond_14
    const/4 v0, 0x3

    if-eq v11, v0, :cond_4

    const/4 v0, 0x4

    if-eq v11, v0, :cond_4

    .line 286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v2, "groupId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "groupId":Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v2, "fingerId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "fingerId":Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v2, "deviceId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "deviceId":Ljava/lang/String;
    iget-object v12, p0, mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 296
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "fingerId":Ljava/lang/String;
    .end local v8    # "groupId":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_5f
    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 263
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2a

    .line 264
    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 268
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "fingerprints"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    invoke-direct {p0, p1}, parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 273
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method private readStateSyncLocked()V
    .registers 8

    .prologue
    .line 236
    iget-object v4, p0, mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 256
    :goto_8
    return-void

    .line 240
    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, mFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_1f

    .line 246
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 247
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, v3}, parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_1b} :catch_28
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_4a
    .catchall {:try_start_10 .. :try_end_1b} :catchall_45

    .line 254
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8

    .line 241
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1f
    move-exception v1

    .line 242
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "FingerprintState"

    const-string v5, "No fingerprint state"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 250
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_28
    move-exception v4

    move-object v0, v4

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    :goto_2a
    :try_start_2a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing settings file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_45

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_45
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 250
    :catch_4a
    move-exception v4

    move-object v0, v4

    goto :goto_2a
.end method

.method private scheduleWriteStateLocked()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method


# virtual methods
.method public addFingerprint(II)V
    .registers 10
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v6, p0, mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, getUniqueName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, scheduleWriteStateLocked()V

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public addFingerprint(IILjava/lang/CharSequence;)V
    .registers 11
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "fingerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    move-object v1, p3

    .line 83
    .local v1, "name":Ljava/lang/CharSequence;
    if-nez v1, :cond_8

    .line 84
    :try_start_4
    invoke-direct {p0}, getUniqueName()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_8
    iget-object v6, p0, mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {p0}, scheduleWriteStateLocked()V

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getFingerprints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public removeFingerprint(I)V
    .registers 4
    .param p1, "fingerId"    # I

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 94
    iget-object v1, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 95
    iget-object v1, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, scheduleWriteStateLocked()V

    .line 100
    :cond_20
    monitor-exit p0

    .line 101
    return-void

    .line 93
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public renameFingerprint(ILjava/lang/CharSequence;)V
    .registers 12
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_2
    iget-object v0, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3a

    .line 106
    iget-object v0, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-ne v0, p1, :cond_3c

    .line 107
    iget-object v0, p0, mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 108
    .local v7, "old":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v8, p0, mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, scheduleWriteStateLocked()V

    .line 114
    .end local v7    # "old":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3a
    monitor-exit p0

    .line 115
    return-void

    .line 105
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 114
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v0
.end method
