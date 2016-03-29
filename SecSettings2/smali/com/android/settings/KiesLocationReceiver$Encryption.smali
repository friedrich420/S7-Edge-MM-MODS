.class Lcom/android/settings/KiesLocationReceiver$Encryption;
.super Ljava/lang/Object;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Encryption"
.end annotation


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mSalt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private securityPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/KiesLocationReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/KiesLocationReceiver;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->this$0:Lcom/android/settings/KiesLocationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/KiesLocationReceiver;Lcom/android/settings/KiesLocationReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/KiesLocationReceiver;
    .param p2, "x1"    # Lcom/android/settings/KiesLocationReceiver$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/android/settings/KiesLocationReceiver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KiesLocationReceiver$Encryption;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KiesLocationReceiver$Encryption;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/KiesLocationReceiver$Encryption;->encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KiesLocationReceiver$Encryption;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/KiesLocationReceiver$Encryption;->decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 12
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "decryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "fis":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 559
    .local v3, "fos":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 562
    .local v6, "tempInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 563
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local v6    # "tempInputStream":Ljava/io/FileInputStream;
    .local v7, "tempInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-direct {p0, v7, p3}, Lcom/android/settings/KiesLocationReceiver$Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v2

    .line 565
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 566
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 567
    .local v5, "readCount":I
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 568
    .local v0, "buffer":[B
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 569
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 572
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "tempInputStream":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 573
    .end local v4    # "fos":Ljava/io/OutputStream;
    .end local v5    # "readCount":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    if-eqz v3, :cond_0

    .line 577
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 583
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 585
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 591
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 593
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 599
    :cond_2
    :goto_4
    return-object p2

    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "readCount":I
    .restart local v7    # "tempInputStream":Ljava/io/FileInputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "tempInputStream":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 575
    .end local v0    # "buffer":[B
    .end local v4    # "fos":Ljava/io/OutputStream;
    .end local v5    # "readCount":I
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_4
    if-eqz v3, :cond_5

    .line 577
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 583
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 585
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 591
    :cond_6
    :goto_6
    if-eqz v6, :cond_2

    .line 593
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 594
    :catch_1
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 578
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 579
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 579
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 595
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v3, :cond_7

    .line 577
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 583
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 585
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 591
    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    .line 593
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 596
    :cond_9
    :goto_a
    throw v8

    .line 578
    :catch_7
    move-exception v1

    .line 579
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 595
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "tempInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "tempInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v6    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "readCount":I
    .restart local v7    # "tempInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "tempInputStream":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_7

    .line 572
    .end local v5    # "readCount":I
    :catch_a
    move-exception v1

    goto :goto_1

    .end local v6    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "tempInputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v6, v7

    .end local v7    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "tempInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 611
    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 612
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 613
    .local v1, "readLength":I
    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 614
    const-string v3, "KiesLocationReceiver"

    const-string v4, "read bytes not equals to block size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 617
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 618
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    .line 619
    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 620
    if-eq v1, v5, :cond_1

    .line 621
    const-string v3, "KiesLocationReceiver"

    const-string v4, "read bytes not equals to 16"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 627
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 628
    new-instance v3, Ljavax/crypto/CipherInputStream;

    iget-object v4, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 624
    :cond_3
    if-nez p2, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 12
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "encryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, "fis":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 480
    .local v4, "fos":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 483
    .local v6, "tempOutputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 484
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    .end local v2    # "fis":Ljava/io/InputStream;
    .local v3, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 486
    .end local v6    # "tempOutputStream":Ljava/io/OutputStream;
    .local v7, "tempOutputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-direct {p0, v7, p3}, Lcom/android/settings/KiesLocationReceiver$Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object v4

    .line 487
    const/4 v5, 0x0

    .line 488
    .local v5, "readCount":I
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 489
    .local v0, "buffer":[B
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 490
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 493
    .end local v0    # "buffer":[B
    .end local v5    # "readCount":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "tempOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 494
    .end local v3    # "fis":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    if-eqz v2, :cond_0

    .line 498
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 506
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 512
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 514
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 520
    :cond_2
    :goto_4
    return-object p2

    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v6    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v5    # "readCount":I
    .restart local v7    # "tempOutputStream":Ljava/io/OutputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "tempOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 496
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/InputStream;
    .end local v5    # "readCount":I
    .restart local v2    # "fis":Ljava/io/InputStream;
    :cond_4
    if-eqz v2, :cond_5

    .line 498
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 504
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 506
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 512
    :cond_6
    :goto_6
    if-eqz v6, :cond_2

    .line 514
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 515
    :catch_1
    move-exception v1

    .line 516
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 499
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 500
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 508
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 500
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 508
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 515
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 516
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v2, :cond_7

    .line 498
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 504
    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    .line 506
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 512
    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    .line 514
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 517
    :cond_9
    :goto_a
    throw v8

    .line 499
    :catch_7
    move-exception v1

    .line 500
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 508
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 515
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 516
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_7

    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v6    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v7    # "tempOutputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "tempOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_7

    .line 493
    :catch_a
    move-exception v1

    goto :goto_1

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 532
    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 533
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 534
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 535
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 536
    if-ne p2, v4, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/android/settings/KiesLocationReceiver$Encryption;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    .line 538
    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 539
    invoke-direct {p0}, Lcom/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 543
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 544
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 540
    :cond_1
    if-nez p2, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 443
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 444
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 446
    return-object v0
.end method

.method private generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 458
    const/16 v1, 0x3e8

    .line 459
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 460
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 462
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 463
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 464
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 465
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 427
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 428
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 429
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 430
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 432
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private streamCrypt(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 407
    if-nez p1, :cond_0

    .line 408
    const-string v2, "KiesLocationReceiver"

    const-string v3, "security password is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    .line 412
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 413
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 414
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 415
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 416
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    .line 417
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method
