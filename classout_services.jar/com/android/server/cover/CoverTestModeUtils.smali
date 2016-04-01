.class public Lcom/android/server/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field private static final SHIPPED:Z

.field public static final TEST_MODE_NONE:I = -0x1

.field private static sCurrentTestMode:I


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_7
    sput-boolean v0, SHIPPED:Z

    .line 22
    const/4 v0, -0x1

    sput v0, sCurrentTestMode:I

    return-void

    .line 19
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v1, Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, TAG:Ljava/lang/String;

    .line 20
    const-string v1, "cover_test_mode"

    iput-object v1, p0, COVER_TEST_MODE:Ljava/lang/String;

    .line 27
    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/cover/CoverTestModeUtils;)V

    iput-object v1, p0, mTestModeChangeHandler:Landroid/os/Handler;

    .line 40
    sget-boolean v1, SHIPPED:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 41
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_22
    return-void

    .line 45
    :cond_23
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 48
    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object v1, p0, mObserver:Landroid/database/ContentObserver;

    .line 57
    const-string v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    .local v0, "testModeUri":Landroid/net/Uri;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    invoke-direct {p0}, getTestModeFromSetting()I

    move-result v1

    sput v1, sCurrentTestMode:I

    goto :goto_22
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 15
    sget v0, sCurrentTestMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverTestModeUtils;)Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverTestModeUtils;

    .prologue
    .line 15
    iget-object v0, p0, mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverTestModeUtils;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverTestModeUtils;

    .prologue
    .line 15
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverTestModeUtils;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverTestModeUtils;

    .prologue
    .line 15
    invoke-direct {p0}, getTestModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverTestModeUtils;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverTestModeUtils;
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, updateCoverTestMode(I)V

    return-void
.end method

.method public static getTestCoverType()I
    .registers 2

    .prologue
    .line 101
    sget-boolean v0, SHIPPED:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 102
    const/4 v0, -0x1

    .line 105
    :goto_6
    return v0

    :cond_7
    sget v0, sCurrentTestMode:I

    goto :goto_6
.end method

.method private getTestModeFromSetting()I
    .registers 5

    .prologue
    .line 64
    const/4 v1, -0x1

    .line 67
    .local v1, "testMode":I
    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_test_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 72
    :goto_d
    return v1

    .line 68
    :catch_e
    move-exception v0

    .line 69
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method public static isTestMode()Z
    .registers 2

    .prologue
    .line 97
    sget-boolean v0, SHIPPED:Z

    if-nez v0, :cond_b

    sget v0, sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private updateCoverTestMode(I)V
    .registers 7
    .param p1, "currentTestMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget v0, sCurrentTestMode:I

    if-ne v0, p1, :cond_2b

    .line 94
    :cond_2a
    :goto_2a
    return-void

    .line 83
    :cond_2b
    iget-object v0, p0, mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-eqz v0, :cond_2a

    .line 87
    sget v0, sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 88
    iget-object v0, p0, mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    sget v1, sCurrentTestMode:I

    invoke-interface {v0, v1, v4}, Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 91
    :cond_3b
    sput p1, sCurrentTestMode:I

    .line 93
    iget-object v0, p0, mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2a
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 112
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method
