.class Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field mWifiEnabled:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    .line 184
    iput-object p3, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    .line 185
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 526
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 529
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 530
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 533
    :cond_0
    return-object v1
.end method


# virtual methods
.method CheckWifiState()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 391
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 394
    .local v2, "isWifiEnabled":Z
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 395
    .local v1, "isHotspotEnabled":Z
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    .line 396
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "loopTimeout":I
    if-nez v2, :cond_4

    .line 399
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 400
    :cond_1
    if-nez v2, :cond_2

    .line 402
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 403
    add-int/lit8 v3, v3, 0x1

    .line 404
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 405
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 413
    :cond_2
    if-eqz v2, :cond_3

    .line 414
    const-string v4, "WifiBackupRestore"

    const-string v5, ">>>>> WIFI ON <<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 421
    :goto_0
    return v4

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v4, v5

    .line 410
    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v4, "WifiBackupRestore"

    const-string v6, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 418
    goto :goto_0

    :cond_4
    move v4, v6

    .line 421
    goto :goto_0
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$002(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 640
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 641
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 642
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 644
    .local v1, "ivSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    const/16 v3, 0x10

    new-array v3, v3, [B

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$102(Lcom/android/settings/wifi/WifiBackupRestore;[B)[B

    .line 646
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100(Lcom/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 647
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$202(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 653
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiBackupRestore;->access$200(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 654
    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$202(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outFile"    # Ljava/lang/String;

    .prologue
    .line 565
    const/4 v8, 0x0

    .line 566
    .local v8, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 567
    .local v10, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 568
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 569
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 572
    .local v13, "ret":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v14, :cond_5

    .line 573
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .local v6, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v5    # "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 581
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 582
    .local v12, "readcount":I
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 583
    .local v1, "buffer":[B
    :goto_1
    if-eqz v8, :cond_6

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    .line 584
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 586
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 588
    const/4 v13, -0x1

    .line 591
    if-eqz v10, :cond_1

    .line 592
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_1
    if-eqz v5, :cond_2

    .line 594
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 595
    :cond_2
    if-eqz v8, :cond_3

    .line 596
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 597
    :cond_3
    if-eqz v3, :cond_4

    .line 598
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 604
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return v13

    .line 576
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 577
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 578
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .local v4, "fiTemp":Ljava/io/FileInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    .line 579
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v10    # "os":Ljava/io/OutputStream;
    .local v11, "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .restart local v3    # "fiTemp":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 591
    .restart local v1    # "buffer":[B
    .restart local v12    # "readcount":I
    :cond_6
    if-eqz v10, :cond_7

    .line 592
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_7
    if-eqz v5, :cond_8

    .line 594
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 595
    :cond_8
    if-eqz v8, :cond_9

    .line 596
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 597
    :cond_9
    if-eqz v3, :cond_4

    .line 598
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 599
    :catch_1
    move-exception v7

    .line 600
    .local v7, "ioe":Ljava/io/IOException;
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v13, -0x1

    .line 603
    goto :goto_3

    .line 599
    .end local v1    # "buffer":[B
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v12    # "readcount":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 600
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v13, -0x1

    .line 603
    goto :goto_3

    .line 590
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 591
    :goto_4
    if-eqz v10, :cond_a

    .line 592
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_a
    if-eqz v5, :cond_b

    .line 594
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 595
    :cond_b
    if-eqz v8, :cond_c

    .line 596
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 597
    :cond_c
    if-eqz v3, :cond_d

    .line 598
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 602
    :cond_d
    :goto_5
    throw v14

    .line 599
    :catch_3
    move-exception v7

    .line 600
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v15, "WifiBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v13, -0x1

    goto :goto_5

    .line 590
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v5    # "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .restart local v4    # "fiTemp":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v14

    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .restart local v3    # "fiTemp":Ljava/io/FileInputStream;
    goto :goto_4

    .line 586
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v5    # "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .restart local v4    # "fiTemp":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .restart local v3    # "fiTemp":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 617
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$002(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 620
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 621
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 622
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 623
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 625
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    if-ne v2, v4, :cond_0

    .line 626
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateEncryptSalt()[B

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$102(Lcom/android/settings/wifi/WifiBackupRestore;[B)[B

    .line 627
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100(Lcom/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 628
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$202(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 633
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$200(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 634
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore;->access$202(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 660
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 661
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 663
    return-object v0
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 669
    const/16 v1, 0x3e8

    .line 670
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 671
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 673
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 674
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B
    invoke-static {v6}, Lcom/android/settings/wifi/WifiBackupRestore;->access$100(Lcom/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 675
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 677
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 608
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 609
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 610
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 611
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 613
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 428
    .local v1, "ret":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 429
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wifi_wpaconf.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "xmlPath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 433
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 434
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v6, "wpa_supplicant.conf"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    if-eqz v4, :cond_0

    .line 452
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 458
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .end local v5    # "xmlPath":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return v1

    .line 453
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "xmlPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    const/4 v1, -0x1

    move-object v3, v4

    .line 457
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 446
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "xmlPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "WifiBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeXML exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    const/4 v1, -0x1

    .line 451
    if-eqz v3, :cond_1

    .line 452
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 453
    :catch_2
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    const/4 v1, -0x1

    .line 457
    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 451
    :goto_2
    if-eqz v3, :cond_2

    .line 452
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 456
    :cond_2
    :goto_3
    throw v6

    .line 453
    :catch_3
    move-exception v0

    .line 454
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    const/4 v1, -0x1

    goto :goto_3

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "xmlPath":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 446
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public permissionCheck()Z
    .locals 5

    .prologue
    .line 681
    # getter for: Lcom/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/WifiBackupRestore;->access$300()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 682
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 683
    const/4 v4, 0x0

    .line 686
    .end local v3    # "permission":Ljava/lang/String;
    :goto_1
    return v4

    .line 681
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 17
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 462
    const/4 v11, 0x0

    .line 463
    .local v11, "ret":I
    const/4 v5, 0x0

    .line 465
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 466
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 467
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 469
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "wifi_wpaconf.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 472
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 473
    .local v9, "parserEvent":I
    const/4 v7, 0x0

    .line 475
    .local v7, "initem":Z
    const-string v13, ""

    .line 476
    .local v13, "sTagName":Ljava/lang/String;
    const-string v2, ""

    .line 478
    .local v2, "eTagName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v9, v14, :cond_7

    .line 479
    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    .line 480
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 481
    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 482
    :cond_0
    const/4 v7, 0x1

    .line 501
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 484
    :cond_2
    const/4 v14, 0x4

    if-ne v9, v14, :cond_5

    .line 485
    if-eqz v7, :cond_4

    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    .line 487
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] model : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 503
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v13    # "sTagName":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v5, v6

    .line 504
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .local v10, "re":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_2
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "runtimeException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    const/4 v11, -0x1

    .line 511
    if-eqz v5, :cond_3

    .line 512
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v10    # "re":Ljava/lang/RuntimeException;
    :cond_3
    :goto_3
    move v12, v11

    .line 517
    .end local v11    # "ret":I
    .local v12, "ret":I
    :goto_4
    return v12

    .line 488
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v12    # "ret":I
    .restart local v2    # "eTagName":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "initem":Z
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parserEvent":I
    .restart local v11    # "ret":I
    .restart local v13    # "sTagName":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    .line 490
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] xmlConf : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 506
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v13    # "sTagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v5, v6

    .line 507
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :goto_5
    :try_start_5
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read XML Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    const/4 v11, -0x1

    .line 511
    if-eqz v5, :cond_3

    .line 512
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 513
    :catch_2
    move-exception v4

    .local v4, "fe":Ljava/lang/Exception;
    move v12, v11

    .line 514
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto :goto_4

    .line 492
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v12    # "ret":I
    .restart local v2    # "eTagName":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "initem":Z
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parserEvent":I
    .restart local v11    # "ret":I
    .restart local v13    # "sTagName":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x3

    if-ne v9, v14, :cond_1

    .line 493
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 494
    if-eqz v7, :cond_6

    const-string v14, "model"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 495
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 496
    :cond_6
    if-eqz v7, :cond_1

    const-string v14, "conf"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v14

    if-eqz v14, :cond_1

    .line 497
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 511
    :cond_7
    if-eqz v6, :cond_8

    .line 512
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    .line 515
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 513
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .restart local v4    # "fe":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    move v12, v11

    .line 514
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 513
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v7    # "initem":Z
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "parserEvent":I
    .end local v12    # "ret":I
    .end local v13    # "sTagName":Ljava/lang/String;
    .restart local v10    # "re":Ljava/lang/RuntimeException;
    .restart local v11    # "ret":I
    :catch_4
    move-exception v4

    .restart local v4    # "fe":Ljava/lang/Exception;
    move v12, v11

    .line 514
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 510
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v10    # "re":Ljava/lang/RuntimeException;
    .end local v12    # "ret":I
    .restart local v11    # "ret":I
    :catchall_0
    move-exception v14

    .line 511
    :goto_6
    if-eqz v5, :cond_9

    .line 512
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 514
    :cond_9
    throw v14

    .line 513
    :catch_5
    move-exception v4

    .restart local v4    # "fe":Ljava/lang/Exception;
    move v12, v11

    .line 514
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 510
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v12    # "ret":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "ret":I
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 506
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 503
    :catch_7
    move-exception v10

    goto/16 :goto_2
.end method

.method public run()V
    .locals 28

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 189
    const-string v24, "WifiBackupRestore"

    const-string v25, "intent is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "SAVE_PATH"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 195
    .local v21, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "ACTION"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 196
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SESSION_KEY"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SOURCE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mExportSessionTime:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SECURITY_LEVEL"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    .line 202
    const-string v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[BACKUP] path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", action : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mSource : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v24

    if-nez v24, :cond_2

    .line 207
    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 211
    :cond_2
    if-nez v6, :cond_d

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 213
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 218
    :cond_3
    const-string v24, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 219
    .local v12, "confSize":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_4

    .line 220
    const-string v24, "WifiBackupRestore"

    const-string v25, "There is no conf file"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 225
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    .line 226
    .local v10, "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v10, :cond_5

    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_6

    .line 227
    :cond_5
    const-string v24, "WifiBackupRestore"

    const-string v25, "There is no networks to backup"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 235
    :cond_6
    :try_start_0
    new-instance v23, Landroid/os/StatFs;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 236
    .local v23, "stat":Landroid/os/StatFs;
    if-nez v23, :cond_7

    .line 237
    const-string v24, "WifiBackupRestore"

    const-string v25, "checking memory fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v23    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v15

    .line 242
    .local v15, "e":Ljava/lang/Exception;
    const-string v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 246
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 247
    .local v8, "availableBlocks":J
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v4, v0

    .line 248
    .local v4, "BlockSizeInBytes":J
    mul-long v18, v8, v4

    .line 249
    .local v18, "freeSpaceInBytes":J
    cmp-long v24, v18, v12

    if-gez v24, :cond_8

    .line 250
    const-string v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "freeSpaceInBytes : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", confSize : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v24, 0x1

    const/16 v25, 0x2

    long-to-int v0, v12

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 254
    :cond_8
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 255
    .local v20, "msg":Landroid/os/Message;
    const/16 v24, 0x3d

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 257
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v7, "args":Landroid/os/Bundle;
    const-string v24, "OPTION"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v24, "PATH"

    const-string v25, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_9

    .line 263
    const-string v24, "WifiBackupRestore"

    const-string v25, "BACK UP !!!!!!!!!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v24, "/data/misc/wifi/temp.conf"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "wpa_supplicant.conf"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 272
    .local v22, "ret":I
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 273
    const-string v24, "WifiBackupRestore"

    const-string v25, "encrypt fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 265
    .end local v22    # "ret":I
    :cond_9
    const-string v24, "WifiBackupRestore"

    const-string v25, "Failed to write networks"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 278
    .restart local v22    # "ret":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v22

    .line 279
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 280
    const-string v24, "WifiBackupRestore"

    const-string v25, "makeXML fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 286
    :cond_b
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 287
    .local v14, "deleteMsg":Landroid/os/Message;
    const/16 v24, 0x104

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 288
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v11, "deleteArgs":Landroid/os/Bundle;
    const-string v24, "PATH"

    const-string v25, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-object v11, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_c

    .line 293
    const-string v24, "WifiBackupRestore"

    const-string v25, "Delete temp.conf file successful."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_1
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 295
    :cond_c
    const-string v24, "WifiBackupRestore"

    const-string v25, "Failed to delete temp.conf"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v4    # "BlockSizeInBytes":J
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "availableBlocks":J
    .end local v10    # "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v12    # "confSize":J
    .end local v14    # "deleteMsg":Landroid/os/Message;
    .end local v18    # "freeSpaceInBytes":J
    .end local v20    # "msg":Landroid/os/Message;
    .end local v22    # "ret":I
    .end local v23    # "stat":Landroid/os/StatFs;
    :cond_d
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v6, v0, :cond_0

    .line 303
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "action":I
    .end local v21    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "SAVE_PATH"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 307
    .restart local v21    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "ACTION"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 308
    .restart local v6    # "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SESSION_KEY"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SOURCE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string v26, "SECURITY_LEVEL"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    .line 313
    const-string v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[RESTORE] path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", action : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mSource : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v24

    if-nez v24, :cond_f

    .line 318
    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 322
    :cond_f
    if-nez v6, :cond_16

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 324
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 329
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v22

    .line 331
    .restart local v22    # "ret":I
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 332
    const-string v24, "WifiBackupRestore"

    const-string v25, "xml parsing error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 337
    :cond_11
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_14

    .line 339
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 340
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 341
    const-string v24, "WifiBackupRestore"

    const-string v25, "decrypt fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 346
    :cond_12
    new-instance v16, Ljava/io/File;

    const-string v24, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v16, "f":Ljava/io/File;
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 348
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 349
    .restart local v20    # "msg":Landroid/os/Message;
    const/16 v24, 0x3d

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 351
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 352
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string v24, "OPTION"

    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v24, "PATH"

    const-string v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_13

    .line 357
    const-string v24, "WifiBackupRestore"

    const-string v25, "RESTORE !!!!!!!!!! [Not replace]"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 370
    .restart local v14    # "deleteMsg":Landroid/os/Message;
    const/16 v24, 0x104

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 371
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 372
    .restart local v11    # "deleteArgs":Landroid/os/Bundle;
    const-string v24, "PATH"

    const-string v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-object v11, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_15

    .line 376
    const-string v24, "WifiBackupRestore"

    const-string v25, "Delete temp.conf file successful."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_2
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 359
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v14    # "deleteMsg":Landroid/os/Message;
    :cond_13
    const-string v24, "WifiBackupRestore"

    const-string v25, "Failed to read networks"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 364
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "msg":Landroid/os/Message;
    :cond_14
    const-string v24, "WifiBackupRestore"

    const-string v25, "can\'t read file"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 378
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v11    # "deleteArgs":Landroid/os/Bundle;
    .restart local v14    # "deleteMsg":Landroid/os/Message;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v20    # "msg":Landroid/os/Message;
    :cond_15
    const-string v24, "WifiBackupRestore"

    const-string v25, "Failed to delete temp.conf"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 382
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v14    # "deleteMsg":Landroid/os/Message;
    .end local v16    # "f":Ljava/io/File;
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v20    # "msg":Landroid/os/Message;
    .end local v22    # "ret":I
    :cond_16
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v6, v0, :cond_0

    .line 385
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0
.end method

.method sendResponse(III)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "errorCode"    # I
    .param p3, "reqSize"    # I

    .prologue
    .line 537
    const-string v1, "WifiBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isCanceled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-boolean v1, Lcom/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    if-eqz v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v1, :cond_3

    .line 544
    const-string v1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    :cond_2
    :goto_1
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v1, "SmartSwitch"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 560
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 547
    const-string v1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method
