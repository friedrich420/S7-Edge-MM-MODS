.class public abstract Lcom/absolute/android/persistservice/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/util/Hashtable;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/absolute/android/persistservice/v;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/absolute/android/persistservice/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, d:Landroid/content/Context;

    .line 86
    iput-object p2, p0, e:Lcom/absolute/android/persistservice/v;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, f:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, c:Ljava/util/Hashtable;

    .line 89
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x18

    const/4 v2, 0x0

    .line 254
    monitor-enter p0

    .line 261
    :try_start_7
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e4
    .catchall {:try_start_7 .. :try_end_c} :catchall_d1

    .line 262
    const/16 v0, 0x24

    :try_start_e
    new-array v0, v0, [B

    .line 263
    const/4 v1, 0x0

    const/16 v3, 0x24

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_f9

    .line 264
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 266
    const/4 v3, 0x0

    const/16 v5, 0x18

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v6, :cond_f9

    .line 269
    const/4 v3, 0x2

    const-string v5, "DESede/CBC/PKCS5Padding"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v3, v5, v6}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 271
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v4, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_37} :catch_e9
    .catchall {:try_start_e .. :try_end_37} :catchall_d5

    .line 272
    :try_start_37
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_ee
    .catchall {:try_start_37 .. :try_end_3c} :catchall_d8

    .line 273
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 274
    if-eqz v0, :cond_46

    .line 275
    iput-object v0, p0, c:Ljava/util/Hashtable;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_46} :catch_f4
    .catchall {:try_start_3c .. :try_end_46} :catchall_db

    :cond_46
    move-object v2, v3

    .line 280
    :goto_47
    if-nez v0, :cond_a4

    .line 281
    :try_start_49
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot read data file - unexpected format / corrupt."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_df

    .line 284
    :catch_51
    move-exception v0

    move-object v3, v4

    .line 285
    :goto_53
    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 288
    :catchall_54
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_58
    if-eqz v2, :cond_63

    .line 294
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_5a

    .line 298
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_63} :catch_84
    .catchall {:try_start_5a .. :try_end_63} :catchall_6e

    .line 305
    :cond_63
    :goto_63
    if-eqz v3, :cond_68

    .line 307
    :try_start_65
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_80
    .catchall {:try_start_65 .. :try_end_68} :catchall_6e

    .line 311
    :cond_68
    :goto_68
    if-eqz v4, :cond_6d

    .line 313
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_82
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 288
    :cond_6d
    :goto_6d
    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 254
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_b1
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    .line 305
    :cond_74
    :goto_74
    if-eqz v2, :cond_79

    .line 307
    :try_start_76
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_ad
    .catchall {:try_start_76 .. :try_end_79} :catchall_6e

    .line 311
    :cond_79
    :goto_79
    if-eqz v4, :cond_7e

    .line 313
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_af
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6e

    .line 317
    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    .line 308
    :catch_80
    move-exception v1

    goto :goto_68

    .line 314
    :catch_82
    move-exception v1

    goto :goto_6d

    .line 299
    :catch_84
    move-exception v1

    .line 300
    :try_start_85
    iget-object v2, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception closing persisted file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in loadNewVersion(). Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_6e

    goto :goto_63

    .line 288
    :cond_a4
    if-eqz v1, :cond_74

    .line 294
    :goto_a6
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_b1
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_6e

    move-result v0

    if-eq v0, v7, :cond_71

    goto :goto_a6

    .line 308
    :catch_ad
    move-exception v0

    goto :goto_79

    .line 314
    :catch_af
    move-exception v0

    goto :goto_7e

    .line 299
    :catch_b1
    move-exception v0

    .line 300
    :try_start_b2
    iget-object v1, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in loadNewVersion(). Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d0
    .catchall {:try_start_b2 .. :try_end_d0} :catchall_6e

    goto :goto_74

    .line 288
    :catchall_d1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_58

    :catchall_d5
    move-exception v0

    move-object v3, v2

    goto :goto_58

    :catchall_d8
    move-exception v0

    goto/16 :goto_58

    :catchall_db
    move-exception v0

    move-object v2, v1

    goto/16 :goto_58

    :catchall_df
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_58

    .line 284
    :catch_e4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_53

    :catch_e9
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_53

    :catch_ee
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_53

    :catch_f4
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_53

    :cond_f9
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_47
.end method

.method private a()[B
    .registers 3

    .prologue
    .line 432
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 433
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 434
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 435
    return-object v1
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()[B
    .registers 4

    .prologue
    .line 461
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 463
    const-string v0, "Lenovo"

    .line 466
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_47

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 472
    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 481
    const-string v0, "0EB8B69D04F2451E8B59C47D"

    .line 482
    const-string v0, "0EB8B69D04F2451E8B59C47D"

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/absolute/android/persistservice/y;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, g:Lcom/absolute/android/persistservice/y;

    .line 98
    return-void
.end method

.method protected abstract c()V
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, f:Ljava/lang/String;

    invoke-virtual {p0, v0}, j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 391
    if-ne p0, p1, :cond_5

    .line 392
    const/4 v0, 0x1

    .line 410
    :cond_4
    :goto_4
    return v0

    .line 397
    :cond_5
    instance-of v1, p1, Lcom/absolute/android/persistservice/ac;

    if-eqz v1, :cond_4

    .line 402
    check-cast p1, Lcom/absolute/android/persistservice/ac;

    .line 406
    iget-object v1, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p1, c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 410
    iget-object v0, p0, c:Ljava/util/Hashtable;

    iget-object v1, p1, c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method protected f()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, f:Ljava/lang/String;

    invoke-virtual {p0, v0}, k(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public abstract i(Ljava/lang/String;)Z
.end method

.method protected declared-synchronized j(Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    monitor-enter p0

    .line 126
    const/4 v9, 0x0

    .line 131
    :try_start_5
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/y;

    if-eqz v0, :cond_e

    .line 132
    iget-object v0, p0, g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;)V

    .line 136
    :cond_e
    invoke-direct {p0}, b()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-direct {p0}, a()[B

    move-result-object v6

    .line 139
    iget-object v0, p0, d:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 140
    const/4 v3, 0x1

    const-string v7, "Absolute_PersistedStore"

    invoke-virtual {v0, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_8b
    .catchall {:try_start_5 .. :try_end_27} :catchall_d4

    move-result-object v8

    .line 141
    :try_start_28
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_192
    .catchall {:try_start_28 .. :try_end_33} :catchall_171

    move-result v0

    if-nez v0, :cond_89

    move v3, v1

    .line 144
    :goto_37
    :try_start_37
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_199
    .catchall {:try_start_37 .. :try_end_3c} :catchall_176

    .line 145
    :try_start_3c
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 146
    const/4 v0, 0x0

    const/16 v10, 0x18

    invoke-virtual {v7, v6, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    const/4 v0, 0x1

    const-string v10, "DESede/CBC/PKCS5Padding"

    invoke-static {v6, v0, v10, v5}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 151
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v7, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_58} :catch_1a0
    .catchall {:try_start_3c .. :try_end_58} :catchall_17c

    .line 152
    :try_start_58
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_1a7
    .catchall {:try_start_58 .. :try_end_5d} :catchall_181

    .line 153
    :try_start_5d
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_1af
    .catchall {:try_start_5d .. :try_end_62} :catchall_185

    .line 155
    const/4 v0, 0x1

    .line 166
    if-eqz v5, :cond_68

    .line 168
    :try_start_65
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_14a
    .catchall {:try_start_65 .. :try_end_68} :catchall_fc

    .line 175
    :cond_68
    :goto_68
    if-eqz v6, :cond_6d

    .line 177
    :try_start_6a
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_16b
    .catchall {:try_start_6a .. :try_end_6d} :catchall_fc

    .line 182
    :cond_6d
    :goto_6d
    if-eqz v7, :cond_72

    .line 184
    :try_start_6f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_16e
    .catchall {:try_start_6f .. :try_end_72} :catchall_fc

    .line 188
    :cond_72
    :goto_72
    if-eqz v8, :cond_7d

    .line 189
    :try_start_74
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_7d
    iget-object v2, p0, g:Lcom/absolute/android/persistservice/y;

    if-eqz v2, :cond_86

    .line 197
    iget-object v2, p0, g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v2, p1, v0, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_86
    .catchall {:try_start_74 .. :try_end_86} :catchall_fc

    :cond_86
    move v0, v1

    .line 162
    :goto_87
    monitor-exit p0

    return v0

    :cond_89
    move v3, v2

    .line 143
    goto :goto_37

    .line 158
    :catch_8b
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    .line 159
    :goto_90
    :try_start_90
    iget-object v7, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to write persisted data to file: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " Exception:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_90 .. :try_end_ae} :catchall_18a

    .line 161
    const/4 v0, 0x0

    .line 166
    if-eqz v3, :cond_b4

    .line 168
    :try_start_b1
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_123
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_fc

    .line 175
    :cond_b4
    :goto_b4
    if-eqz v4, :cond_b9

    .line 177
    :try_start_b6
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b9} :catch_144
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_fc

    .line 182
    :cond_b9
    :goto_b9
    if-eqz v5, :cond_be

    .line 184
    :try_start_bb
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_be} :catch_147
    .catchall {:try_start_bb .. :try_end_be} :catchall_fc

    .line 188
    :cond_be
    :goto_be
    if-eqz v6, :cond_c9

    .line 189
    :try_start_c0
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 190
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_c9
    iget-object v3, p0, g:Lcom/absolute/android/persistservice/y;

    if-eqz v3, :cond_d2

    .line 197
    iget-object v3, p0, g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v3, p1, v0, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_d2
    .catchall {:try_start_c0 .. :try_end_d2} :catchall_fc

    :cond_d2
    move v0, v2

    .line 162
    goto :goto_87

    .line 166
    :catchall_d4
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    :goto_d8
    if-eqz v4, :cond_dd

    .line 168
    :try_start_da
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_dd} :catch_ff
    .catchall {:try_start_da .. :try_end_dd} :catchall_fc

    .line 175
    :cond_dd
    :goto_dd
    if-eqz v6, :cond_e2

    .line 177
    :try_start_df
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e2} :catch_11f
    .catchall {:try_start_df .. :try_end_e2} :catchall_fc

    .line 182
    :cond_e2
    :goto_e2
    if-eqz v7, :cond_e7

    .line 184
    :try_start_e4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_e7} :catch_121
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_fc

    .line 188
    :cond_e7
    :goto_e7
    if-eqz v8, :cond_f2

    .line 189
    :try_start_e9
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_f2
    iget-object v1, p0, g:Lcom/absolute/android/persistservice/y;

    if-eqz v1, :cond_fb

    .line 197
    iget-object v1, p0, g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v1, p1, v9, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V

    .line 166
    :cond_fb
    throw v0
    :try_end_fc
    .catchall {:try_start_e9 .. :try_end_fc} :catchall_fc

    .line 120
    :catchall_fc
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :catch_ff
    move-exception v1

    .line 170
    :try_start_100
    iget-object v3, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in savetoPath(). Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 178
    :catch_11f
    move-exception v1

    goto :goto_e2

    .line 185
    :catch_121
    move-exception v1

    goto :goto_e7

    .line 169
    :catch_123
    move-exception v3

    .line 170
    iget-object v7, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing persisted file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b4

    .line 178
    :catch_144
    move-exception v3

    goto/16 :goto_b9

    .line 185
    :catch_147
    move-exception v3

    goto/16 :goto_be

    .line 169
    :catch_14a
    move-exception v2

    .line 170
    iget-object v4, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing persisted file: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_169
    .catchall {:try_start_100 .. :try_end_169} :catchall_fc

    goto/16 :goto_68

    .line 178
    :catch_16b
    move-exception v2

    goto/16 :goto_6d

    .line 185
    :catch_16e
    move-exception v2

    goto/16 :goto_72

    .line 166
    :catchall_171
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_d8

    :catchall_176
    move-exception v0

    move v2, v3

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_d8

    :catchall_17c
    move-exception v0

    move v2, v3

    move-object v6, v4

    goto/16 :goto_d8

    :catchall_181
    move-exception v0

    move v2, v3

    goto/16 :goto_d8

    :catchall_185
    move-exception v0

    move v2, v3

    move-object v4, v5

    goto/16 :goto_d8

    :catchall_18a
    move-exception v0

    move v2, v1

    move-object v7, v5

    move-object v8, v6

    move-object v6, v4

    move-object v4, v3

    goto/16 :goto_d8

    .line 158
    :catch_192
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v8

    goto/16 :goto_90

    :catch_199
    move-exception v0

    move v1, v3

    move-object v5, v4

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_90

    :catch_1a0
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_90

    :catch_1a7
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    goto/16 :goto_90

    :catch_1af
    move-exception v0

    move v1, v3

    move-object v4, v6

    move-object v3, v5

    move-object v6, v8

    move-object v5, v7

    goto/16 :goto_90
.end method

.method protected declared-synchronized k(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 219
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    :try_start_2
    iget-object v0, p0, d:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 223
    const/4 v2, 0x1

    const-string v3, "Absolute_PersistedStore"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    invoke-direct {p0, p1}, a(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_27
    .catchall {:try_start_2 .. :try_end_1a} :catchall_29

    .line 232
    if-eqz v1, :cond_25

    .line 233
    :try_start_1c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_36

    .line 240
    :cond_25
    monitor-exit p0

    return-void

    .line 228
    :catch_27
    move-exception v0

    .line 229
    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 232
    :catchall_29
    move-exception v0

    if-eqz v1, :cond_35

    .line 233
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_36

    .line 219
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized l(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 330
    monitor-enter p0

    .line 335
    :try_start_3
    invoke-direct {p0}, d()[B

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, "DESede/CBC/PKCS5Padding"

    invoke-direct {p0}, g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 337
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1c} :catch_bf
    .catchall {:try_start_3 .. :try_end_1c} :catchall_b6

    .line 338
    :try_start_1c
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_c3
    .catchall {:try_start_1c .. :try_end_21} :catchall_b9

    .line 339
    :try_start_21
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 340
    if-eqz v0, :cond_2b

    .line 341
    iput-object v0, p0, c:Ljava/util/Hashtable;

    .line 344
    :cond_2b
    if-nez v0, :cond_83

    .line 345
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot read data file in old format."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_35} :catch_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_bb

    .line 348
    :catch_35
    move-exception v0

    move-object v2, v3

    .line 349
    :goto_37
    :try_start_37
    throw v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 352
    :catchall_38
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_3b
    if-eqz v2, :cond_46

    .line 358
    :cond_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v5, :cond_3d

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_46} :catch_5b
    .catchall {:try_start_3d .. :try_end_46} :catchall_4c

    .line 369
    :cond_46
    :goto_46
    if-eqz v3, :cond_4b

    .line 371
    :try_start_48
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_59
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    .line 352
    :cond_4b
    :goto_4b
    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 330
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_8e
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    .line 369
    :cond_52
    :goto_52
    if-eqz v3, :cond_57

    .line 371
    :try_start_54
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_8c
    .catchall {:try_start_54 .. :try_end_57} :catchall_4c

    .line 375
    :cond_57
    :goto_57
    monitor-exit p0

    return-void

    .line 372
    :catch_59
    move-exception v1

    goto :goto_4b

    .line 363
    :catch_5b
    move-exception v1

    .line 364
    :try_start_5c
    iget-object v2, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing persisted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in loadOldVersion(). Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_5c .. :try_end_82} :catchall_4c

    goto :goto_46

    .line 352
    :cond_83
    if-eqz v1, :cond_52

    .line 358
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_8e
    .catchall {:try_start_85 .. :try_end_88} :catchall_4c

    move-result v0

    if-eq v0, v5, :cond_4f

    goto :goto_85

    .line 372
    :catch_8c
    move-exception v0

    goto :goto_57

    .line 363
    :catch_8e
    move-exception v0

    .line 364
    :try_start_8f
    iget-object v1, p0, e:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing persisted file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in loadOldVersion(). Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_8f .. :try_end_b5} :catchall_4c

    goto :goto_52

    .line 352
    :catchall_b6
    move-exception v0

    move-object v3, v2

    goto :goto_3b

    :catchall_b9
    move-exception v0

    goto :goto_3b

    :catchall_bb
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3b

    .line 348
    :catch_bf
    move-exception v0

    move-object v1, v2

    goto/16 :goto_37

    :catch_c3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_37
.end method
