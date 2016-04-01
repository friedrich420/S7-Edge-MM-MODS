.class public Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateEmergencyMode.java"


# static fields
.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 18
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

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
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string/jumbo v0, "emergencymode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 35
    const-string/jumbo v5, "reason"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "reason":I
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_31

    .line 37
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMERGENCY_STATE_CHANGED : reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_31
    if-ne v2, v3, :cond_34

    .line 52
    .end local v2    # "reason":I
    :goto_33
    return v3

    .line 41
    .restart local v2    # "reason":I
    :cond_34
    const/4 v3, 0x5

    if-ne v2, v3, :cond_65

    .line 42
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 43
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "start cocktailbarservice"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.cocktailbarservice"

    const-string v4, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 48
    .end local v1    # "i":Landroid/content/Intent;
    :cond_63
    const/4 v3, 0x3

    goto :goto_33

    .line 50
    :cond_65
    const/4 v3, 0x1

    goto :goto_33

    .end local v2    # "reason":I
    :cond_67
    move v3, v4

    .line 52
    goto :goto_33
.end method
