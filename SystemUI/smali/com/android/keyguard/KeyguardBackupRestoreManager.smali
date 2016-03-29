.class public Lcom/android/keyguard/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;,
        Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;,
        Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String;

.field private static REQUIRED_SIZE:J

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String;

.field public static RESULT_KEY:Ljava/lang/String;

.field public static SESSION_TIME_KEY:Ljava/lang/String;

.field public static SOURCE_KEY:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSalt:[B

.field private static sKeyguardBackupRestoreManager:Lcom/android/keyguard/KeyguardBackupRestoreManager;

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private mBackupThread:Ljava/lang/Thread;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "RESULT"

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    .line 60
    const-string v0, "ERR_CODE"

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    .line 61
    const-string v0, "REQ_SIZE"

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 62
    const-string v0, "SOURCE"

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    .line 63
    const-string v0, "EXPORT_SESSION_TIME"

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->SESSION_TIME_KEY:Ljava/lang/String;

    .line 65
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "KeyguardBackupRestoreManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sput-object p1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardBackupRestoreManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardBackupRestoreManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .param p2, "x2"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    .param p3, "x3"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardBackupRestoreManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardBackupRestoreManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "createBackupFiles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 246
    const-string v0, "wallpaper/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-nez p4, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {p3, p2, p4, p5}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->encrypt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/util/KeyguardWallpaperUser;>;"
    new-instance v0, Lcom/android/keyguard/util/KeyguardWallpaperUser;

    const/16 v2, 0x65

    invoke-direct {v0, v2, p1}, Lcom/android/keyguard/util/KeyguardWallpaperUser;-><init>(ILjava/lang/String;)V

    .line 269
    .local v0, "object":Lcom/android/keyguard/util/KeyguardWallpaperUser;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v2, Lcom/android/keyguard/util/KeyguardGenerateXML;

    invoke-direct {v2, v1, p2}, Lcom/android/keyguard/util/KeyguardGenerateXML;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "decryptFilePath"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .param p4, "sessiontime"    # Ljava/lang/String;
    .param p5, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    .line 504
    .local v3, "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    .line 506
    .local v4, "errorCode":Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    const/4 v10, 0x0

    .line 507
    .local v10, "fisdecrypt":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 509
    .local v11, "newfosdecrypt":Ljava/io/OutputStream;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v14, "sourcefile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 512
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .end local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    .local v12, "newfosdecrypt":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 514
    .local v13, "readCount":I
    const/16 v2, 0x400

    :try_start_1
    new-array v8, v2, [B

    .line 515
    .local v8, "buffer":[B
    :goto_0
    const/4 v2, 0x0

    const/16 v5, 0x400

    invoke-virtual {v10, v8, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    const/4 v2, -0x1

    if-eq v13, v2, :cond_2

    .line 516
    const/4 v2, 0x0

    invoke-virtual {v12, v8, v2, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 518
    .end local v8    # "buffer":[B
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 519
    .end local v12    # "newfosdecrypt":Ljava/io/OutputStream;
    .end local v13    # "readCount":I
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    .line 521
    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    if-eqz v10, :cond_0

    .line 524
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 526
    :cond_0
    if-eqz v11, :cond_1

    .line 527
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 530
    :cond_1
    const-string v2, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 523
    .end local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v8    # "buffer":[B
    .restart local v12    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v13    # "readCount":I
    :cond_2
    if-eqz v10, :cond_3

    .line 524
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 526
    :cond_3
    if-eqz v12, :cond_4

    .line 527
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 530
    :cond_4
    const-string v2, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    .line 531
    .end local v12    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    goto :goto_2

    .line 523
    .end local v8    # "buffer":[B
    .end local v13    # "readCount":I
    :catchall_0
    move-exception v2

    move-object v15, v2

    :goto_3
    if-eqz v10, :cond_5

    .line 524
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 526
    :cond_5
    if-eqz v11, :cond_6

    .line 527
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 530
    :cond_6
    const-string v2, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 523
    .end local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v12    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v13    # "readCount":I
    :catchall_1
    move-exception v2

    move-object v15, v2

    move-object v11, v12

    .end local v12    # "newfosdecrypt":Ljava/io/OutputStream;
    .restart local v11    # "newfosdecrypt":Ljava/io/OutputStream;
    goto :goto_3

    .line 518
    .end local v13    # "readCount":I
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private static decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "securityLevel"    # I
    .param p2, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 535
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 537
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    .line 538
    .local v1, "iv":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 539
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 540
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 541
    const/16 v3, 0x10

    new-array v3, v3, [B

    sput-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mSalt:[B

    .line 542
    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mSalt:[B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 543
    invoke-static {p2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 548
    :cond_0
    const/4 v3, 0x2

    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 549
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method private disableLiveWallpaper(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 413
    return-void
.end method

.method private static encrypt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "sourceFilepath"    # Ljava/lang/String;
    .param p1, "encryptedFilePath"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I
    .param p3, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, "fis":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 455
    .local v5, "newfos":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wallpaper/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lockscreen_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v2, "encriptFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .end local v3    # "fis":Ljava/io/InputStream;
    .local v4, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7, p2, p3}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    .line 461
    const/4 v6, 0x0

    .line 462
    .local v6, "readCount":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 464
    .local v0, "buffer":[B
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 465
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 467
    .end local v0    # "buffer":[B
    .end local v6    # "readCount":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 468
    .end local v4    # "fis":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    if-eqz v3, :cond_0

    .line 473
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 475
    :cond_0
    if-eqz v5, :cond_1

    .line 476
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 479
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 472
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local v6    # "readCount":I
    :cond_2
    if-eqz v4, :cond_3

    .line 473
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 475
    :cond_3
    if-eqz v5, :cond_7

    .line 476
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_2

    .line 469
    .end local v0    # "buffer":[B
    .end local v6    # "readCount":I
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    if-eqz v3, :cond_4

    .line 473
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 475
    :cond_4
    if-eqz v5, :cond_1

    .line 476
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_5

    .line 473
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 475
    :cond_5
    if-eqz v5, :cond_6

    .line 476
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v7

    .line 472
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_4

    .line 469
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_3

    .line 467
    :catch_3
    move-exception v1

    goto :goto_1

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local v6    # "readCount":I
    :cond_7
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "securityLevel"    # I
    .param p2, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 482
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 484
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    .line 485
    .local v1, "iv":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 486
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 487
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 489
    if-ne p1, v4, :cond_0

    .line 490
    invoke-static {}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->generateEncryptSalt()[B

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mSalt:[B

    .line 491
    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mSalt:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 492
    invoke-static {p2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 497
    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 498
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method private static generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 432
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 433
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 435
    return-object v0
.end method

.method private static generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .param p0, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 440
    const/16 v1, 0x3e8

    .line 441
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 442
    .local v4, "keyLength":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 444
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 445
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 446
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 448
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardBackupRestoreManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardBackupRestoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    .line 171
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    return-object v0
.end method

.method private getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v1, 0x1

    .line 283
    :goto_0
    return v1

    .line 280
    :cond_0
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "isBackup"    # Z
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "sessiontime"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "dir_path"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 290
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-object v0

    .line 292
    :cond_0
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessiontime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushRestoreFiles( basePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v6, Lcom/android/keyguard/util/KeyguardXmlParser;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v6, p1, v1}, Lcom/android/keyguard/util/KeyguardXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    .local v6, "keyguardParser":Lcom/android/keyguard/util/KeyguardXmlParser;
    invoke-virtual {v6}, Lcom/android/keyguard/util/KeyguardXmlParser;->getObject()Lcom/android/keyguard/util/KeyguardWallpaperUser;

    move-result-object v7

    .line 377
    .local v7, "mItem":Lcom/android/keyguard/util/KeyguardWallpaperUser;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/keyguard/util/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "sourcePath":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/keyguard/util/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->splitFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "restoreFileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.systemui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "restoreToFullPath":Ljava/lang/String;
    const-string v1, "/data/data/com.android.systemui/"

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 383
    if-nez p4, :cond_0

    .line 384
    invoke-virtual {p0, v0, v9}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->chageFileAttr(Ljava/lang/String;)V

    .line 386
    const-string v0, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    .end local v0    # "sourcePath":Ljava/lang/String;
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    sget-object v2, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    invoke-direct {p0, p1, v9}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushRestoreFiles( Saved path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .restart local v0    # "sourcePath":Ljava/lang/String;
    :cond_0
    move-object v1, v9

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    .line 388
    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .param p2, "err_code"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    .param p3, "requiredSize"    # Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "sessionTime"    # Ljava/lang/String;

    .prologue
    .line 562
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseToKies( action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err_code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requiredSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    if-eqz p5, :cond_0

    .line 572
    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 576
    sget-object v1, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 577
    const-string v1, "KeyguardBackupRestoreManager"

    const-string v2, "sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    return-void
.end method

.method private setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 403
    return-void
.end method

.method private startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessiontime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBackup( basePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v17, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    .line 194
    .local v17, "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    sget-object v8, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    .line 195
    .local v8, "errorCode":Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    sget-object v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    .line 197
    .local v9, "requiredSize":Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;
    const-wide/16 v12, 0x0

    .line 198
    .local v12, "availableBlocks":J
    const-wide/16 v14, 0x0

    .line 199
    .local v14, "blockSizeInBytes":J
    const-wide/32 v18, 0x40000000

    .line 200
    .local v18, "freeSpaceInBytes":J
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "wallpaperPath":Ljava/lang/String;
    :try_start_0
    new-instance v20, Landroid/os/StatFs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 204
    .local v20, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v12

    .line 205
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v14

    .line 206
    mul-long v18, v12, v14

    .line 207
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBackup( StatFs : availableBlocks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", blockSizeInBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", freeSpaceInBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v20    # "stat":Landroid/os/StatFs;
    :goto_0
    :try_start_1
    sget-wide v2, Lcom/android/keyguard/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v2, v18, v2

    if-gez v2, :cond_0

    .line 217
    sget-object v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .end local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .local v7, "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_start_2
    sget-object v8, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    .line 219
    sget-object v9, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    :goto_1
    const-string v6, "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 210
    .end local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :catch_0
    move-exception v16

    .line 211
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    sget-object v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    .end local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_start_4
    sget-object v8, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 225
    .end local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :cond_1
    if-eqz v5, :cond_2

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->hasFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    .line 226
    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v7, v17

    .end local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    goto :goto_1

    .line 228
    .end local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :cond_2
    sget-object v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 229
    .end local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :try_start_6
    sget-object v8, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 233
    .end local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    :catch_1
    move-exception v16

    move-object/from16 v7, v17

    .line 234
    .end local v17    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v7    # "result":Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;
    .restart local v16    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    .line 235
    sget-object v8, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    goto :goto_1

    .line 233
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v16

    goto :goto_2
.end method

.method private startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessiontime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRestore( basePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lockscreen.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 341
    const-wide/16 v8, 0x0

    .line 342
    .local v8, "availableBlocks":J
    const-wide/16 v10, 0x0

    .line 343
    .local v10, "blockSizeInBytes":J
    const-wide/32 v14, 0x40000000

    .line 347
    .local v14, "freeSpaceInBytes":J
    :try_start_0
    new-instance v13, Landroid/os/StatFs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 348
    .local v13, "stat":Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    .line 349
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    .line 350
    mul-long v14, v8, v10

    .line 351
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRestore( StatFs : availableBlocks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", blockSizeInBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", freeSpaceInBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v13    # "stat":Landroid/os/StatFs;
    :goto_0
    :try_start_1
    sget-wide v2, Lcom/android/keyguard/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v2, v14, v2

    if-gez v2, :cond_0

    .line 361
    const-string v2, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    :goto_1
    return-void

    .line 354
    :catch_0
    move-exception v12

    .line 355
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->disableLiveWallpaper(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 366
    :catch_1
    move-exception v12

    .line 367
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v2, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v5, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public chageFileAttr(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 553
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist File("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 557
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 559
    :cond_0
    return-void
.end method

.method closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "KeyguardBackupRestoreManager"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .prologue
    .line 298
    const-wide/16 v4, 0x0

    .line 299
    .local v4, "fsize":J
    const/4 v7, 0x0

    .line 300
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 301
    .local v9, "fout":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 302
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 305
    .local v6, "outc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 309
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 311
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 312
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyFile( fsize = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    const/4 v2, 0x1

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 323
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    const/4 v2, 0x0

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 323
    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 323
    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 320
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 316
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method public splitFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "temp":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "strFileName":Ljava/lang/String;
    return-object v0
.end method
