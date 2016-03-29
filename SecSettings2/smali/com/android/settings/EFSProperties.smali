.class public Lcom/android/settings/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eSE"

    aput-object v1, v0, v3

    const-string v1, "SIM"

    aput-object v1, v0, v4

    const-string v1, "SD"

    aput-object v1, v0, v5

    const-string v1, "eSE1"

    aput-object v1, v0, v6

    const-string v1, "SIM1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SD1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eSE2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SIM2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SD2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    .line 45
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "SCP11a"

    aput-object v1, v0, v4

    const-string v1, "SCP11b"

    aput-object v1, v0, v5

    const-string v1, "SCPCustom"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public static loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;
    .locals 24

    .prologue
    .line 48
    const-string v3, "load ODE config"

    invoke-static {v3}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 49
    new-instance v22, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string v4, "odeConfig"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v22, "odeConfigFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v16

    .line 51
    .local v16, "existFile":Z
    if-nez v16, :cond_1

    .line 52
    const-string v3, "ODE config file does not exist"

    invoke-static {v3}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v2

    .line 56
    :cond_1
    const/16 v21, 0x0

    .line 57
    .local v21, "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    const/16 v17, 0x0

    .line 59
    .local v17, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v18, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Lcom/android/settings/EFSProperties$ODEProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/android/settings/EFSProperties$ODEProperties;-><init>(I[BIIIIIIIII[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    .end local v21    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .local v2, "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v19

    .line 64
    .local v19, "lengthAID":I
    if-eqz v19, :cond_2

    .line 65
    move/from16 v0, v19

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    .line 66
    iget-object v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v23

    .line 67
    .local v23, "readByteSize":I
    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 68
    const-string v3, "EFSProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read side mismatched, lengthAID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", readByteSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v23    # "readByteSize":I
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->storageType:I

    .line 72
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    .line 73
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    .line 74
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    .line 75
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 76
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->authMode:I

    .line 77
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 78
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    .line 79
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 80
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v20

    .line 81
    .local v20, "lengthCsName":I
    if-eqz v20, :cond_3

    .line 82
    move/from16 v0, v20

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    .line 83
    iget-object v3, v2, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v23

    .line 84
    .restart local v23    # "readByteSize":I
    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 85
    const-string v3, "EFSProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read side mismatched, lengthCsName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", readByteSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v23    # "readByteSize":I
    :cond_3
    move-object/from16 v17, v18

    .line 93
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "lengthAID":I
    .end local v20    # "lengthCsName":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v17, :cond_0

    .line 95
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v15

    .line 97
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v2    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v21    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_1
    move-exception v15

    move-object/from16 v2, v21

    .line 89
    .end local v21    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .restart local v2    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .restart local v15    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    const/4 v2, 0x0

    goto :goto_1

    .line 88
    .end local v2    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v21    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_2
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v2, v21

    .end local v21    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .restart local v2    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    goto :goto_2

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method
