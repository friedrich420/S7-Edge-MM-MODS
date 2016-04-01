.class Lcom/android/server/wm/CustomStartingWindowManager;
.super Ljava/lang/Object;
.source "CustomStartingWindowData.java"


# static fields
.field private static final KEYGUARDPREVIEW_DIRNAME:Ljava/lang/String; = "keyguardpreview"

.field private static final REVERSESTARTINGWINDOW_DIRNAME:Ljava/lang/String; = "reversestartingwindow"

.field private static final STARTINGWINDOW_DIRNAME:Ljava/lang/String; = "startingwindow"

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowManager"

.field public static final TYPE_KEYGUARD_PREVIEW:I = 0x3

.field public static final TYPE_REVERSE_STARTING_WINDOW:I = 0x2

.field public static final TYPE_STARTING_WINDOW:I = 0x1

.field private static final mCustomImageSystemPath:Ljava/io/File;

.field private static final mKeyguardPreviewPath:Ljava/io/File;

.field private static final mReverseStartingWindowPath:Ljava/io/File;

.field private static final mStartingWindowPath:Ljava/io/File;


# instance fields
.field private final TAG_RESID:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardPreviewResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "startingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, mStartingWindowPath:Ljava/io/File;

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "reversestartingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, mReverseStartingWindowPath:Ljava/io/File;

    .line 252
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string/jumbo v2, "keyguardpreview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, mKeyguardPreviewPath:Ljava/io/File;

    .line 253
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/custom_image"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, mCustomImageSystemPath:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string/jumbo v0, "resId"

    iput-object v0, p0, TAG_RESID:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStartingWindowResId:Ljava/util/Map;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mReverseStartingWindowResId:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKeyguardPreviewResId:Ljava/util/Map;

    .line 260
    const-string v0, "CustomStartingWindowManager"

    const-string v1, "CustomStartingWindow Constructed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 262
    invoke-direct {p0}, restoreAllFromXml()V

    .line 264
    sget-object v0, mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 265
    const-string v0, "CustomStartingWindowManager"

    const-string v1, "CustomStartingWindow custom image dir created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 268
    :cond_3d
    return-void
.end method

.method private removeXml(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "file":Ljava/io/File;
    packed-switch p2, :pswitch_data_60

    .line 394
    :cond_4
    :goto_4
    return-void

    .line 376
    :pswitch_5
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, mStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .restart local v0    # "file":Ljava/io/File;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 380
    :pswitch_29
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, mReverseStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1f

    .line 384
    :pswitch_44
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, mKeyguardPreviewPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1f

    .line 374
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5
        :pswitch_29
        :pswitch_44
    .end packed-switch
.end method

.method private restoreAllFromXml()V
    .registers 15

    .prologue
    .line 465
    sget-object v11, mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_d

    .line 466
    sget-object v11, mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 469
    :cond_d
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 470
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v11, mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 472
    .local v10, "tmpStartingWindowFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object v0, v10

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_53
    if-ge v4, v5, :cond_99

    aget-object v2, v0, v4

    .line 475
    .local v2, "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :try_start_73
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_86} :catch_8d

    .line 485
    const/4 v11, 0x1

    invoke-direct {p0, v2, v11}, restoreFromXml(Ljava/io/File;I)V

    .line 474
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 480
    :catch_8d
    move-exception v1

    .line 481
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_8a

    .line 488
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_99
    sget-object v11, mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a6

    .line 489
    sget-object v11, mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 492
    :cond_a6
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow reverse starting window restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v11, mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 494
    .local v9, "tempReverseStartingWindowFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow reverse starting window file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object v0, v9

    array-length v5, v0

    const/4 v4, 0x0

    :goto_e6
    if-ge v4, v5, :cond_12c

    aget-object v2, v0, v4

    .line 496
    .restart local v2    # "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_106
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 499
    .restart local v3    # "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 500
    .restart local v6    # "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_119
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_119} :catch_120

    .line 506
    const/4 v11, 0x2

    invoke-direct {p0, v2, v11}, restoreFromXml(Ljava/io/File;I)V

    .line 495
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_11d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    .line 501
    :catch_120
    move-exception v1

    .line 502
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_11d

    .line 509
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_12c
    sget-object v11, mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_139

    .line 510
    sget-object v11, mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 513
    :cond_139
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow keyguard preview restoreAllFromXml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v11, mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 515
    .local v8, "tempKeyguardPreviewFiles":[Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow keyguard preview file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object v0, v8

    array-length v5, v0

    const/4 v4, 0x0

    :goto_179
    if-ge v4, v5, :cond_1bf

    aget-object v2, v0, v4

    .line 517
    .restart local v2    # "file":Ljava/io/File;
    const-string v11, "CustomStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :try_start_199
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 520
    .restart local v3    # "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 521
    .restart local v6    # "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1ac
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_199 .. :try_end_1ac} :catch_1b3

    .line 527
    const/4 v11, 0x3

    invoke-direct {p0, v2, v11}, restoreFromXml(Ljava/io/File;I)V

    .line 516
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_1b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_179

    .line 522
    :catch_1b3
    move-exception v1

    .line 523
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "CustomStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1b0

    .line 529
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :cond_1bf
    return-void
.end method

.method private restoreFromXml(Ljava/io/File;I)V
    .registers 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # I

    .prologue
    .line 532
    const/4 v7, 0x0

    .line 533
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 534
    .local v0, "deleteFile":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "fileName":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, "packageName":Ljava/lang/String;
    :try_start_11
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_f1
    .catchall {:try_start_11 .. :try_end_1b} :catchall_ef

    .line 539
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 540
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 542
    :goto_22
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v9, 0x1

    if-eq v2, v9, :cond_dd

    const/4 v9, 0x3

    if-eq v2, v9, :cond_dd

    .line 543
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v2, v9, :cond_6a

    .line 545
    const-string/jumbo v9, "resId"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 546
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 547
    const/4 v9, 0x4

    if-ne v2, v9, :cond_94

    .line 548
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v6, v9, p2}, addCustomLayoutResId(Ljava/lang/String;II)V

    .line 549
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow restored for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_6a
    :goto_6a
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6d} :catch_6e
    .catchall {:try_start_1b .. :try_end_6d} :catchall_ad

    goto :goto_22

    .line 559
    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "name":Ljava/lang/String;
    :catch_6e
    move-exception v1

    move-object v7, v8

    .line 560
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_70
    :try_start_70
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow Failing file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_ef

    .line 561
    const/4 v0, 0x1

    .line 563
    if-eqz v7, :cond_8e

    .line 565
    :try_start_8b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_eb

    .line 569
    :cond_8e
    :goto_8e
    if-eqz v0, :cond_93

    .line 570
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 573
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_93
    :goto_93
    return-void

    .line 551
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_94
    :try_start_94
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow there is no resId for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ac} :catch_6e
    .catchall {:try_start_94 .. :try_end_ac} :catchall_ad

    goto :goto_6a

    .line 563
    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_ad
    move-exception v9

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_af
    if-eqz v7, :cond_b4

    .line 565
    :try_start_b1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_ed

    .line 569
    :cond_b4
    :goto_b4
    if-eqz v0, :cond_b9

    .line 570
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_b9
    throw v9

    .line 554
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_ba
    :try_start_ba
    const-string v9, "CustomStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow Unknown xml event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_dc} :catch_6e
    .catchall {:try_start_ba .. :try_end_dc} :catchall_ad

    goto :goto_6a

    .line 563
    .end local v5    # "name":Ljava/lang/String;
    :cond_dd
    if-eqz v8, :cond_e2

    .line 565
    :try_start_df
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e9

    .line 569
    :cond_e2
    :goto_e2
    if-eqz v0, :cond_f4

    .line 570
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_93

    .line 566
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_e9
    move-exception v9

    goto :goto_e2

    .end local v2    # "event":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_eb
    move-exception v9

    goto :goto_8e

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_ed
    move-exception v10

    goto :goto_b4

    .line 563
    :catchall_ef
    move-exception v9

    goto :goto_af

    .line 559
    :catch_f1
    move-exception v1

    goto/16 :goto_70

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_f4
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_93
.end method

.method private saveToXml(I)Ljava/io/StringWriter;
    .registers 6
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 356
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 357
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 358
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 360
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 362
    const-string/jumbo v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string/jumbo v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 367
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 369
    return-object v0
.end method

.method private writeAll()V
    .registers 6

    .prologue
    .line 451
    iget-object v4, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 452
    .local v3, "startingWindowPackageName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, writeXml(Ljava/lang/String;I)V

    goto :goto_a

    .line 455
    .end local v3    # "startingWindowPackageName":Ljava/lang/String;
    :cond_1b
    iget-object v4, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    .local v2, "reverseStartingWindowPackageName":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, writeXml(Ljava/lang/String;I)V

    goto :goto_25

    .line 459
    .end local v2    # "reverseStartingWindowPackageName":Ljava/lang/String;
    :cond_36
    iget-object v4, p0, mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .local v1, "keyguardPreviewPackageName":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, writeXml(Ljava/lang/String;I)V

    goto :goto_40

    .line 462
    .end local v1    # "keyguardPreviewPackageName":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private writeXml(Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, "pathFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 401
    .local v5, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_10a

    .line 448
    :cond_5
    :goto_5
    return-void

    .line 403
    :pswitch_6
    sget-object v4, mStartingWindowPath:Ljava/io/File;

    .line 404
    iget-object v5, p0, mStartingWindowResId:Ljava/util/Map;

    .line 421
    :goto_a
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, "file":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 425
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    :try_start_12
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_2f} :catch_ac
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_2f} :catch_d6

    .line 426
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_2f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 427
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, saveToXml(I)Ljava/io/StringWriter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 428
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 429
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 430
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow file wrote normally."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_74} :catch_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_74} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_74} :catch_100

    goto :goto_5

    .line 431
    :catch_75
    move-exception v2

    move-object v0, v1

    .line 432
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .local v2, "e":Ljava/io/IOException;
    :goto_77
    if-eqz v3, :cond_7c

    .line 433
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 435
    :cond_7c
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 408
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileOutputStream;
    :pswitch_a0
    sget-object v4, mReverseStartingWindowPath:Ljava/io/File;

    .line 409
    iget-object v5, p0, mReverseStartingWindowResId:Ljava/util/Map;

    .line 410
    goto/16 :goto_a

    .line 413
    :pswitch_a6
    sget-object v4, mKeyguardPreviewPath:Ljava/io/File;

    .line 414
    iget-object v5, p0, mKeyguardPreviewResId:Ljava/util/Map;

    .line 415
    goto/16 :goto_a

    .line 436
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v3    # "file":Ljava/io/FileOutputStream;
    :catch_ac
    move-exception v2

    .line 437
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_ad
    if-eqz v3, :cond_b2

    .line 438
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 440
    :cond_b2
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 441
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d6
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_d7
    if-eqz v3, :cond_dc

    .line 443
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 445
    :cond_dc
    const-string v6, "CustomStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow cannot write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 441
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_100
    move-exception v2

    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_d7

    .line 436
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_103
    move-exception v2

    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_ad

    .line 431
    :catch_106
    move-exception v2

    goto/16 :goto_77

    .line 401
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a0
        :pswitch_a6
    .end packed-switch
.end method


# virtual methods
.method public addCustomLayoutResId(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "type"    # I

    .prologue
    .line 271
    packed-switch p3, :pswitch_data_26

    .line 288
    :goto_3
    return-void

    .line 273
    :pswitch_4
    iget-object v0, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_d
    invoke-direct {p0, p1, p3}, writeXml(Ljava/lang/String;I)V

    goto :goto_3

    .line 277
    :pswitch_11
    iget-object v0, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 281
    :pswitch_1b
    iget-object v0, p0, mKeyguardPreviewResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 271
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_4
        :pswitch_11
        :pswitch_1b
    .end packed-switch
.end method

.method public getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 330
    iget-object v0, p0, mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getStartingWindowLayoutResId(Lcom/android/server/wm/CustomStartingWindowData;I)I
    .registers 9
    .param p1, "data"    # Lcom/android/server/wm/CustomStartingWindowData;
    .param p2, "rot"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 291
    if-eqz p1, :cond_67

    .line 292
    iget-object v2, p1, Lcom/android/server/wm/CustomStartingWindowData;->key:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    .line 293
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "resId":I
    if-eq p2, v5, :cond_14

    const/4 v2, 0x3

    if-ne p2, v2, :cond_33

    .line 296
    :cond_14
    iget v2, p1, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v2, :cond_36

    .line 297
    const-string v2, "CustomStartingWindowManager"

    const-string v4, "CustomStartingWindow reverse layout will show"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 299
    iget-object v2, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 308
    :cond_33
    :goto_33
    if-lez v1, :cond_42

    .line 325
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_35
    :goto_35
    return v1

    .line 302
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v1    # "resId":I
    :cond_36
    iget-object v2, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 303
    invoke-virtual {p0, v0, v5}, removeCustomLayoutResId(Ljava/lang/String;I)V

    goto :goto_33

    .line 312
    :cond_42
    iget v1, p1, Lcom/android/server/wm/CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 313
    if-lez v1, :cond_5b

    .line 314
    iget-object v2, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 315
    iget-object v2, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_35

    .line 319
    :cond_5b
    iget-object v2, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 320
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, removeCustomLayoutResId(Ljava/lang/String;I)V

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_67
    move v1, v3

    .line 325
    goto :goto_35
.end method

.method public removeCustomLayoutResId(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 336
    packed-switch p2, :pswitch_data_1a

    .line 353
    :goto_3
    return-void

    .line 338
    :pswitch_4
    iget-object v0, p0, mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_9
    invoke-direct {p0, p1, p2}, removeXml(Ljava/lang/String;I)V

    goto :goto_3

    .line 342
    :pswitch_d
    iget-object v0, p0, mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 346
    :pswitch_13
    iget-object v0, p0, mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 336
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method public setCustomImage(Landroid/content/pm/ActivityInfo;ILjava/io/FileDescriptor;I)Z
    .registers 25
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "taskUserId"    # I
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "rotation"    # I

    .prologue
    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 578
    .local v2, "before":J
    const/high16 v16, 0x100000

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 579
    .local v4, "buf":[B
    const/4 v10, 0x0

    .line 580
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 581
    .local v14, "metaData":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 582
    .local v5, "customImage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 583
    .local v6, "customImageQualifier":Ljava/lang/String;
    if-eqz v14, :cond_2b

    .line 584
    const-string v16, "com.samsung.android.startingwindow.IMAGE_PATH"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 585
    const-string v16, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 588
    :cond_2b
    if-nez v5, :cond_39

    if-nez v6, :cond_39

    .line 589
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image not support app"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v16, 0x0

    .line 645
    :cond_38
    :goto_38
    return v16

    .line 594
    :cond_39
    sget-object v16, mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_4d

    .line 595
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow mkdir for getFD. but it\'s weird"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v16, mStartingWindowPath:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 599
    :cond_4d
    new-instance v8, Ljava/io/File;

    sget-object v16, mCustomImageSystemPath:Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 600
    .local v8, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    move/from16 v0, p4

    invoke-static {v6, v9, v0}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v8

    .line 603
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    if-nez p3, :cond_a7

    .line 604
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_9b

    .line 605
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 606
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_98

    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image remove"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_98
    :goto_98
    const/16 v16, 0x1

    goto :goto_38

    .line 608
    :cond_9b
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_98

    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow custom image remove called. but there is no file."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 613
    :cond_a7
    const/4 v12, 0x0

    .line 615
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_a8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_b8

    .line 616
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 617
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 619
    :cond_b8
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_bf
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_bf} :catch_146
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_bf} :catch_18e
    .catchall {:try_start_a8 .. :try_end_bf} :catchall_1d6

    .line 620
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_bf
    invoke-virtual {v11, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .line 621
    .local v15, "size":I
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_e9

    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow file size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    div-int/lit16 v0, v15, 0x400

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "KB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_e9
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_bf .. :try_end_ee} :catch_21a
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ee} :catch_211
    .catchall {:try_start_bf .. :try_end_ee} :catchall_20a

    .line 623
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    :try_start_f0
    move/from16 v0, v16

    invoke-virtual {v13, v4, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_f0 .. :try_end_f5} :catch_21e
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f5} :catch_215
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_20d

    .line 632
    if-eqz v11, :cond_fa

    :try_start_f7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 633
    :cond_fa
    if-eqz v13, :cond_ff

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_ff} :catch_126

    .line 640
    :cond_ff
    sget-boolean v16, Lcom/android/server/wm/CustomStartingWindowData;->SAFE_DEBUG:Z

    if-eqz v16, :cond_201

    .line 641
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow setImage done normally "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_121
    const/16 v16, 0x1

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_38

    .line 634
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_126
    move-exception v7

    .line 635
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v16, 0x0

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_38

    .line 624
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "size":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_146
    move-exception v7

    .line 625
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_147
    :try_start_147
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_147 .. :try_end_161} :catchall_1d6

    .line 626
    const/16 v16, 0x0

    .line 632
    if-eqz v10, :cond_168

    :try_start_165
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 633
    :cond_168
    if-eqz v12, :cond_38

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_16d} :catch_16f

    goto/16 :goto_38

    .line 634
    :catch_16f
    move-exception v7

    .line 635
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v16, 0x0

    goto/16 :goto_38

    .line 627
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_18e
    move-exception v7

    .line 628
    .local v7, "e":Ljava/io/IOException;
    :goto_18f
    :try_start_18f
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catchall {:try_start_18f .. :try_end_1a9} :catchall_1d6

    .line 629
    const/16 v16, 0x0

    .line 632
    if-eqz v10, :cond_1b0

    :try_start_1ad
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 633
    :cond_1b0
    if-eqz v12, :cond_38

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b5} :catch_1b7

    goto/16 :goto_38

    .line 634
    :catch_1b7
    move-exception v7

    .line 635
    .local v7, "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v16, 0x0

    goto/16 :goto_38

    .line 631
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1d6
    move-exception v16

    .line 632
    :goto_1d7
    if-eqz v10, :cond_1dc

    :try_start_1d9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 633
    :cond_1dc
    if-eqz v12, :cond_1e1

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1e1} :catch_1e2

    .line 636
    :cond_1e1
    throw v16

    .line 634
    :catch_1e2
    move-exception v7

    .line 635
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v16, "CustomStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v16, 0x0

    goto/16 :goto_38

    .line 643
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :cond_201
    const-string v16, "CustomStartingWindowManager"

    const-string v17, "CustomStartingWindow setImage done normally"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 631
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "size":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_20a
    move-exception v16

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1d7

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catchall_20d
    move-exception v16

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1d7

    .line 627
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "size":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_211
    move-exception v7

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_18f

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catch_215
    move-exception v7

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_18f

    .line 624
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "size":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_21a
    move-exception v7

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_147

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "size":I
    :catch_21e
    move-exception v7

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_147
.end method
