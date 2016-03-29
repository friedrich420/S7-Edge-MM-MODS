.class public final Lcom/samsung/android/sdk/dualscreen/SDualScreen;
.super Ljava/lang/Object;
.source "SDualScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static enableQueried:Z

.field private static isDualScreenEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->TAG:Ljava/lang/String;

    .line 43
    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    .line 44
    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->initDualScreenFeature()V

    .line 53
    return-void
.end method

.method private initDualScreenFeature()V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->enableQueried:Z

    .line 113
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 114
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDualScreenFeature() : checking feature... ("

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

    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isFeatureEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isDualScreenEnabled:Z

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
