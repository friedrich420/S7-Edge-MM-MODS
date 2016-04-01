.class public Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKioskMDMMode.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 15
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 17
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
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.edm.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p3, v0}, registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string/jumbo v0, "kioskmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 5

    .prologue
    .line 52
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v3, "isInformationStreamAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "isInformationAllowedAllowed":I
    if-nez v0, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.edm.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 30
    const-string v2, "com.samsung.edm.intent.extra.BLOCKED_STATUS"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 31
    const/4 v1, 0x2

    .line 36
    :cond_16
    :goto_16
    return v1

    .line 33
    :cond_17
    const/4 v1, 0x3

    goto :goto_16
.end method
