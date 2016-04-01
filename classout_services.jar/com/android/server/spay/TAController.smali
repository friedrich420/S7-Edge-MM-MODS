.class Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "TAController.java"


# static fields
.field protected static final AEXP_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/aexp_pay"

.field protected static final CHNCMM_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/chn_pay"

.field private static final CMD_ABORT_MST:I = 0x3

.field private static final CMD_MOVE_SEC_OS_CORE0:I = 0x6

.field private static final CMD_MOVE_SEC_OS_CORE4:I = 0x5

.field private static final CMD_MST_OFF:I = 0x2

.field private static final CMD_MST_ON:I = 0x1

.field private static final CMD_RESET_MST:I = 0x4

.field protected static final CNCC_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/cncc_pay"

.field private static final DEBUG:Z

.field protected static final DISC_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/disc_pay"

.field protected static final EURCMM_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/eur_pay"

.field private static final FILE_MIGRATE_SEC_OS:Ljava/lang/String; = "/sys/devices/system/sec_os_ctrl/migrate_os"

.field private static final FILE_MST_INTERRUPT:Ljava/lang/String; = "/dev/mst_ctrl"

.field private static final FILE_MST_POWER_ON_OFF:Ljava/lang/String; = "/sys/class/mstldo/mst_drv/transmit"

.field protected static final JIC_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/jic_pay"

.field protected static final KRCC_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/krcc_pay"

.field protected static final PLCC_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/plcc_pay"

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"

.field protected static final VISA_DEVICE_CERT_ROOT_DIR:Ljava/lang/String; = "/efs/prov_data/pay"


# instance fields
.field private mNative:Lcom/android/server/spay/PaymentTZNative;

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method constructor <init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .registers 6
    .param p1, "taId"    # I
    .param p2, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/spay/ITAController$Stub;-><init>()V

    .line 54
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_37

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; maxSendCmdSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; maxRecvRespSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_37
    iput p1, p0, mTAId:I

    .line 56
    new-instance v0, Lcom/android/server/spay/PaymentTZNative;

    iget v1, p2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v2, p2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/spay/PaymentTZNative;-><init>(III)V

    iput-object v0, p0, mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 57
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .registers 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 238
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 239
    aget-object v2, v0, v1

    invoke-static {v2}, deleteDirectory(Ljava/io/File;)Z

    .line 237
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 241
    :cond_1e
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1b

    .line 245
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method private makeSysCallInternal(I)Z
    .registers 15
    .param p1, "cmd"    # I

    .prologue
    const/4 v9, 0x0

    .line 164
    const/4 v4, 0x0

    .line 167
    .local v4, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 168
    .local v7, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 170
    .local v0, "bw":Ljava/io/BufferedWriter;
    packed-switch p1, :pswitch_data_fe

    .line 196
    const-string v10, "PaymentManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UNKNOWN Command ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1f
    :goto_1f
    return v9

    .line 172
    :pswitch_20
    const-string v6, "/sys/class/mstldo/mst_drv/transmit"

    .line 173
    .local v6, "filename":Ljava/lang/String;
    const-string v2, "1"

    .line 200
    .local v2, "data":Ljava/lang/String;
    :goto_24
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_4a

    .line 201
    const-string v10, "PaymentManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Writting \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" to -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4a
    :try_start_4a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_92
    .catchall {:try_start_4a .. :try_end_4f} :catchall_cf

    .line 206
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_4f
    new-instance v8, Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_f1
    .catchall {:try_start_4f .. :try_end_58} :catchall_e5

    .line 207
    .end local v7    # "fw":Ljava/io/FileWriter;
    .local v8, "fw":Ljava/io/FileWriter;
    :try_start_58
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_f4
    .catchall {:try_start_58 .. :try_end_5d} :catchall_e8

    .line 208
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_5d
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_f8
    .catchall {:try_start_5d .. :try_end_60} :catchall_ec

    .line 216
    if-eqz v1, :cond_65

    .line 217
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_88

    .line 223
    :cond_65
    :goto_65
    if-eqz v8, :cond_6a

    .line 224
    :try_start_67
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_8d

    .line 230
    :cond_6a
    :goto_6a
    const/4 v9, 0x1

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1f

    .line 176
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_6f
    const-string v6, "/sys/class/mstldo/mst_drv/transmit"

    .line 177
    .restart local v6    # "filename":Ljava/lang/String;
    const-string v2, "0"

    .line 178
    .restart local v2    # "data":Ljava/lang/String;
    goto :goto_24

    .line 180
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_74
    const-string v6, "/dev/mst_ctrl"

    .line 181
    .restart local v6    # "filename":Ljava/lang/String;
    const-string v2, "1"

    .line 182
    .restart local v2    # "data":Ljava/lang/String;
    goto :goto_24

    .line 184
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_79
    const-string v6, "/dev/mst_ctrl"

    .line 185
    .restart local v6    # "filename":Ljava/lang/String;
    const-string v2, "0"

    .line 186
    .restart local v2    # "data":Ljava/lang/String;
    goto :goto_24

    .line 188
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_7e
    const-string v6, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 189
    .restart local v6    # "filename":Ljava/lang/String;
    const-string v2, "b0"

    .line 190
    .restart local v2    # "data":Ljava/lang/String;
    goto :goto_24

    .line 192
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_83
    const-string v6, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 193
    .restart local v6    # "filename":Ljava/lang/String;
    const-string v2, "L0"

    .line 194
    .restart local v2    # "data":Ljava/lang/String;
    goto :goto_24

    .line 219
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_88
    move-exception v3

    .line 220
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8d
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 209
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    :catch_92
    move-exception v3

    .line 210
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_93
    :try_start_93
    const-string v10, "PaymentManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error writting \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" to file -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_93 .. :try_end_b8} :catchall_cf

    .line 216
    if-eqz v0, :cond_bd

    .line 217
    :try_start_ba
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_ca

    .line 223
    :cond_bd
    :goto_bd
    if-eqz v7, :cond_1f

    .line 224
    :try_start_bf
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c4

    goto/16 :goto_1f

    .line 226
    :catch_c4
    move-exception v3

    .line 227
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f

    .line 219
    :catch_ca
    move-exception v3

    .line 220
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bd

    .line 215
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_cf
    move-exception v9

    .line 216
    :goto_d0
    if-eqz v0, :cond_d5

    .line 217
    :try_start_d2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_db

    .line 223
    :cond_d5
    :goto_d5
    if-eqz v7, :cond_da

    .line 224
    :try_start_d7
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_e0

    .line 228
    :cond_da
    :goto_da
    throw v9

    .line 219
    :catch_db
    move-exception v3

    .line 220
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d5

    .line 226
    .end local v3    # "e":Ljava/io/IOException;
    :catch_e0
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_da

    .line 215
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catchall_e5
    move-exception v9

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_d0

    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catchall_e8
    move-exception v9

    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_d0

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catchall_ec
    move-exception v9

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_d0

    .line 209
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_f1
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_93

    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_f4
    move-exception v3

    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_93

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_f8
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_93

    .line 170
    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_20
        :pswitch_6f
        :pswitch_74
        :pswitch_79
        :pswitch_7e
        :pswitch_83
    .end packed-switch
.end method


# virtual methods
.method public clearDeviceCertificates()Z
    .registers 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "ret":Z
    const-string v1, "PaymentManagerService"

    const-string v2, "Deleting the device certificates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v0

    .line 153
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/aexp_pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 154
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/plcc_pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 155
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/krcc_pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 156
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/eur_pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 157
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/prov_data/chn_pay"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, deleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 159
    return v0
.end method

.method public copyMctoRst()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected generateDeviceCertificates(Ljava/lang/String;)Z
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "generateDeviceCertificates"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 142
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::generateDeviceCertificates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_11
    iget-object v0, p0, mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->generateDeviceCertificates(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCertInfo()Landroid/spay/CertInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 14
    .param p1, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "loadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 69
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "PaymentManagerService"

    const-string v2, "TAController::loadTA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_11
    if-nez p1, :cond_15

    .line 71
    const/4 v0, 0x0

    .line 84
    :cond_14
    :goto_14
    return v0

    .line 73
    :cond_15
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    .line 74
    .local v1, "fdInt":I
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_49

    .line 75
    const-string v0, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_49
    :try_start_49
    iget-object v0, p0, mNative:Lcom/android/server/spay/PaymentTZNative;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/spay/PaymentTZNative;->loadTA(IJJ)Z
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_5c

    move-result v0

    .line 79
    if-eqz p1, :cond_14

    .line 81
    :try_start_53
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_14

    .line 82
    :catch_57
    move-exception v6

    .line 83
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 79
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_5c
    move-exception v0

    if-eqz p1, :cond_62

    .line 81
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 84
    :cond_62
    :goto_62
    throw v0

    .line 82
    :catch_63
    move-exception v6

    .line 83
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62
.end method

.method public makeSystemCall(I)Z
    .registers 10
    .param p1, "cmd"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "process":Ljava/lang/Process;
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_e

    .line 110
    const-string v3, "PaymentManagerService"

    const-string/jumbo v4, "entered makeSystemCall in TAController - System Server process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_e
    const-string/jumbo v3, "makeSystemCall"

    invoke-static {v3}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 115
    :try_start_14
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_3b

    .line 116
    const-string v3, "PaymentManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makesystemcall - start time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3b
    invoke-direct {p0, p1}, makeSysCallInternal(I)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 120
    const-string v3, "PaymentManagerService"

    const-string/jumbo v4, "makeSystemCall: failed to make system call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_49
    return v2

    .line 124
    :cond_4a
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_71

    .line 125
    const-string v3, "PaymentManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeSystemCall: Successful, end time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_71} :catch_73

    .line 127
    :cond_71
    const/4 v2, 0x1

    goto :goto_49

    .line 128
    :catch_73
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 5
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .prologue
    .line 61
    const-string/jumbo v0, "processTACommand"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 62
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3a

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3a
    iget-object v0, p0, mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCertInfo(Landroid/spay/CertInfo;)Z
    .registers 3
    .param p1, "certInfo"    # Landroid/spay/CertInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public unloadTA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 92
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_11
    iget-object v0, p0, mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    .line 94
    return-void
.end method
