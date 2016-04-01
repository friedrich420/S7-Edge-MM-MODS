.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_MAX:I = 0x9

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "eSE"

    aput-object v1, v0, v3

    const-string v1, "SIM"

    aput-object v1, v0, v4

    const-string v1, "SD"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eSE1"

    aput-object v1, v0, v6

    const-string v1, "SIM1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SD1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "eSE2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SIM2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SD2"

    aput-object v2, v0, v1

    sput-object v0, STORAGE_TYPES:[Ljava/lang/String;

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

    sput-object v0, SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 2
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method private static checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 2
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .registers 24

    .prologue
    .line 48
    const-string/jumbo v3, "load ODE config"

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 49
    new-instance v22, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string/jumbo v4, "odeConfig"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v22, "odeConfigFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v16

    .line 51
    .local v16, "existFile":Z
    if-nez v16, :cond_1f

    .line 52
    const-string v3, "ODE config file does not exist"

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    .line 101
    :cond_1e
    :goto_1e
    return-object v2

    .line 56
    :cond_1f
    const/16 v21, 0x0

    .line 57
    .local v21, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/16 v17, 0x0

    .line 59
    .local v17, "fis":Ljava/io/FileInputStream;
    :try_start_23
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_110

    .line 61
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v18, "fis":Ljava/io/FileInputStream;
    :try_start_2c
    new-instance v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

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

    invoke-direct/range {v2 .. v14}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>(I[BIIIIIIIII[B)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_118

    .line 62
    .end local v21    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .local v2, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :try_start_3d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v19

    .line 64
    .local v19, "lengthAID":I
    if-eqz v19, :cond_87

    .line 65
    move/from16 v0, v19

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 66
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v23

    .line 67
    .local v23, "readByteSize":I
    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_87

    .line 68
    const-string v3, "EFSProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read side mismatched, lengthAID : "

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
    :cond_87
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 72
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 73
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 74
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 75
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 76
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 77
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 78
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 79
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v3

    iput v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 80
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->read()I

    move-result v20

    .line 81
    .local v20, "lengthCsName":I
    if-eqz v20, :cond_101

    .line 82
    move/from16 v0, v20

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 83
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v23

    .line 84
    .restart local v23    # "readByteSize":I
    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_101

    .line 85
    const-string v3, "EFSProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read side mismatched, lengthCsName : "

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
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_101} :catch_11e

    .end local v23    # "readByteSize":I
    :cond_101
    move-object/from16 v17, v18

    .line 93
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "lengthAID":I
    .end local v20    # "lengthCsName":I
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :goto_103
    if-eqz v17, :cond_1e

    .line 95
    :try_start_105
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_10a

    goto/16 :goto_1e

    .line 96
    :catch_10a
    move-exception v15

    .line 97
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1e

    .line 88
    .end local v2    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v21    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_110
    move-exception v15

    move-object/from16 v2, v21

    .line 89
    .end local v21    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v2    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v15    # "e":Ljava/io/IOException;
    :goto_113
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    const/4 v2, 0x0

    goto :goto_103

    .line 88
    .end local v2    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v21    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_118
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v2, v21

    .end local v21    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v2    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    goto :goto_113

    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    :catch_11e
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    goto :goto_113
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 11
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 105
    const-string/jumbo v8, "save ODE config"

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 106
    const/4 v6, 0x0

    .line 108
    .local v6, "saveConfig":Z
    if-nez p0, :cond_10

    .line 109
    const-string v8, "ODEProperties is null"

    invoke-static {v8}, log(Ljava/lang/String;)V

    move v7, v6

    .line 186
    .end local v6    # "saveConfig":Z
    .local v7, "saveConfig":I
    :goto_f
    return v7

    .line 113
    .end local v7    # "saveConfig":I
    .restart local v6    # "saveConfig":Z
    :cond_10
    invoke-static {p0}, checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 114
    const-string v8, "checkODEProperties false"

    invoke-static {v8}, log(Ljava/lang/String;)V

    move v7, v6

    .line 115
    .restart local v7    # "saveConfig":I
    goto :goto_f

    .line 117
    .end local v7    # "saveConfig":I
    :cond_1d
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sec_efs"

    const-string/jumbo v9, "odeConfig"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v5, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    .line 119
    .local v2, "existFile":Z
    const/4 v8, 0x1

    if-ne v8, v2, :cond_3c

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 121
    .local v0, "deleteFile":Z
    if-nez v0, :cond_3c

    .line 122
    const-string/jumbo v8, "failed to delete the existing ODE config file"

    invoke-static {v8}, log(Ljava/lang/String;)V

    move v7, v6

    .line 123
    .restart local v7    # "saveConfig":I
    goto :goto_f

    .line 127
    .end local v0    # "deleteFile":Z
    .end local v7    # "saveConfig":I
    :cond_3c
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-nez v8, :cond_43

    .line 128
    const/4 v6, 0x1

    move v7, v6

    .line 129
    .restart local v7    # "saveConfig":I
    goto :goto_f

    .line 132
    .end local v7    # "saveConfig":I
    :cond_43
    const/4 v3, 0x0

    .line 134
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_44
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_49} :catch_d3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_d1

    .line 136
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_49
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 138
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v8, :cond_ad

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v8, v8

    if-lez v8, :cond_ad

    .line 139
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 140
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 145
    :goto_62
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 146
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 147
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 149
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 150
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 151
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 152
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 153
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 154
    iget v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 156
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v8, :cond_bc

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v8, v8

    if-lez v8, :cond_bc

    .line 157
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 158
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_a3} :catch_b2
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_a3} :catch_c1

    .line 163
    :goto_a3
    const/4 v6, 0x1

    move-object v3, v4

    .line 176
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_a5
    if-eqz v3, :cond_aa

    .line 178
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_cb

    :cond_aa
    :goto_aa
    move v7, v6

    .line 186
    .restart local v7    # "saveConfig":I
    goto/16 :goto_f

    .line 142
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "saveConfig":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_ad
    const/4 v8, 0x0

    :try_start_ae
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b1} :catch_b2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_c1

    goto :goto_62

    .line 164
    :catch_b2
    move-exception v1

    move-object v3, v4

    .line 166
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_b4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 167
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 168
    const/4 v6, 0x0

    .line 174
    goto :goto_a5

    .line 160
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_bc
    const/4 v8, 0x0

    :try_start_bd
    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_bd .. :try_end_c0} :catch_b2
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_a3

    .line 169
    :catch_c1
    move-exception v1

    move-object v3, v4

    .line 171
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_c3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 173
    const/4 v6, 0x0

    goto :goto_a5

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    :catch_cb
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/4 v6, 0x0

    goto :goto_aa

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d1
    move-exception v1

    goto :goto_c3

    .line 164
    :catch_d3
    move-exception v1

    goto :goto_b4
.end method
