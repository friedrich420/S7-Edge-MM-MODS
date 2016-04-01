.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxMode.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUserId:I

.field private mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 17
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
    .param p5, "serviceListener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, mCurrentUserId:I

    .line 28
    iput-object p5, p0, mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p3, v0}, registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "knoxmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/16 v9, 0x64

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "action":Ljava/lang/String;
    const-string v0, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 39
    const-string/jumbo v0, "userId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "userId":I
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_33

    .line 41
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_ACTION_LAUNCH_INFO : userId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_33
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v8

    .line 84
    .end local v2    # "userId":I
    :goto_3c
    return v0

    .line 46
    .restart local v2    # "userId":I
    :cond_3d
    const/4 v3, 0x0

    .line 47
    .local v3, "currentUserType":I
    const/4 v4, 0x0

    .line 48
    .local v4, "newUserType":I
    const/4 v5, 0x0

    .line 49
    .local v5, "modeId":I
    if-lt v2, v9, :cond_59

    .line 50
    iget v0, p0, mCurrentUserId:I

    if-ge v0, v9, :cond_56

    .line 51
    const/4 v3, 0x1

    .line 55
    :goto_47
    const/16 v4, 0x100

    .line 56
    const/4 v5, 0x2

    .line 62
    :cond_4a
    :goto_4a
    iget-object v0, p0, mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v1, p0, mCurrentUserId:I

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 64
    iput v2, p0, mCurrentUserId:I

    move v0, v8

    .line 65
    goto :goto_3c

    .line 53
    :cond_56
    const/16 v3, 0x100

    goto :goto_47

    .line 57
    :cond_59
    iget v0, p0, mCurrentUserId:I

    if-lt v0, v9, :cond_4a

    if-ge v2, v9, :cond_4a

    .line 58
    const/16 v3, 0x100

    .line 59
    const/16 v4, 0x100

    .line 60
    const/4 v5, 0x2

    goto :goto_4a

    .line 84
    .end local v2    # "userId":I
    .end local v3    # "currentUserType":I
    .end local v4    # "newUserType":I
    .end local v5    # "modeId":I
    :cond_65
    const/4 v0, 0x0

    goto :goto_3c
.end method
