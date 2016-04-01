.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "updateDir"    # Ljava/lang/String;
    .param p2, "updateContentPath"    # Ljava/lang/String;
    .param p3, "updateMetadataPath"    # Ljava/lang/String;
    .param p4, "updateVersionPath"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, updateDir:Ljava/io/File;

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, updateContent:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "updateMetadataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, updateVersion:Ljava/io/File;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B
    .registers 4
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, getVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, getCurrentVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .prologue
    .line 38
    invoke-direct {p0}, getCurrentContent()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([B)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 38
    invoke-static {p0}, getCurrentHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, verifyVersion(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p2}, getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "content":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 136
    .local v1, "is":Ljava/io/InputStream;
    :try_start_c
    invoke-static {v1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    move-result-object v2

    .line 138
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 5
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_e

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required content path, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_e
    return-object v0
.end method

.method private getCurrentContent()[B
    .registers 4

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, updateContent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 147
    :goto_a
    return-object v1

    .line 145
    :catch_b
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ConfigUpdateInstallReceiver"

    const-string v2, "Failed to read current content, assuming first update!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .registers 5
    .param p0, "content"    # [B

    .prologue
    .line 152
    if-nez p0, :cond_5

    .line 153
    const-string v3, "0"

    .line 158
    :goto_4
    return-object v3

    .line 156
    :cond_5
    :try_start_5
    const-string v3, "SHA512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 157
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 158
    .local v2, "fingerprint":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    goto :goto_4

    .line 159
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v2    # "fingerprint":[B
    :catch_15
    move-exception v1

    .line 160
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getCurrentVersion()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, updateVersion:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "strVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v2

    .line 128
    .end local v1    # "strVersion":Ljava/lang/String;
    :goto_12
    return v2

    .line 126
    :catch_13
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ConfigUpdateInstallReceiver"

    const-string v3, "Couldn\'t find current metadata, assuming first update"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 115
    const-string v1, "REQUIRED_HASH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required previous hash, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .registers 5
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required version number, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "NONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    const/4 v0, 0x1

    .line 174
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method private verifyVersion(II)Z
    .registers 4
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    .prologue
    .line 165
    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected install([BI)V
    .registers 7
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, updateDir:Ljava/io/File;

    iget-object v1, p0, updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 211
    iget-object v0, p0, updateDir:Ljava/io/File;

    iget-object v1, p0, updateVersion:Ljava/io/File;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 212
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    .line 96
    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    return-void
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;[B)V
    .registers 11
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 182
    .local v3, "tmp":Ljava/io/File;
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 186
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2c

    .line 202
    .end local v2    # "parent":Ljava/io/File;
    :catchall_2c
    move-exception v4

    :goto_2d
    if-eqz v3, :cond_32

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    :cond_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 189
    .restart local v2    # "parent":Ljava/io/File;
    :cond_36
    :try_start_36
    const-string/jumbo v4, "journal"

    const-string v5, ""

    invoke-static {v4, v5, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 191
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 193
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_2c

    .line 194
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_49
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 196
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 198
    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 199
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to atomically rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_76
    .catchall {:try_start_49 .. :try_end_76} :catchall_76

    .line 202
    :catchall_76
    move-exception v4

    move-object v0, v1

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    goto :goto_2d

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_79
    if-eqz v3, :cond_7e

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    :cond_7e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 207
    return-void
.end method
