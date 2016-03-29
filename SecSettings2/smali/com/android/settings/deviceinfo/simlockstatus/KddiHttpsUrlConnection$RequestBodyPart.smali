.class Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestBodyPart"
.end annotation


# direct methods
.method public static build(Landroid/content/Context;)[B
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "prepare HTTP Request body part"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {p0}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->readKddiDummyData(Landroid/content/Context;)[B

    move-result-object v0

    .line 202
    .local v0, "dummyData":[B
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dummy data length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    array-length v5, v0

    add-int/lit8 v5, v5, 0x16

    int-to-short v2, v5

    .line 206
    .local v2, "entireMsgLen":S
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected message length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "message type : 16"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    :try_start_0
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 216
    const/16 v4, 0x22

    .line 217
    .local v4, "requestType":B
    const-string v5, "2"

    const-string v6, "persist.sys.kddi_sim_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    const/4 v4, 0x0

    .line 220
    :cond_0
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type of request : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    invoke-static {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->getImei(Landroid/content/Context;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pki key id : 0"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 230
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 231
    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "body part written : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v4    # "requestType":B
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static readKddiDummyData(Landroid/content/Context;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 242
    .local v2, "inStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 244
    .local v0, "dummyData":[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 245
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 251
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method
