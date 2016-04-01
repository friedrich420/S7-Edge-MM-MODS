.class public Lcom/absolute/android/persistservice/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/absolute/android/sslutil/SslUtil;

.field private static b:Ljava/util/List;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, b:Ljava/util/List;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 16

    .prologue
    const/4 v6, 0x0

    .line 206
    .line 208
    new-instance v7, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct {v7}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    .line 209
    const/4 v8, 0x0

    .line 216
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_c7

    .line 219
    :try_start_c
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p5}, a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_61
    .catchall {:try_start_c .. :try_end_20} :catchall_c7

    move-result-object v1

    .line 243
    :goto_21
    :try_start_21
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_cb

    .line 244
    :try_start_2a
    const-string v3, "UTF-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 248
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 250
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_89

    .line 252
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_b4

    .line 270
    :try_start_4e
    invoke-virtual {v7, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->load(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_71
    .catchall {:try_start_4e .. :try_end_51} :catchall_76

    .line 287
    :goto_51
    if-eqz v1, :cond_56

    .line 288
    :try_start_53
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_c1

    .line 292
    :cond_56
    :goto_56
    if-eqz v2, :cond_5b

    .line 294
    :try_start_58
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_c3

    .line 298
    :cond_5b
    :goto_5b
    if-eqz v3, :cond_60

    .line 300
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_c5

    .line 305
    :cond_60
    :goto_60
    return-object v7

    .line 226
    :catch_61
    move-exception v1

    .line 234
    if-eqz v6, :cond_67

    .line 235
    :try_start_64
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_b9
    .catchall {:try_start_64 .. :try_end_67} :catchall_c7

    .line 239
    :cond_67
    :goto_67
    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    :try_start_6c
    invoke-static/range {v0 .. v5}, a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_c7

    move-result-object v1

    goto :goto_21

    .line 271
    :catch_71
    move-exception v0

    .line 274
    :try_start_72
    invoke-static {v3, v7}, a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_51

    .line 286
    :catchall_76
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    .line 287
    :goto_79
    if-eqz v1, :cond_7e

    .line 288
    :try_start_7b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_bb

    .line 292
    :cond_7e
    :goto_7e
    if-eqz v6, :cond_83

    .line 294
    :try_start_80
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_bd

    .line 298
    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    .line 300
    :try_start_85
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_bf

    .line 286
    :cond_88
    :goto_88
    throw v0

    .line 279
    :cond_89
    :try_start_89
    invoke-static {v1, p4}, a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v5, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " response: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_b4
    .catchall {:try_start_89 .. :try_end_b4} :catchall_b4

    .line 286
    :catchall_b4
    move-exception v0

    move-object v9, v2

    move-object v2, v6

    move-object v6, v9

    goto :goto_79

    .line 237
    :catch_b9
    move-exception v1

    goto :goto_67

    .line 290
    :catch_bb
    move-exception v1

    goto :goto_7e

    .line 295
    :catch_bd
    move-exception v1

    goto :goto_83

    .line 301
    :catch_bf
    move-exception v1

    goto :goto_88

    .line 290
    :catch_c1
    move-exception v0

    goto :goto_56

    .line 295
    :catch_c3
    move-exception v0

    goto :goto_5b

    .line 301
    :catch_c5
    move-exception v0

    goto :goto_60

    .line 286
    :catchall_c7
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_79

    :catchall_cb
    move-exception v0

    move-object v2, v6

    goto :goto_79
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .registers 3

    .prologue
    .line 807
    sget-object v0, a:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v0, :cond_d

    .line 808
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, a:Lcom/absolute/android/sslutil/SslUtil;

    .line 810
    :cond_d
    sget-object v0, a:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 50
    sget-object v0, c:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v0, "AccessKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "PersistenceVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Platform="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Make="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "OSVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BuildFingerprint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Hardware="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MacAddress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "IMEI="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-nez v0, :cond_162

    const-string v0, ""

    :cond_162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SerialNo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "RilSerialNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string/jumbo v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 574
    .line 575
    const/4 v2, 0x0

    .line 578
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_82

    .line 580
    :try_start_f
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v2, ""

    .line 582
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    :goto_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_39

    goto :goto_1e

    .line 590
    :catchall_39
    move-exception v0

    :goto_3a
    if-eqz v1, :cond_3f

    .line 592
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4a

    .line 590
    :cond_3f
    :goto_3f
    throw v0

    .line 587
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_39

    move-result-object v0

    .line 590
    if-eqz v1, :cond_49

    .line 592
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_66

    .line 600
    :cond_49
    :goto_49
    return-object v0

    .line 593
    :catch_4a
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_3f

    .line 593
    :catch_66
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_49

    .line 590
    :catchall_82
    move-exception v0

    move-object v1, v2

    goto :goto_3a
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .registers 10

    .prologue
    const v3, 0xea60

    .line 501
    .line 502
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, c:Ljava/lang/String;

    .line 507
    if-eqz p1, :cond_6a

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_48

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 524
    :cond_6a
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9b

    .line 525
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 543
    :goto_7c
    if-eqz p3, :cond_82

    .line 544
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 547
    :cond_82
    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 555
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 558
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 559
    return-object v0

    .line 527
    :cond_9b
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 528
    new-instance v1, Lcom/absolute/android/persistservice/s;

    invoke-direct {v1}, Lcom/absolute/android/persistservice/s;-><init>()V

    .line 539
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_7c
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .registers 14

    .prologue
    .line 634
    if-nez p0, :cond_8

    .line 635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_8
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 642
    const/16 v0, 0x28

    new-array v3, v0, [C

    .line 643
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 644
    const/4 v0, 0x1

    .line 646
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v6

    move v6, v5

    move v5, v4

    .line 649
    :goto_1a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v4

    .line 650
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2f

    .line 782
    const/4 v0, 0x2

    if-ne v7, v0, :cond_125

    const/4 v0, 0x4

    if-gt v5, v0, :cond_125

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_2f
    int-to-char v8, v4

    .line 655
    array-length v4, v3

    if-ne v2, v4, :cond_15d

    .line 656
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 657
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    :goto_3d
    const/4 v3, 0x2

    if-ne v7, v3, :cond_15a

    .line 661
    const/16 v3, 0x10

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 662
    if-ltz v3, :cond_53

    .line 663
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    .line 664
    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x4

    if-ge v3, v5, :cond_5e

    move v5, v3

    move-object v3, v4

    .line 665
    goto :goto_1a

    .line 667
    :cond_53
    const/4 v3, 0x4

    if-gt v5, v3, :cond_5f

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    move v5, v3

    .line 670
    :cond_5f
    const/4 v7, 0x0

    .line 671
    add-int/lit8 v3, v2, 0x1

    int-to-char v10, v6

    aput-char v10, v4, v2

    .line 672
    const/16 v2, 0xa

    if-eq v8, v2, :cond_6c

    move v2, v3

    move-object v3, v4

    .line 673
    goto :goto_1a

    :cond_6c
    move v2, v3

    move v3, v7

    .line 676
    :goto_6e
    const/4 v7, 0x1

    if-ne v3, v7, :cond_a3

    .line 677
    const/4 v7, 0x0

    .line 678
    sparse-switch v8, :sswitch_data_160

    move v0, v8

    :goto_76
    move v8, v0

    .line 775
    :cond_77
    :goto_77
    const/4 v0, 0x0

    .line 776
    const/4 v3, 0x4

    if-ne v7, v3, :cond_7d

    .line 778
    const/4 v7, 0x0

    move v1, v2

    .line 780
    :cond_7d
    add-int/lit8 v3, v2, 0x1

    aput-char v8, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_1a

    .line 680
    :sswitch_84
    const/4 v3, 0x3

    move v7, v3

    move-object v3, v4

    .line 681
    goto :goto_1a

    .line 683
    :sswitch_88
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 684
    goto :goto_1a

    .line 686
    :sswitch_8c
    const/16 v0, 0x8

    .line 687
    goto :goto_76

    .line 689
    :sswitch_8f
    const/16 v0, 0xc

    .line 690
    goto :goto_76

    .line 692
    :sswitch_92
    const/16 v0, 0xa

    .line 693
    goto :goto_76

    .line 695
    :sswitch_95
    const/16 v0, 0xd

    .line 696
    goto :goto_76

    .line 698
    :sswitch_98
    const/16 v0, 0x9

    .line 699
    goto :goto_76

    .line 701
    :sswitch_9b
    const/4 v5, 0x2

    .line 702
    const/4 v3, 0x0

    move v6, v3

    move v7, v5

    move v5, v3

    move-object v3, v4

    .line 703
    goto/16 :goto_1a

    .line 706
    :cond_a3
    sparse-switch v8, :sswitch_data_182

    .line 758
    :cond_a6
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_11b

    .line 759
    const/4 v7, 0x3

    if-ne v3, v7, :cond_b0

    .line 760
    const/4 v3, 0x5

    .line 763
    :cond_b0
    if-eqz v2, :cond_156

    if-eq v2, v1, :cond_156

    const/4 v7, 0x5

    if-ne v3, v7, :cond_113

    move v7, v3

    move-object v3, v4

    .line 764
    goto/16 :goto_1a

    .line 709
    :sswitch_bb
    if-eqz v0, :cond_a6

    .line 711
    :cond_bd
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v7

    .line 712
    const/4 v8, -0x1

    if-ne v7, v8, :cond_c8

    move v7, v3

    move-object v3, v4

    .line 713
    goto/16 :goto_1a

    .line 715
    :cond_c8
    int-to-char v7, v7

    .line 716
    const/16 v8, 0xd

    if-eq v7, v8, :cond_156

    const/16 v8, 0xa

    if-ne v7, v8, :cond_bd

    move v7, v3

    move-object v3, v4

    .line 717
    goto/16 :goto_1a

    .line 724
    :sswitch_d5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_dd

    .line 725
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 726
    goto/16 :goto_1a

    .line 730
    :cond_dd
    :sswitch_dd
    const/4 v3, 0x0

    .line 731
    const/4 v0, 0x1

    .line 732
    if-gtz v2, :cond_e5

    if-nez v2, :cond_fb

    if-nez v1, :cond_fb

    .line 733
    :cond_e5
    const/4 v7, -0x1

    if-ne v1, v7, :cond_e9

    move v1, v2

    .line 736
    :cond_e9
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v2}, Ljava/lang/String;-><init>([CII)V

    .line 737
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_fb
    const/4 v1, -0x1

    .line 741
    const/4 v2, 0x0

    move v7, v3

    move-object v3, v4

    .line 742
    goto/16 :goto_1a

    .line 744
    :sswitch_101
    const/4 v7, 0x4

    if-ne v3, v7, :cond_105

    move v1, v2

    .line 747
    :cond_105
    const/4 v3, 0x1

    move v7, v3

    move-object v3, v4

    .line 748
    goto/16 :goto_1a

    .line 751
    :sswitch_10a
    const/4 v7, -0x1

    if-ne v1, v7, :cond_a6

    .line 752
    const/4 v1, 0x0

    move-object v3, v4

    move v7, v1

    move v1, v2

    .line 754
    goto/16 :goto_1a

    .line 766
    :cond_113
    const/4 v7, -0x1

    if-ne v1, v7, :cond_11b

    .line 767
    const/4 v3, 0x4

    move v7, v3

    move-object v3, v4

    .line 768
    goto/16 :goto_1a

    :cond_11b
    move v7, v3

    .line 771
    const/4 v0, 0x5

    if-eq v7, v0, :cond_122

    const/4 v0, 0x3

    if-ne v7, v0, :cond_77

    .line 772
    :cond_122
    const/4 v7, 0x0

    goto/16 :goto_77

    .line 785
    :cond_125
    const/4 v0, -0x1

    if-ne v1, v0, :cond_12b

    if-lez v2, :cond_12b

    move v1, v2

    .line 788
    :cond_12b
    if-ltz v1, :cond_155

    .line 789
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 790
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    const/4 v1, 0x1

    if-ne v7, v1, :cond_152

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_152
    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_155
    return-void

    :cond_156
    move v7, v3

    move-object v3, v4

    goto/16 :goto_1a

    :cond_15a
    move v3, v7

    goto/16 :goto_6e

    :cond_15d
    move-object v4, v3

    goto/16 :goto_3d

    .line 678
    :sswitch_data_160
    .sparse-switch
        0xa -> :sswitch_88
        0xd -> :sswitch_84
        0x62 -> :sswitch_8c
        0x66 -> :sswitch_8f
        0x6e -> :sswitch_92
        0x72 -> :sswitch_95
        0x74 -> :sswitch_98
        0x75 -> :sswitch_9b
    .end sparse-switch

    .line 706
    :sswitch_data_182
    .sparse-switch
        0xa -> :sswitch_d5
        0xd -> :sswitch_dd
        0x21 -> :sswitch_bb
        0x23 -> :sswitch_bb
        0x3a -> :sswitch_10a
        0x3d -> :sswitch_10a
        0x5c -> :sswitch_101
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V
    .registers 22

    .prologue
    .line 349
    const/4 v9, 0x0

    .line 350
    const/4 v8, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const/4 v10, 0x0

    .line 360
    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_158

    .line 363
    :try_start_9
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static/range {p10 .. p10}, a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p4, v4}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 368
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-static/range {v1 .. v6}, a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_6a
    .catchall {:try_start_9 .. :try_end_1f} :catchall_158

    move-result-object v5

    .line 383
    :goto_20
    :try_start_20
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_129

    move-result v2

    .line 385
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_fc

    .line 388
    :try_start_28
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 390
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_28 .. :try_end_3b} :catch_165
    .catchall {:try_start_28 .. :try_end_3b} :catchall_129

    .line 393
    :try_start_3b
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v2, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3b .. :try_end_40} :catch_16b
    .catchall {:try_start_3b .. :try_end_40} :catchall_15c

    .line 395
    :try_start_40
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_47} :catch_170
    .catchall {:try_start_40 .. :try_end_47} :catchall_161

    .line 396
    const/16 v4, 0x2000

    :try_start_49
    new-array v7, v4, [B

    .line 399
    const/4 v6, 0x0

    .line 400
    const/4 v4, 0x0

    .line 401
    :cond_4d
    :goto_4d
    invoke-virtual {v3, v7}, Ljava/security/DigestInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a2

    .line 402
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_58
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_58} :catch_bd
    .catchall {:try_start_49 .. :try_end_58} :catchall_e4

    .line 403
    if-eqz p7, :cond_4d

    .line 404
    add-int/2addr v6, v8

    .line 406
    sub-int v8, v6, v4

    move/from16 v0, p8

    mul-int/lit16 v9, v0, 0x400

    if-lt v8, v9, :cond_4d

    .line 414
    :try_start_63
    move-object/from16 v0, p7

    invoke-interface {v0, p0, p1, v10, v6}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_68} :catch_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_63 .. :try_end_68} :catch_bd
    .catchall {:try_start_63 .. :try_end_68} :catchall_e4

    move v4, v6

    .line 420
    goto :goto_4d

    .line 370
    :catch_6a
    move-exception v2

    .line 378
    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    :try_start_72
    invoke-static/range {v1 .. v6}, a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_158

    move-result-object v5

    goto :goto_20

    .line 416
    :catch_77
    move-exception v4

    .line 417
    :try_start_78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v6

    .line 420
    goto :goto_4d

    .line 426
    :cond_a2
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 428
    invoke-static/range {p5 .. p5}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 431
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string v6, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_bd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_78 .. :try_end_bd} :catch_bd
    .catchall {:try_start_78 .. :try_end_bd} :catchall_e4

    .line 436
    :catch_bd
    move-exception v4

    .line 438
    :goto_be
    :try_start_be
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloaded APK for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "failed - unsupported digest verification algorithm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SHA256"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_e4
    .catchall {:try_start_be .. :try_end_e4} :catchall_e4

    .line 450
    :catchall_e4
    move-exception v4

    move-object v7, v1

    move-object v8, v2

    move-object v1, v4

    move-object v2, v5

    .line 451
    :goto_e9
    if-eqz v2, :cond_ee

    .line 452
    :try_start_eb
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_140

    .line 457
    :cond_ee
    :goto_ee
    if-eqz v7, :cond_f6

    .line 458
    :try_start_f0
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f6} :catch_156

    .line 463
    :cond_f6
    :goto_f6
    if-eqz v3, :cond_142

    .line 464
    :try_start_f8
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_148

    .line 450
    :cond_fb
    :goto_fb
    throw v1

    .line 443
    :cond_fc
    :try_start_fc
    move-object/from16 v0, p9

    invoke-static {v5, v0}, a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v3

    .line 444
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server returned error in response to download APK HTTP request for URL: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_129
    .catchall {:try_start_fc .. :try_end_129} :catchall_129

    .line 450
    :catchall_129
    move-exception v1

    move-object v2, v5

    move-object v3, v9

    goto :goto_e9

    .line 451
    :cond_12d
    if-eqz v5, :cond_132

    .line 452
    :try_start_12f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_14a

    .line 457
    :cond_132
    :goto_132
    if-eqz v1, :cond_13a

    .line 458
    :try_start_134
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13a} :catch_154

    .line 463
    :cond_13a
    :goto_13a
    if-eqz v3, :cond_14c

    .line 464
    :try_start_13c
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13f} :catch_152

    .line 471
    :cond_13f
    :goto_13f
    return-void

    .line 454
    :catch_140
    move-exception v2

    goto :goto_ee

    .line 466
    :cond_142
    if-eqz v8, :cond_fb

    .line 467
    :try_start_144
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_fb

    .line 469
    :catch_148
    move-exception v2

    goto :goto_fb

    .line 454
    :catch_14a
    move-exception v4

    goto :goto_132

    .line 466
    :cond_14c
    if-eqz v2, :cond_13f

    .line 467
    :try_start_14e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_13f

    .line 469
    :catch_152
    move-exception v1

    goto :goto_13f

    .line 461
    :catch_154
    move-exception v1

    goto :goto_13a

    :catch_156
    move-exception v2

    goto :goto_f6

    .line 450
    :catchall_158
    move-exception v1

    move-object v2, v10

    move-object v3, v9

    goto :goto_e9

    :catchall_15c
    move-exception v1

    move-object v8, v2

    move-object v3, v9

    move-object v2, v5

    goto :goto_e9

    :catchall_161
    move-exception v1

    move-object v8, v2

    move-object v2, v5

    goto :goto_e9

    .line 436
    :catch_165
    move-exception v1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_be

    :catch_16b
    move-exception v1

    move-object v1, v7

    move-object v3, v9

    goto/16 :goto_be

    :catch_170
    move-exception v1

    move-object v1, v7

    goto/16 :goto_be
.end method
