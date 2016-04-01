.class public Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateRestrictMode.java"


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 14
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 16
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 25
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, mActivityManager:Landroid/app/ActivityManager;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p3, v0}, registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "restrictmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 35
    iget-object v2, p0, mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 36
    .local v1, "enable":Z
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_2e

    .line 37
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_LOCK_TASK_MODE : reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_2e
    if-eqz v1, :cond_32

    .line 40
    const/4 v2, 0x4

    .line 45
    .end local v1    # "enable":Z
    :goto_31
    return v2

    .line 42
    .restart local v1    # "enable":Z
    :cond_32
    const/4 v2, 0x5

    goto :goto_31

    .line 45
    .end local v1    # "enable":Z
    :cond_34
    const/4 v2, 0x0

    goto :goto_31
.end method
