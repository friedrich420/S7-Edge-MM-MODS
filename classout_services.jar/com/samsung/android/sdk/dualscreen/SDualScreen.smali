.class public final Lcom/samsung/android/sdk/dualscreen/SDualScreen;
.super Ljava/lang/Object;
.source "SDualScreen.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DUALSCREEN_BASIC_FEATURE:I = 0x1

.field static final DUALSCREEN_SDK_VERSION_CODE:I = 0x9

.field static final DUALSCREEN_SDK_VERSION_NAME:Ljava/lang/String; = "0.8b"

.field private static final TAG:Ljava/lang/String;

.field private static enableQueried:Z

.field private static isDualScreenEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 43
    sput-boolean v1, enableQueried:Z

    .line 44
    sput-boolean v1, isDualScreenEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, initDualScreenFeature()V

    .line 53
    return-void
.end method

.method private initDualScreenFeature()V
    .registers 5

    .prologue
    .line 111
    :try_start_0
    sget-boolean v1, enableQueried:Z

    if-nez v1, :cond_36

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, enableQueried:Z

    .line 113
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 114
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_36

    .line 115
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initDualScreenFeature() : checking feature... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FEATURE_DUALSCREEN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;->FEATURE_DUALSCREEN:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, isDualScreenEnabled:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 123
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :cond_36
    :goto_36
    return-void

    .line 121
    :catch_37
    move-exception v1

    goto :goto_36
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    .prologue
    .line 96
    const/16 v0, 0x9

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "0.8b"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_22

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 66
    :cond_22
    sget-boolean v0, isDualScreenEnabled:Z

    if-nez v0, :cond_2f

    .line 67
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "The device is not supported."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 70
    :cond_2f
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .registers 3
    .param p1, "feature"    # I

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_8

    .line 85
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 82
    :pswitch_5
    sget-boolean v0, isDualScreenEnabled:Z

    goto :goto_4

    .line 80
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
