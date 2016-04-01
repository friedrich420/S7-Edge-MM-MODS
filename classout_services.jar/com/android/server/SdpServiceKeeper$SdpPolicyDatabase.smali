.class Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpServiceKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpPolicyDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg_name"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DEBUG:Z = true

.field private static final ELEMENT_OWNER:Ljava/lang/String; = "owner"

.field private static final ELEMENT_PRIVILEGED_APP:Ljava/lang/String; = "privileged_app"

.field private static final ELEMENT_ROOT:Ljava/lang/String; = "engine_policy"

.field private static final MAX_SALT_LENGTH:I = 0x20


# instance fields
.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field final synthetic this$0:Lcom/android/server/SdpServiceKeeper;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;)V
    .registers 4
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 518
    iput-object p1, p0, this$0:Lcom/android/server/SdpServiceKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 519
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/SdpServiceKeeper;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/server/SdpServiceKeeper$1;

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Lcom/android/server/sdp/engine/SdpPolicy;

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, putPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 505
    invoke-direct {p0, p1}, getPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 505
    invoke-direct {p0, p1}, removePolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .registers 11
    .param p1, "bytes"    # [B

    .prologue
    .line 826
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 827
    .local v4, "result":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_22

    aget-byte v1, v0, v2

    .line 828
    .local v1, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 829
    .end local v1    # "b":B
    :cond_22
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private generateHash([BLjava/io/File;)[B
    .registers 14
    .param p1, "salt"    # [B
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 753
    const-string v0, "SHA-256"

    .line 754
    .local v0, "alg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 759
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 760
    .local v5, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_c} :catch_92
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_c} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_6e
    .catchall {:try_start_3 .. :try_end_c} :catchall_7d

    .line 761
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v8, 0x400

    :try_start_e
    new-array v1, v8, [B

    .line 763
    .local v1, "dataBytes":[B
    const/4 v6, 0x0

    .line 764
    .local v6, "readBytes":I
    :goto_11
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3e

    .line 765
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1c} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1c} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_8c
    .catchall {:try_start_e .. :try_end_1c} :catchall_89

    goto :goto_11

    .line 775
    .end local v1    # "dataBytes":[B
    .end local v6    # "readBytes":I
    :catch_1d
    move-exception v2

    move-object v3, v4

    .line 776
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1f
    :try_start_1f
    const-string v8, "SdpServiceKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to hash : missing algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_7d

    .line 783
    if-eqz v3, :cond_3c

    .line 784
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_5a

    .line 790
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3c
    :goto_3c
    const/4 v7, 0x0

    :goto_3d
    return-object v7

    .line 768
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dataBytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "readBytes":I
    :cond_3e
    :try_start_3e
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 772
    .local v7, "sha":[B
    array-length v8, v7

    if-lez v8, :cond_4e

    .line 773
    const-string v8, "SdpServiceKeeper"

    invoke-direct {p0, v7}, byteToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_4e} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4e} :catch_8c
    .catchall {:try_start_3e .. :try_end_4e} :catchall_89

    .line 783
    :cond_4e
    if-eqz v4, :cond_53

    .line 784
    :try_start_50
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_55

    :cond_53
    :goto_53
    move-object v3, v4

    .line 788
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3d

    .line 786
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_55
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .line 786
    .end local v1    # "dataBytes":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "readBytes":I
    .end local v7    # "sha":[B
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_5a
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 777
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5f
    move-exception v2

    .line 778
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_7d

    .line 783
    if-eqz v3, :cond_3c

    .line 784
    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_3c

    .line 786
    :catch_69
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 779
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v2

    .line 780
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    .line 783
    if-eqz v3, :cond_3c

    .line 784
    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_3c

    .line 786
    :catch_78
    move-exception v2

    .line 787
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_7d
    move-exception v8

    .line 783
    :goto_7e
    if-eqz v3, :cond_83

    .line 784
    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    .line 788
    :cond_83
    :goto_83
    throw v8

    .line 786
    :catch_84
    move-exception v2

    .line 787
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_83

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :catchall_89
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_7e

    .line 779
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8c
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6f

    .line 777
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8f
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_60

    .line 775
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catch_92
    move-exception v2

    goto :goto_1f
.end method

.method private generateSalt(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)[B
    .registers 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 811
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 812
    .local v0, "salt":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 817
    return-object v0
.end method

.method private getPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 11
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v5, 0x0

    .line 527
    new-instance v2, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    invoke-direct {v2, p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;-><init>(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 528
    .local v2, "handler":Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    const/4 v1, 0x0

    .line 529
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0, p1}, loadHashFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)[B

    move-result-object v4

    .line 532
    .local v4, "storedHash":[B
    :try_start_b
    invoke-direct {p0, p1}, getPolicyXmlFile(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/io/File;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1b

    move-result-object v1

    .line 537
    :goto_f
    if-eqz v1, :cond_13

    if-nez v4, :cond_20

    .line 538
    :cond_13
    const-string v6, "SdpServiceKeeper"

    const-string v7, "No policy file or its hash"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_1a
    return-object v5

    .line 533
    :catch_1b
    move-exception v0

    .line 534
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    invoke-direct {p0, p1}, generateSalt(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)[B

    move-result-object v6

    invoke-direct {p0, v6, v1}, generateHash([BLjava/io/File;)[B

    move-result-object v3

    .line 547
    .local v3, "hash":[B
    if-eqz v3, :cond_66

    if-eqz v4, :cond_66

    .line 548
    const-string v6, "SdpServiceKeeper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadPolicy :: generated hash : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, byteToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v6, "SdpServiceKeeper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadPolicy :: stored hash : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, byteToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_66
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_74

    .line 553
    const-string v6, "SdpServiceKeeper"

    const-string v7, "Policy file tempered!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 558
    :cond_74
    :try_start_74
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v6, v2}, parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_81

    .line 565
    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->getSdpPolicy()Lcom/android/server/sdp/engine/SdpPolicy;
    invoke-static {v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->access$400(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v5

    goto :goto_1a

    .line 559
    :catch_81
    move-exception v0

    .line 560
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 561
    const-string v6, "SdpServiceKeeper"

    const-string/jumbo v7, "engine_poilcy xml io failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private getPolicyXmlFile(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/io/File;
    .registers 5
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sdp_engine_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTimaAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "engineAlias"    # Ljava/lang/String;

    .prologue
    .line 821
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sdp_policy_hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadHashFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)[B
    .registers 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 804
    .local v2, "token":J
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, getTimaAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 805
    .local v0, "res":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    return-object v0
.end method

.method private putPolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 27
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "policy"    # Lcom/android/server/sdp/engine/SdpPolicy;

    .prologue
    .line 569
    const/4 v11, 0x0

    .line 571
    .local v11, "f":Ljava/io/File;
    :try_start_1
    invoke-direct/range {p0 .. p1}, getPolicyXmlFile(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_bc

    move-result-object v11

    .line 579
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 580
    .local v7, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 582
    .local v6, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 583
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v22, "engine_policy"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 584
    .local v17, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 587
    const-string/jumbo v22, "owner"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 588
    .local v13, "owner":Lorg/w3c/dom/Element;
    const-string v22, "alias"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 589
    .local v3, "attrAlias":Lorg/w3c/dom/Attr;
    const-string/jumbo v22, "pkg_name"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 591
    .local v4, "attrPkgName":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 592
    invoke-interface {v13, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 594
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 595
    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 597
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 600
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v9

    .line 601
    .local v9, "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-eqz v9, :cond_ca

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_ca

    .line 602
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_ca

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .line 603
    .local v8, "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    const-string/jumbo v22, "privileged_app"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 604
    .local v15, "privilegedApp":Lorg/w3c/dom/Element;
    const-string v22, "alias"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 605
    const-string/jumbo v22, "pkg_name"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 608
    invoke-interface {v15, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 610
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 611
    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 613
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_ad
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_ad} :catch_ae
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_ad} :catch_10d

    goto :goto_6a

    .line 626
    .end local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v4    # "attrPkgName":Lorg/w3c/dom/Attr;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "domain":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    .end local v9    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "owner":Lorg/w3c/dom/Element;
    .end local v15    # "privilegedApp":Lorg/w3c/dom/Element;
    .end local v17    # "rootElement":Lorg/w3c/dom/Element;
    :catch_ae
    move-exception v14

    .line 627
    .local v14, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v14}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 628
    const-string v22, "SdpServiceKeeper"

    const-string v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/16 v22, -0x63

    .line 643
    .end local v14    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_bb
    return v22

    .line 572
    :catch_bc
    move-exception v10

    .line 573
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 574
    const-string v22, "SdpServiceKeeper"

    const-string v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/16 v22, -0xe

    goto :goto_bb

    .line 618
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .restart local v4    # "attrPkgName":Lorg/w3c/dom/Attr;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    .restart local v13    # "owner":Lorg/w3c/dom/Element;
    .restart local v17    # "rootElement":Lorg/w3c/dom/Element;
    :cond_ca
    :try_start_ca
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 619
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 620
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    const-string/jumbo v22, "indent"

    const-string/jumbo v23, "yes"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v18, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 622
    .local v18, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 624
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_ca .. :try_end_f8} :catch_ae
    .catch Ljavax/xml/transform/TransformerException; {:try_start_ca .. :try_end_f8} :catch_10d

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, storeHashToTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/io/File;)Z

    move-result v22

    if-eqz v22, :cond_11b

    .line 638
    const-string v22, "SdpServiceKeeper"

    const-string/jumbo v23, "putPolicyLocked :: SUCCESS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v22, 0x0

    goto :goto_bb

    .line 630
    .end local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v4    # "attrPkgName":Lorg/w3c/dom/Attr;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    .end local v13    # "owner":Lorg/w3c/dom/Element;
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v17    # "rootElement":Lorg/w3c/dom/Element;
    .end local v18    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_10d
    move-exception v19

    .line 631
    .local v19, "tfe":Ljavax/xml/transform/TransformerException;
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 632
    const-string v22, "SdpServiceKeeper"

    const-string v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v22, -0x63

    goto :goto_bb

    .line 642
    .end local v19    # "tfe":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "attrAlias":Lorg/w3c/dom/Attr;
    .restart local v4    # "attrPkgName":Lorg/w3c/dom/Attr;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    .restart local v13    # "owner":Lorg/w3c/dom/Element;
    .restart local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v17    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v18    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_11b
    const-string v22, "SdpServiceKeeper"

    const-string v23, "can\'t store hash to TIMA"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/16 v22, -0x63

    goto :goto_bb
.end method

.method private removePolicyLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 9
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 649
    :try_start_0
    invoke-direct {p0, p1}, getPolicyXmlFile(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_2a

    move-result-object v1

    .line 656
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_11

    .line 657
    const-string v4, "SdpServiceKeeper"

    const-string v5, "Couldn\'t remove policy file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 659
    .local v2, "token":J
    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, getTimaAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 660
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "token":J
    :goto_29
    return-void

    .line 650
    :catch_2a
    move-exception v0

    .line 651
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    const-string v4, "SdpServiceKeeper"

    const-string v5, " removePolicyLocked  failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private storeHashToTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/io/File;)Z
    .registers 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 794
    invoke-direct {p0, p1}, generateSalt(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)[B

    move-result-object v4

    invoke-direct {p0, v4, p2}, generateHash([BLjava/io/File;)[B

    move-result-object v0

    .line 795
    .local v0, "hash":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 796
    .local v2, "token":J
    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, getTimaAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 797
    .local v1, "result":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return v1
.end method


# virtual methods
.method public parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    const/4 v4, 0x0

    .line 665
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 666
    .local v3, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 667
    .local v1, "newSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 669
    .local v2, "parser":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 670
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_18} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_18} :catch_24

    .line 681
    .end local v1    # "newSAXParser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "parser":Lorg/xml/sax/XMLReader;
    .end local v3    # "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_18
    const/4 v4, 0x1

    :goto_19
    return v4

    .line 671
    :catch_1a
    move-exception v0

    .line 672
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_19

    .line 674
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1f
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 677
    .end local v0    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 678
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_18
.end method
