.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLockUEvent:Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, mThreadUartGoWait:Z

    .line 160
    sput-object p1, mContext:Landroid/content/Context;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, mErrorCode:I

    .line 163
    invoke-direct {p0}, nativeInit()V

    .line 165
    invoke-direct {p0}, nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, mServiceSupport:I

    .line 167
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataBlockFile:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private hasPermission(ILjava/lang/String;)Z
    .registers 21
    .param p1, "callingPid"    # I
    .param p2, "callingMethodName"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v2, "com.osp.app.signin"

    .line 174
    .local v2, "SAMSUNG_ACCOUNT_PKG_NAME":Ljava/lang/String;
    new-instance v14, Landroid/content/pm/Signature;

    const-string v15, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v14, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 175
    .local v14, "sigSA":Landroid/content/pm/Signature;
    const-string v5, ""

    .line 176
    .local v5, "currentPkgName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 178
    .local v12, "ret":Z
    sget-object v15, mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 180
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 181
    .local v11, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v15, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p1

    if-ne v15, v0, :cond_1e

    .line 182
    iget-object v5, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 188
    .end local v11    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_32
    sget-object v15, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 191
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/16 v15, 0x40

    :try_start_3a
    invoke-virtual {v10, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 192
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_a3

    .line 194
    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NOT Allowed : pkg does not match uid("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_80} :catch_d6

    .line 219
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_80
    :goto_80
    if-eqz v12, :cond_e2

    .line 220
    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Requested package name = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_a2
    return v12

    .line 198
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_a3
    :try_start_a3
    const-string v15, "android"

    invoke-virtual {v10, v15, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_b4

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto :goto_80

    .line 200
    :cond_b4
    const-string v15, "com.osp.app.signin"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_80

    .line 202
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "arr$":[Landroid/content/pm/Signature;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_c0
    if-ge v7, v8, :cond_80

    aget-object v13, v4, v7

    .line 204
    .local v13, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v14, v13}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d3

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d1} :catch_d6

    move-result v12

    .line 207
    goto :goto_80

    .line 202
    :cond_d3
    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    .line 213
    .end local v4    # "arr$":[Landroid/content/pm/Signature;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "sig":Landroid/content/pm/Signature;
    :catch_d6
    move-exception v6

    .line 215
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const-string v15, "ReactiveService"

    const-string v16, "Fail to get packageinfo."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 222
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e2
    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Permission denied. Package name = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method

.method private wipeLength()V
    .registers 7

    .prologue
    .line 230
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_31

    .line 236
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const-string v4, "ReactiveService"

    const-string v5, "Wipe length of data for Persistent partition."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 239
    .local v1, "data":[B
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 240
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x24

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 241
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 242
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 243
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_3b
    .catchall {:try_start_16 .. :try_end_2d} :catchall_48

    .line 248
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 250
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":[B
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_30
    return-void

    .line 231
    :catch_31
    move-exception v2

    .line 232
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ReactiveService"

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 244
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3b
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    :try_start_3c
    const-string v4, "ReactiveService"

    const-string/jumbo v5, "failed to reset length"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_48

    .line 248
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_30

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_48
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 624
    iget v0, p0, mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .registers 8
    .param p1, "flag"    # I

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_9c

    .line 358
    :pswitch_3
    const/4 v3, -0x3

    iput v3, p0, mErrorCode:I

    .line 359
    iget v2, p0, mErrorCode:I

    .line 369
    :goto_8
    return v2

    .line 283
    :pswitch_9
    iget v3, p0, mServiceSupport:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_15

    iget v3, p0, mServiceSupport:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_4e

    .line 286
    :cond_15
    sget-object v4, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 287
    :try_start_18
    invoke-direct {p0, p1}, nativeGetFlag(I)I

    move-result v2

    .line 288
    .local v2, "ret":I
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_4b

    .line 362
    :goto_1d
    if-gez v2, :cond_98

    .line 363
    iput v2, p0, mErrorCode:I

    .line 367
    :goto_21
    const-string v3, "ReactiveService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFlag() : flag=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ret=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 288
    .end local v2    # "ret":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 291
    :cond_4e
    const/4 v2, -0x2

    .line 292
    .restart local v2    # "ret":I
    goto :goto_1d

    .line 295
    .end local v2    # "ret":I
    :pswitch_50
    iget v3, p0, mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_96

    .line 321
    sget-object v3, mContext:Landroid/content/Context;

    const-string/jumbo v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v3, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 322
    iget-object v3, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v3, :cond_70

    .line 324
    const-string v3, "ReactiveService"

    const-string v4, "Failed to load FRP Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, -0x7

    goto :goto_8

    .line 332
    :cond_70
    :try_start_70
    iget-object v3, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_87

    move-result v1

    .line 341
    .local v1, "frp_flag":Z
    if-eqz v1, :cond_94

    .line 343
    sget-object v4, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 344
    :try_start_7b
    invoke-direct {p0}, nativeFinishedSetupWizard()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 345
    const/4 v2, 0x1

    .line 348
    .restart local v2    # "ret":I
    :goto_82
    monitor-exit v4

    goto :goto_1d

    .end local v2    # "ret":I
    :catchall_84
    move-exception v3

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_84

    throw v3

    .line 334
    .end local v1    # "frp_flag":Z
    :catch_87
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v3, -0x6

    iput v3, p0, mErrorCode:I

    .line 337
    iget v2, p0, mErrorCode:I

    goto/16 :goto_8

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frp_flag":Z
    :cond_92
    const/4 v2, 0x2

    .restart local v2    # "ret":I
    goto :goto_82

    .line 351
    .end local v2    # "ret":I
    :cond_94
    const/4 v2, 0x0

    .restart local v2    # "ret":I
    goto :goto_1d

    .line 354
    .end local v1    # "frp_flag":Z
    .end local v2    # "ret":I
    :cond_96
    const/4 v2, -0x2

    .line 355
    .restart local v2    # "ret":I
    goto :goto_1d

    .line 365
    :cond_98
    const/4 v3, 0x0

    iput v3, p0, mErrorCode:I

    goto :goto_21

    .line 280
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3
        :pswitch_50
    .end packed-switch
.end method

.method public getRandom()[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 637
    iget v2, p0, mServiceSupport:I

    if-nez v2, :cond_a

    .line 639
    const/4 v2, -0x2

    iput v2, p0, mErrorCode:I

    move-object v0, v1

    .line 659
    :cond_9
    :goto_9
    return-object v0

    .line 643
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, hasPermission(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 645
    const/4 v2, -0x5

    iput v2, p0, mErrorCode:I

    move-object v0, v1

    .line 646
    goto :goto_9

    .line 649
    :cond_28
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 650
    :try_start_2b
    invoke-direct {p0}, nativeGetRandom()[B

    move-result-object v0

    .line 651
    .local v0, "ret":[B
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_37

    .line 653
    if-nez v0, :cond_9

    .line 655
    const/4 v2, -0x4

    iput v2, p0, mErrorCode:I

    move-object v0, v1

    .line 656
    goto :goto_9

    .line 651
    .end local v0    # "ret":[B
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getServiceSupport()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 432
    iget v1, p0, mServiceSupport:I

    if-nez v1, :cond_9

    .line 434
    const/4 v1, -0x2

    iput v1, p0, mErrorCode:I

    .line 451
    :cond_8
    :goto_8
    return-object v0

    .line 438
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 440
    const/4 v1, -0x5

    iput v1, p0, mErrorCode:I

    goto :goto_8

    .line 444
    :cond_26
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_29
    invoke-direct {p0}, nativeGetString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "ret":Ljava/lang/String;
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 448
    if-nez v0, :cond_8

    .line 449
    const/4 v1, -0x4

    iput v1, p0, mErrorCode:I

    goto :goto_8

    .line 446
    .end local v0    # "ret":Ljava/lang/String;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public removeString()I
    .registers 5

    .prologue
    .line 501
    iget v1, p0, mServiceSupport:I

    if-nez v1, :cond_a

    .line 503
    const/4 v1, -0x2

    iput v1, p0, mErrorCode:I

    .line 504
    iget v0, p0, mErrorCode:I

    .line 520
    :cond_9
    :goto_9
    return v0

    .line 507
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 509
    const/4 v1, -0x5

    iput v1, p0, mErrorCode:I

    .line 510
    iget v0, p0, mErrorCode:I

    goto :goto_9

    .line 513
    :cond_29
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_2c
    invoke-direct {p0}, nativeRemoveString()I

    move-result v0

    .line 515
    .local v0, "ret":I
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    .line 517
    if-eqz v0, :cond_9

    .line 518
    iput v0, p0, mErrorCode:I

    goto :goto_9

    .line 515
    .end local v0    # "ret":I
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public sessionAccept([B)[B
    .registers 7
    .param p1, "input"    # [B

    .prologue
    .line 535
    iget v2, p0, mServiceSupport:I

    if-nez v2, :cond_9

    .line 537
    const/4 v2, -0x2

    iput v2, p0, mErrorCode:I

    .line 538
    const/4 v1, 0x0

    .line 555
    :cond_8
    :goto_8
    return-object v1

    .line 541
    :cond_9
    sget-object v3, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 543
    :try_start_c
    invoke-direct {p0, p1}, nativeSessionAccept([B)[B
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_17
    .catchall {:try_start_c .. :try_end_f} :catchall_23

    move-result-object v1

    .line 550
    .local v1, "ret":[B
    :goto_10
    :try_start_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_23

    .line 552
    if-nez v1, :cond_8

    .line 553
    const/4 v2, -0x1

    iput v2, p0, mErrorCode:I

    goto :goto_8

    .line 545
    .end local v1    # "ret":[B
    :catch_17
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 548
    .restart local v1    # "ret":[B
    :try_start_19
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":[B
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public sessionComplete([B)I
    .registers 7
    .param p1, "input"    # [B

    .prologue
    .line 569
    iget v2, p0, mServiceSupport:I

    if-nez v2, :cond_a

    .line 571
    const/4 v2, -0x2

    iput v2, p0, mErrorCode:I

    .line 572
    iget v1, p0, mErrorCode:I

    .line 610
    :goto_9
    return v1

    .line 577
    :cond_a
    sget-object v3, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 579
    :try_start_d
    invoke-direct {p0, p1}, nativeSessionComplete([B)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_3a
    .catchall {:try_start_d .. :try_end_10} :catchall_46

    move-result v1

    .line 586
    .local v1, "ret":I
    :goto_11
    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_46

    .line 588
    iget v2, p0, mServiceSupport:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_51

    if-nez v1, :cond_51

    invoke-direct {p0}, nativeisCsUnlockRequest()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 592
    sget-object v2, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v2, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 593
    iget-object v2, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v2, :cond_49

    .line 595
    const-string v2, "ReactiveService"

    const-string v3, "Failed to load FRP Manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v1, -0x7

    goto :goto_9

    .line 581
    .end local v1    # "ret":I
    :catch_3a
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 584
    .restart local v1    # "ret":I
    :try_start_3c
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw v2

    .line 600
    .restart local v1    # "ret":I
    :cond_49
    :try_start_49
    invoke-direct {p0}, wipeLength()V

    .line 601
    iget-object v2, p0, mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_54

    .line 608
    :cond_51
    :goto_51
    iput v1, p0, mErrorCode:I

    goto :goto_9

    .line 603
    :catch_54
    move-exception v0

    .line 604
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 8
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 389
    if-eqz p1, :cond_8

    .line 391
    const/4 v1, -0x3

    iput v1, p0, mErrorCode:I

    .line 392
    iget v0, p0, mErrorCode:I

    .line 418
    :goto_7
    return v0

    .line 395
    :cond_8
    if-nez p1, :cond_1c

    iget v1, p0, mServiceSupport:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_1c

    iget v1, p0, mServiceSupport:I

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1c

    .line 398
    const/4 v1, -0x2

    iput v1, p0, mErrorCode:I

    .line 399
    iget v0, p0, mErrorCode:I

    goto :goto_7

    .line 402
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 404
    const/4 v1, -0x5

    iput v1, p0, mErrorCode:I

    .line 405
    iget v0, p0, mErrorCode:I

    goto :goto_7

    .line 408
    :cond_3b
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 409
    :try_start_3e
    invoke-direct {p0, p1, p2, p3}, nativeSetFlag(IILjava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "ret":I
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_7b

    .line 412
    if-gez v0, :cond_7e

    .line 413
    iput v0, p0, mErrorCode:I

    .line 417
    :goto_47
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 410
    .end local v0    # "ret":I
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1

    .line 415
    .restart local v0    # "ret":I
    :cond_7e
    const/4 v1, 0x0

    iput v1, p0, mErrorCode:I

    goto :goto_47
.end method

.method public setString(Ljava/lang/String;)I
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 467
    iget v1, p0, mServiceSupport:I

    if-nez v1, :cond_a

    .line 469
    const/4 v1, -0x2

    iput v1, p0, mErrorCode:I

    .line 470
    iget v0, p0, mErrorCode:I

    .line 486
    :cond_9
    :goto_9
    return v0

    .line 473
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 475
    const/4 v1, -0x5

    iput v1, p0, mErrorCode:I

    .line 476
    iget v0, p0, mErrorCode:I

    goto :goto_9

    .line 479
    :cond_29
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_2c
    invoke-direct {p0, p1}, nativeSetString(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "ret":I
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    .line 483
    if-eqz v0, :cond_9

    .line 484
    iput v0, p0, mErrorCode:I

    goto :goto_9

    .line 481
    .end local v0    # "ret":I
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public verify(Ljava/lang/String;I)I
    .registers 7
    .param p1, "vt"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .prologue
    .line 674
    iget v1, p0, mServiceSupport:I

    if-nez v1, :cond_a

    .line 676
    const/4 v1, -0x2

    iput v1, p0, mErrorCode:I

    .line 677
    iget v0, p0, mErrorCode:I

    .line 693
    :cond_9
    :goto_9
    return v0

    .line 680
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 682
    const/4 v1, -0x5

    iput v1, p0, mErrorCode:I

    .line 683
    iget v0, p0, mErrorCode:I

    goto :goto_9

    .line 686
    :cond_29
    sget-object v2, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 687
    :try_start_2c
    invoke-direct {p0, p1, p2}, nativeVerify(Ljava/lang/String;I)I

    move-result v0

    .line 688
    .local v0, "ret":I
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    .line 690
    if-eqz v0, :cond_9

    .line 691
    iput v0, p0, mErrorCode:I

    goto :goto_9

    .line 688
    .end local v0    # "ret":I
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method
