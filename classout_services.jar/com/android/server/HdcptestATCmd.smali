.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_ENC_KEY:Ljava/lang/String; = "/redata.bin"

.field private static final AT_HDCP_EXEC_PATH:Ljava/lang/String; = "/system/bin/insthk"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_EXEC_PATH:Ljava/lang/String; = "/system/bin/wvkprov"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_VERIFICATION_CMD:Ljava/lang/String; = "veriwvkey"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput-object p1, mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_14

    .line 306
    :goto_9
    return v0

    .line 300
    :pswitch_a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 301
    goto :goto_9

    .line 303
    :pswitch_f
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_9

    .line 298
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v4, 0x2

    invoke-static {p0, v4}, checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 275
    const/16 v2, 0x2c

    .line 292
    :goto_9
    return v2

    .line 277
    :cond_a
    if-eqz p1, :cond_30

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    :cond_30
    :try_start_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 284
    .local v3, "rt":Ljava/lang/Runtime;
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 285
    .local v1, "pc":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 286
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_40

    move-result v2

    .local v2, "ret":I
    goto :goto_9

    .line 287
    .end local v1    # "pc":Ljava/lang/Process;
    .end local v2    # "ret":I
    .end local v3    # "rt":Ljava/lang/Runtime;
    :catch_40
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x2c

    .line 290
    .restart local v2    # "ret":I
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 312
    const-string v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 313
    const-string v0, "/efs/cpk"

    .line 316
    .local v0, "hPath":Ljava/lang/String;
    :goto_b
    return-object v0

    .line 315
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_c
    const-string v0, "/efs"

    .restart local v0    # "hPath":Ljava/lang/String;
    goto :goto_b
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 260
    :cond_8
    const/4 v0, 0x0

    .line 268
    :cond_9
    return-object v0

    .line 263
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 265
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 266
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v2

    .line 255
    .end local v1    # "params":Ljava/lang/String;
    :goto_10
    return-object v2

    .line 250
    :catch_11
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 61
    .local v0, "response":Ljava/lang/String;
    const-string v0, "HDCPTEST"

    .line 62
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 67
    .local v12, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "params":[Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "0,0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "0,3"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "1,0"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "2,"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "3,3,"

    aput-object v17, v15, v16

    .line 76
    .local v15, "supportedParams":[Ljava/lang/String;
    if-nez v11, :cond_3a

    .line 77
    const-string v16, "HdcptestATCmd"

    const-string/jumbo v17, "processCmd: params is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v16, "NG (INVALID_PARAM)"

    .line 241
    :goto_39
    return-object v16

    .line 81
    :cond_3a
    const-string v16, "/efs"

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_4f

    .line 82
    const-string v16, "HdcptestATCmd"

    const-string/jumbo v17, "efs partition is not mounted"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v16, "NG (NO_EFS)"

    goto :goto_39

    .line 87
    :cond_4f
    const/4 v8, 0x0

    .line 88
    .local v8, "hOStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 91
    .local v6, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_51
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_161

    .line 96
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v10, "/efs/cpk"

    .line 100
    .local v10, "hPath":Ljava/lang/String;
    const-string v16, "/system/bin/insthk"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 102
    .local v13, "ret":I
    if-nez v13, :cond_c5

    .line 103
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 122
    :goto_ae
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,0 is complete!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_b5} :catch_1ae
    .catchall {:try_start_51 .. :try_end_b5} :catchall_29c

    .line 223
    .end local v10    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    :goto_b5
    if-eqz v6, :cond_bb

    .line 225
    :try_start_b7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_4bb
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_4c2

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_bb
    :goto_bb
    if-eqz v8, :cond_c1

    .line 233
    :try_start_bd
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_4c5
    .catchall {:try_start_bd .. :try_end_c0} :catchall_4cc

    .line 237
    const/4 v8, 0x0

    :cond_c1
    :goto_c1
    move-object/from16 v16, v12

    .line 241
    goto/16 :goto_39

    .line 106
    .restart local v10    # "hPath":Ljava/lang/String;
    .restart local v13    # "ret":I
    :cond_c5
    :try_start_c5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_f8

    .line 107
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_ae

    .line 110
    :cond_f8
    const-string v10, "/efs"

    .line 111
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_12d

    .line 112
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_ae

    .line 114
    :cond_12d
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_14a

    .line 115
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_ae

    .line 117
    :cond_14a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_ae

    .line 125
    .end local v10    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    :cond_161
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_229

    .line 127
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,3"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v16, "/efs/wv.keys"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_1d5

    .line 130
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    :goto_1a5
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,3 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_1ac} :catch_1ae
    .catchall {:try_start_c5 .. :try_end_1ac} :catchall_29c

    goto/16 :goto_b5

    .line 219
    :catch_1ae
    move-exception v5

    .line 220
    .local v5, "e":Ljava/lang/Exception;
    :goto_1af
    :try_start_1af
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (EXCEPTION)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c7
    .catchall {:try_start_1af .. :try_end_1c7} :catchall_29c

    .line 223
    if-eqz v6, :cond_1cd

    .line 225
    :try_start_1c9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cc} :catch_4cf
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_4d6

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_1cd
    :goto_1cd
    if-eqz v8, :cond_c1

    .line 233
    :try_start_1cf
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d2} :catch_4d9
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_4e0

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_c1

    .line 132
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1d5
    :try_start_1d5
    const-string v16, "/system/bin/wvkprov"

    const-string/jumbo v17, "veriwvkey"

    invoke-static/range {v16 .. v17}, execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 134
    .restart local v13    # "ret":I
    if-nez v13, :cond_1f6

    .line 135
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1a5

    .line 136
    :cond_1f6
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_212

    .line 137
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1a5

    .line 139
    :cond_212
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1a5

    .line 144
    .end local v13    # "ret":I
    :cond_229
    const/16 v16, 0x2

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2eb

    .line 146
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=1,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "S000000000000000"

    .line 149
    .local v3, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    const-string/jumbo v16, "ro.serialno"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 151
    .local v14, "serialNo":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2aa

    .line 152
    move-object v3, v14

    .line 159
    :goto_264
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Serial Number : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 162
    const-string v16, "HdcptestATCmd"

    const-string v17, "1,0 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_29a} :catch_1ae
    .catchall {:try_start_1d5 .. :try_end_29a} :catchall_29c

    goto/16 :goto_b5

    .line 223
    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v14    # "serialNo":Ljava/lang/String;
    :catchall_29c
    move-exception v16

    :goto_29d
    if-eqz v6, :cond_2a3

    .line 225
    :try_start_29f
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2a2} :catch_4e3
    .catchall {:try_start_29f .. :try_end_2a2} :catchall_4ea

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_2a3
    :goto_2a3
    if-eqz v8, :cond_2a9

    .line 233
    :try_start_2a5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2a8} :catch_4ed
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_4f4

    .line 237
    const/4 v8, 0x0

    :cond_2a9
    :goto_2a9
    throw v16

    .line 153
    .restart local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v14    # "serialNo":Ljava/lang/String;
    :cond_2aa
    :try_start_2aa
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_2cc

    .line 154
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_264

    .line 156
    :cond_2cc
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_264

    .line 165
    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v14    # "serialNo":Ljava/lang/String;
    :cond_2eb
    const/16 v16, 0x3

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3dd

    .line 167
    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-static/range {v16 .. v16}, hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 169
    .local v4, "bArray":[B
    if-nez v4, :cond_331

    .line 170
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (NO_DATA)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 194
    :goto_328
    const-string v16, "HdcptestATCmd"

    const-string v17, "2,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 172
    :cond_331
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bArray size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v4

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, getHdcp2XPath()Ljava/lang/String;

    move-result-object v10

    .line 177
    .restart local v10    # "hPath":Ljava/lang/String;
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_36c} :catch_1ae
    .catchall {:try_start_2aa .. :try_end_36c} :catchall_29c

    .line 178
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .local v9, "hOStream":Ljava/io/FileOutputStream;
    :try_start_36c
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_371} :catch_500
    .catchall {:try_start_36c .. :try_end_371} :catchall_4f7

    .line 180
    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v7, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_371
    const-string v16, "HdcptestATCmd"

    const-string v17, "Prepare buffer stream"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v16, 0x0

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 184
    const-string v16, "HdcptestATCmd"

    const-string v17, "Write data into buffer"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 188
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_3c4

    .line 189
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_328

    .line 191
    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :cond_3c4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_371 .. :try_end_3d8} :catch_504
    .catchall {:try_start_371 .. :try_end_3d8} :catchall_4fb

    move-result-object v12

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_328

    .line 197
    .end local v4    # "bArray":[B
    .end local v10    # "hPath":Ljava/lang/String;
    :cond_3dd
    const/16 v16, 0x4

    :try_start_3df
    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4a4

    .line 199
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=3,3,Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v16, 0x2

    aget-object v16, v11, v16

    if-eqz v16, :cond_412

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_430

    .line 202
    :cond_412
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (NO_DATA)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    :goto_427
    const-string v16, "HdcptestATCmd"

    const-string v17, "3,3,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 204
    :cond_430
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Param size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v16, "/system/bin/wvkprov"

    const/16 v17, 0x2

    aget-object v17, v11, v17

    invoke-static/range {v16 .. v17}, execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 207
    .restart local v13    # "ret":I
    if-nez v13, :cond_472

    .line 208
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_427

    .line 209
    :cond_472
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_48e

    .line 210
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_427

    .line 212
    :cond_48e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_427

    .line 218
    .end local v13    # "ret":I
    :cond_4a4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (INVALID_PARAM)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4b8
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_4b8} :catch_1ae
    .catchall {:try_start_3df .. :try_end_4b8} :catchall_29c

    move-result-object v12

    goto/16 :goto_b5

    .line 226
    :catch_4bb
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4bc
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4bf
    .catchall {:try_start_4bc .. :try_end_4bf} :catchall_4c2

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_bb

    .line 229
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_4c2
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_4c5
    move-exception v5

    .line 235
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4c6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c9
    .catchall {:try_start_4c6 .. :try_end_4c9} :catchall_4cc

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_c1

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_4cc
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 226
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_4cf
    move-exception v5

    .line 227
    :try_start_4d0
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d3
    .catchall {:try_start_4d0 .. :try_end_4d3} :catchall_4d6

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_1cd

    .line 229
    :catchall_4d6
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_4d9
    move-exception v5

    .line 235
    :try_start_4da
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4dd
    .catchall {:try_start_4da .. :try_end_4dd} :catchall_4e0

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_c1

    .line 237
    :catchall_4e0
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4e3
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4e4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e7
    .catchall {:try_start_4e4 .. :try_end_4e7} :catchall_4ea

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_2a3

    .line 229
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_4ea
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_4ed
    move-exception v5

    .line 235
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_4ee
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f1
    .catchall {:try_start_4ee .. :try_end_4f1} :catchall_4f4

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_2a9

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_4f4
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 223
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bArray":[B
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v10    # "hPath":Ljava/lang/String;
    :catchall_4f7
    move-exception v16

    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_29d

    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_4fb
    move-exception v16

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_29d

    .line 219
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catch_500
    move-exception v5

    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1af

    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catch_504
    move-exception v5

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1af
.end method
