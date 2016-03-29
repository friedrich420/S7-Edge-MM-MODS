.class Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    .line 202
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 685
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 688
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 689
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 692
    :cond_0
    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model name.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-object v1
.end method

.method private loadWifiApConfig(Ljava/lang/String;)Z
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x8

    .line 467
    const-string v9, "WifiApBackupRestore"

    const-string v10, "loadWifiApConfig.."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v5, 0x0

    .line 469
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 470
    .local v7, "result":Z
    const/4 v8, 0x3

    .line 473
    .local v8, "version":I
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 474
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 475
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 476
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 478
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 479
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    iput-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 480
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 481
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v10, 0xe

    if-le v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v9, v9, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-nez v9, :cond_0

    .line 482
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 484
    :cond_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 485
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 486
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v9, v9, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v10, 0x15

    if-le v9, v10, :cond_6

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v9, :cond_1

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v9, v11, :cond_6

    :cond_1
    const-string v9, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 488
    const/16 v9, 0x8

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 491
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 492
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 493
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 494
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 495
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 496
    .local v0, "authType":I
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    .line 497
    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 500
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v9, v9, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 501
    const-string v9, "WifiApBackupRestore"

    const-string v10, "Both models are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 504
    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result of setWifiApConfiguration.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    if-eqz v6, :cond_9

    .line 513
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 519
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :cond_5
    :goto_1
    return v7

    .line 489
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :cond_6
    :try_start_3
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v9, :cond_2

    .line 490
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 505
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 506
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v4, "ignore":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_2
    :try_start_4
    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v9, 0x3

    if-ge v8, v9, :cond_7

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadApConfigurationOldVer(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 511
    :cond_7
    if-eqz v5, :cond_5

    .line 513
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 514
    :catch_1
    move-exception v3

    .line 515
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 514
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 516
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 511
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_8

    .line 513
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 516
    :cond_8
    :goto_4
    throw v9

    .line 514
    :catch_3
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in loadWifiApConfig.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 511
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 505
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_4
    move-exception v4

    goto :goto_2

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :cond_9
    move-object v5, v6

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 837
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$302(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 839
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 841
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 842
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 844
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 845
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v4, 0x10

    new-array v4, v4, [B

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$202(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 846
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 853
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 854
    new-instance v3, Ljavax/crypto/CipherInputStream;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 849
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .restart local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outFile"    # Ljava/lang/String;

    .prologue
    .line 739
    const/4 v8, 0x0

    .line 740
    .local v8, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 741
    .local v10, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 742
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 743
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 746
    .local v13, "ret":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v14, :cond_5

    .line 747
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 749
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .local v6, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v5    # "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 755
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 756
    .local v12, "readcount":I
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 757
    .local v1, "buffer":[B
    :goto_1
    if-eqz v8, :cond_6

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    .line 758
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 760
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :catch_0
    move-exception v2

    .line 761
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v14, "WifiApBackupRestore"

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

    .line 762
    const/4 v13, -0x1

    .line 765
    if-eqz v10, :cond_1

    .line 766
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 767
    :cond_1
    if-eqz v5, :cond_2

    .line 768
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 769
    :cond_2
    if-eqz v8, :cond_3

    .line 770
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 771
    :cond_3
    if-eqz v3, :cond_4

    .line 772
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    const-string v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Everything OK?0:1 - ret"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v13

    .line 750
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 751
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 752
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .local v4, "fiTemp":Ljava/io/FileInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    .line 753
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

    .line 765
    .restart local v1    # "buffer":[B
    .restart local v12    # "readcount":I
    :cond_6
    if-eqz v10, :cond_7

    .line 766
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 767
    :cond_7
    if-eqz v5, :cond_8

    .line 768
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 769
    :cond_8
    if-eqz v8, :cond_9

    .line 770
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 771
    :cond_9
    if-eqz v3, :cond_4

    .line 772
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 773
    :catch_1
    move-exception v7

    .line 774
    .local v7, "ioe":Ljava/io/IOException;
    const-string v14, "WifiApBackupRestore"

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

    .line 775
    const/4 v13, -0x1

    .line 777
    goto :goto_3

    .line 773
    .end local v1    # "buffer":[B
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v12    # "readcount":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 774
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v14, "WifiApBackupRestore"

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

    .line 775
    const/4 v13, -0x1

    .line 777
    goto/16 :goto_3

    .line 764
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 765
    :goto_4
    if-eqz v10, :cond_a

    .line 766
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 767
    :cond_a
    if-eqz v5, :cond_b

    .line 768
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 769
    :cond_b
    if-eqz v8, :cond_c

    .line 770
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 771
    :cond_c
    if-eqz v3, :cond_d

    .line 772
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 776
    :cond_d
    :goto_5
    throw v14

    .line 773
    :catch_3
    move-exception v7

    .line 774
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v15, "WifiApBackupRestore"

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

    .line 775
    const/4 v13, -0x1

    goto :goto_5

    .line 764
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

    .line 760
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
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 814
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$302(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 816
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 817
    .local v0, "iv":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 818
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 821
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 823
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    if-ne v3, v5, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateEncryptSalt()[B

    move-result-object v4

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$202(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 825
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 831
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 832
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 828
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .restart local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
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
    .line 794
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 795
    .local v0, "sr":Ljava/security/SecureRandom;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v2, 0x10

    new-array v2, v2, [B

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$202(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 796
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 797
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    return-object v1
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
    .line 801
    const/16 v1, 0x3e8

    .line 802
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 803
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v6, v6, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 805
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 806
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B
    invoke-static {v6}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 807
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 809
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

    .line 784
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 785
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v2, v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 786
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 787
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 789
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$102(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 790
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$100()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 680
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method loadApConfigurationOldVer(Ljava/lang/String;)Z
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    .line 523
    const/4 v5, 0x0

    .line 524
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 527
    .local v8, "result":Z
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 528
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 529
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 530
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 531
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 532
    .local v9, "version":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 533
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    iput-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 534
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 535
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v11, 0xe

    if-le v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v10, v10, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-nez v10, :cond_0

    .line 536
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 538
    :cond_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 539
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 540
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v10, v10, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v11, 0x15

    if-le v10, v11, :cond_6

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v10, :cond_1

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v10, v12, :cond_6

    :cond_1
    const-string v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 542
    const/16 v10, 0x8

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 545
    :cond_2
    :goto_0
    const-string v10, "0"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 546
    .local v7, "newConfigNum":I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_7

    .line 547
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 548
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 554
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 555
    .local v0, "authType":I
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    .line 556
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 557
    const-string v10, "WifiApBackupRestore"

    const-string v11, " conf changed to wpa2 from wpa"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_2
    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 564
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    .line 565
    const-string v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Result of setWifiApConfiguration from OldVer.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    if-eqz v6, :cond_a

    .line 571
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 577
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "newConfigNum":I
    .end local v9    # "version":I
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :cond_5
    :goto_3
    return v8

    .line 543
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "version":I
    :cond_6
    :try_start_3
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v10, :cond_2

    .line 544
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 566
    .end local v9    # "version":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 567
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v4, "ignore":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_4
    :try_start_4
    const-string v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 569
    if-eqz v5, :cond_5

    .line 571
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 572
    :catch_1
    move-exception v3

    .line 573
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 549
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "newConfigNum":I
    .restart local v9    # "version":I
    :cond_7
    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    .line 550
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 551
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 552
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 569
    .end local v7    # "newConfigNum":I
    .end local v9    # "version":I
    :catchall_0
    move-exception v10

    move-object v5, v6

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_5
    if-eqz v5, :cond_8

    .line 571
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 574
    :cond_8
    :goto_6
    throw v10

    .line 559
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "newConfigNum":I
    .restart local v9    # "version":I
    :cond_9
    :try_start_8
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 572
    :catch_2
    move-exception v3

    .line 573
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 574
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    .line 572
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "newConfigNum":I
    .end local v9    # "version":I
    :catch_3
    move-exception v3

    .line 573
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v11, "WifiApBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception is.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 569
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_5

    .line 566
    :catch_4
    move-exception v4

    goto/16 :goto_4

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "newConfigNum":I
    .restart local v9    # "version":I
    :cond_a
    move-object v5, v6

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 585
    .local v1, "ret":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 586
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

    .line 587
    .local v5, "xmlPath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 590
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 591
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    const-string v6, "softap.conf"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    if-eqz v4, :cond_0

    .line 609
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 615
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .end local v5    # "xmlPath":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return v1

    .line 610
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "xmlPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    const/4 v1, -0x1

    move-object v3, v4

    .line 614
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 603
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "xmlPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "WifiApBackupRestore"

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

    .line 605
    const/4 v1, -0x1

    .line 608
    if-eqz v3, :cond_1

    .line 609
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 610
    :catch_2
    move-exception v0

    .line 611
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    const/4 v1, -0x1

    .line 614
    goto :goto_0

    .line 607
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 608
    :goto_2
    if-eqz v3, :cond_2

    .line 609
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 613
    :cond_2
    :goto_3
    throw v6

    .line 610
    :catch_3
    move-exception v0

    .line 611
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    const/4 v1, -0x1

    goto :goto_3

    .line 607
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

    .line 603
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
    .line 730
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->access$000()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 731
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    const/4 v4, 0x0

    .line 735
    .end local v3    # "permission":Ljava/lang/String;
    :goto_1
    return v4

    .line 730
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 17
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 619
    const/4 v11, 0x0

    .line 620
    .local v11, "ret":I
    const/4 v5, 0x0

    .line 622
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 623
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 624
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 626
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

    .line 627
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 629
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 630
    .local v9, "parserEvent":I
    const/4 v7, 0x0

    .line 632
    .local v7, "initem":Z
    const-string v13, ""

    .line 633
    .local v13, "sTagName":Ljava/lang/String;
    const-string v2, ""

    .line 635
    .local v2, "eTagName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v9, v14, :cond_7

    .line 636
    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    .line 637
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 638
    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 639
    :cond_0
    const/4 v7, 0x1

    .line 660
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 641
    :cond_2
    const/4 v14, 0x4

    if-ne v9, v14, :cond_5

    .line 642
    if-eqz v7, :cond_4

    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    .line 645
    const-string v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] model : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

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

    .line 662
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v13    # "sTagName":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v5, v6

    .line 663
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .local v10, "re":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_2
    const-string v14, "WifiApBackupRestore"

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

    .line 664
    const/4 v11, -0x1

    .line 670
    if-eqz v5, :cond_3

    .line 671
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v10    # "re":Ljava/lang/RuntimeException;
    :cond_3
    :goto_3
    move v12, v11

    .line 676
    .end local v11    # "ret":I
    .local v12, "ret":I
    :goto_4
    return v12

    .line 646
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

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    .line 649
    const-string v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] xmlConf : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

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

    .line 665
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v13    # "sTagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v5, v6

    .line 666
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :goto_5
    :try_start_5
    const-string v14, "WifiApBackupRestore"

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

    .line 667
    const/4 v11, -0x1

    .line 670
    if-eqz v5, :cond_3

    .line 671
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 672
    :catch_2
    move-exception v4

    .local v4, "fe":Ljava/lang/Exception;
    move v12, v11

    .line 673
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto :goto_4

    .line 651
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

    .line 652
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 653
    if-eqz v7, :cond_6

    const-string v14, "model"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 654
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 655
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

    .line 656
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 670
    :cond_7
    if-eqz v6, :cond_8

    .line 671
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    .line 674
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 672
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .restart local v4    # "fe":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    move v12, v11

    .line 673
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 672
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

    .line 673
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 669
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v10    # "re":Ljava/lang/RuntimeException;
    .end local v12    # "ret":I
    .restart local v11    # "ret":I
    :catchall_0
    move-exception v14

    .line 670
    :goto_6
    if-eqz v5, :cond_9

    .line 671
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 673
    :cond_9
    throw v14

    .line 672
    :catch_5
    move-exception v4

    .restart local v4    # "fe":Ljava/lang/Exception;
    move v12, v11

    .line 673
    .end local v11    # "ret":I
    .restart local v12    # "ret":I
    goto/16 :goto_4

    .line 669
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

    .line 665
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 662
    :catch_7
    move-exception v10

    goto/16 :goto_2
.end method

.method public run()V
    .locals 24

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 206
    const-string v20, "WifiApBackupRestore"

    const-string v21, "intent is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "SAVE_PATH"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 212
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SESSION_KEY"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SECURITY_LEVEL"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    .line 217
    const-string v20, "WifiApBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[BACKUP] path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", action : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mSource : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " sessionTime : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " securityLevel : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v20

    if-nez v20, :cond_2

    .line 222
    const-string v20, "WifiApBackupRestore"

    const-string v21, "Permission Error."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v20, 0x1

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 227
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 232
    :cond_3
    const-string v20, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 233
    .local v8, "confSize":J
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_4

    .line 235
    const-string v20, "WifiApBackupRestore"

    const-string v21, "There is no conf file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-nez v20, :cond_5

    .line 242
    const-string v20, "WifiApBackupRestore"

    const-string v21, "There is no networks to backup"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 250
    :cond_5
    :try_start_0
    new-instance v19, Landroid/os/StatFs;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .local v19, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v6, v0

    .line 258
    .local v6, "availableBlocks":J
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v4, v0

    .line 259
    .local v4, "BlockSizeInBytes":J
    mul-long v12, v6, v4

    .line 260
    .local v12, "freeSpaceInBytes":J
    cmp-long v20, v12, v8

    if-gez v20, :cond_6

    .line 262
    const-string v20, "WifiApBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "freeSpaceInBytes : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", confSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v20, 0x1

    const/16 v21, 0x2

    long-to-int v0, v8

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 251
    .end local v4    # "BlockSizeInBytes":J
    .end local v6    # "availableBlocks":J
    .end local v12    # "freeSpaceInBytes":J
    .end local v19    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v10

    .line 253
    .local v10, "e":Ljava/lang/Exception;
    const-string v20, "WifiApBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 268
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "BlockSizeInBytes":J
    .restart local v6    # "availableBlocks":J
    .restart local v12    # "freeSpaceInBytes":J
    .restart local v19    # "stat":Landroid/os/StatFs;
    :cond_6
    new-instance v11, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "softap.conf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v11, "f":Ljava/io/File;
    const-string v20, "/data/misc/wifi/softap.conf"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "softap.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 275
    .local v18, "ret":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 277
    const-string v20, "WifiApBackupRestore"

    const-string v21, "encrypt fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 283
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->makeXML(Ljava/lang/String;)I

    move-result v18

    .line 284
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 286
    const-string v20, "WifiApBackupRestore"

    const-string v21, "makeXML fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 290
    :cond_8
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 292
    .end local v4    # "BlockSizeInBytes":J
    .end local v6    # "availableBlocks":J
    .end local v8    # "confSize":J
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "freeSpaceInBytes":J
    .end local v18    # "ret":I
    .end local v19    # "stat":Landroid/os/StatFs;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 293
    const-string v20, "WifiApBackupRestore"

    const-string v21, "Action is CANCEL"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :cond_a
    const-string v20, "WifiApBackupRestore"

    const-string v21, "Sending Response FAIL"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 300
    .end local v17    # "path":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "SAVE_PATH"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 302
    .restart local v17    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SESSION_KEY"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SECURITY_LEVEL"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    .line 305
    const-string v20, "WifiApBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[RESTORE] path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", action : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mSource : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v20

    if-nez v20, :cond_c

    .line 310
    const-string v20, "WifiApBackupRestore"

    const-string v21, "PErmission ERROR"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/16 v20, 0x1

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 315
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 319
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v14

    .line 321
    .local v14, "isHotspotEnabled":Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_f

    .line 322
    const-string v20, "WifiApBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setWifiApEnabled ..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 324
    const/4 v15, 0x0

    .line 325
    .local v15, "loopTimeout":I
    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_f

    .line 327
    const-wide/16 v20, 0x3e8

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 328
    add-int/lit8 v15, v15, 0x1

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 330
    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v15, v0, :cond_e

    .line 342
    .end local v15    # "loopTimeout":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->readXML(Ljava/lang/String;)I

    move-result v18

    .line 344
    .restart local v18    # "ret":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 345
    const-string v20, "WifiApBackupRestore"

    const-string v21, "xml parsing error"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 333
    .end local v16    # "modelName":Ljava/lang/String;
    .end local v18    # "ret":I
    .restart local v15    # "loopTimeout":I
    :catch_1
    move-exception v10

    .line 334
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string v20, "WifiApBackupRestore"

    const-string v21, "Exception while turning off MHS"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 351
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v15    # "loopTimeout":I
    .restart local v16    # "modelName":Ljava/lang/String;
    .restart local v18    # "ret":I
    :cond_10
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_13

    .line 353
    new-instance v11, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "temp.conf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v11    # "f":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "temp.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 355
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 357
    const-string v20, "WifiApBackupRestore"

    const-string v21, "decrypt fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 362
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "temp.conf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadWifiApConfig(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 363
    const-string v20, "WifiApBackupRestore"

    const-string v21, "WifiConfig loaded fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 367
    :cond_12
    const-string v20, "WifiApBackupRestore"

    const-string v21, "WifiConfig loaded success"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 371
    .end local v11    # "f":Ljava/io/File;
    :cond_13
    const-string v20, "WifiApBackupRestore"

    const-string v21, "can\'t read file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 378
    .end local v14    # "isHotspotEnabled":Z
    .end local v16    # "modelName":Ljava/lang/String;
    .end local v18    # "ret":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 381
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0
.end method

.method sendResponse(III)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "errorCode"    # I
    .param p3, "reqSize"    # I

    .prologue
    .line 698
    const-string v2, "WifiApBackupRestore"

    const-string v3, "sendResponse.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isCancelled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    if-eqz v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v2, :cond_3

    .line 706
    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v2, "EXPORT_SESSION_TIME"

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    :cond_2
    :goto_1
    const-string v2, "RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v2, "ERR_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    const-string v2, "REQ_SIZE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string v2, "SOURCE"

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v2, "SmartSwitch"

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string v3, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 723
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 724
    .local v1, "isHotspotEnabled":Z
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    .line 725
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    if-nez v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 708
    .end local v1    # "isHotspotEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 709
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 719
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method
