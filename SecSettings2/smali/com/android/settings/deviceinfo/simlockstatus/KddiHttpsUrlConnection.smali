.class public Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsSucceed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    .line 186
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getAuthorizationValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string v0, "aHgq8b2NBs:"

    .line 115
    .local v0, "credentials":Ljava/lang/String;
    const-string v1, "1"

    const-string v2, "persist.sys.kddi_sim_lock"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v0, "aagq3b1NBs:"

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserAgentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "KD-14/0001"

    return-object v0
.end method

.method private static processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "responseBodyPart"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    .line 128
    sget-object v7, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v8, "process return body part()"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v7, "3"

    const-string v8, "persist.sys.kddi_sim_lock"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    sget-object v7, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v8, "no response body part available property is 3"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-object v6

    .line 134
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_2

    .line 135
    :cond_1
    sget-object v7, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v8, "no response body part available"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 140
    .local v1, "messageType":B
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 143
    .local v0, "entireMessageLength":S
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "entire message length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 146
    .local v3, "serverStatusCode":I
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server status code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 149
    .local v5, "serverTextLen":S
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server text length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-array v4, v5, [B

    .line 152
    .local v4, "serverText":[B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 153
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server text : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    add-int/lit8 v6, v0, -0x1

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v6, v6, -0x4

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v6, v5

    new-array v2, v6, [B

    .line 157
    .local v2, "newSimLockPolicyFileBytes":[B
    sget-object v6, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new sim lock policy file length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->copyRemainingByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 163
    sget-object v5, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v6, "read input stream"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 167
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 172
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    const/4 v5, 0x0

    .line 180
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 174
    .restart local v4    # "len":I
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 175
    sget-object v5, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byte buffer read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v5, v2

    .line 183
    goto :goto_1

    .line 180
    .end local v4    # "len":I
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method


# virtual methods
.method public isSucceed()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return v0
.end method

.method public post(Landroid/content/Context;)Ljava/nio/ByteBuffer;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v11, "connect()"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v7, 0x0

    .line 56
    .local v7, "simlockPolicyBuffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 57
    .local v9, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v1, 0x0

    .line 59
    .local v1, "buffOutStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v10, "https://slcs.device.kddi.ne.jp/SIM/servlet/SimServlet"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    .line 61
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 62
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 63
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 64
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 65
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 68
    const-string v10, "Authorization"

    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getAuthorizationValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v10, "User-Agent"

    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getUserAgentValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v10, "Content-Type"

    const-string v11, "application/octet-stream"

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v11, "write request body"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .local v2, "buffOutStream":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->build(Landroid/content/Context;)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 77
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 79
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    .line 80
    .local v5, "responseCode":I
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "responseMessage":Ljava/lang/String;
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response code : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", message : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v10, 0xc8

    if-ne v5, v10, :cond_2

    .line 84
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v11, "check input stream"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 86
    .local v4, "httpResponseBodyPart":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 88
    if-eqz v7, :cond_0

    .line 89
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "simlock policy buffer capacity : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    .line 92
    :cond_0
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is succeed to get simlock policy buffer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .end local v4    # "httpResponseBodyPart":Ljava/nio/ByteBuffer;
    :goto_0
    if-eqz v9, :cond_1

    .line 102
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 103
    :cond_1
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 106
    .end local v2    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .end local v5    # "responseCode":I
    .end local v6    # "responseMessage":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    :goto_1
    return-object v7

    .line 94
    .end local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "responseCode":I
    .restart local v6    # "responseMessage":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    sget-object v10, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v11, "check error stream"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 98
    .end local v5    # "responseCode":I
    .end local v6    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 99
    .end local v2    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v9, :cond_3

    .line 102
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 103
    :cond_3
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v9, :cond_4

    .line 102
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 103
    :cond_4
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 101
    .end local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "buffOutStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffOutStream":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 98
    .end local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    goto :goto_2
.end method
