.class public Lcom/android/server/cocktailbar/mode/PrivateCarMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateCarMode.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 11
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateCarMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 13
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
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.automotive.drivelink.carmodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p3, v0}, registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "carmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sec.android.automotive.drivelink.carmodechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 26
    const-string v3, "car_mode_state"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 27
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 28
    const/4 v2, 0x2

    .line 33
    .end local v1    # "state":I
    :cond_17
    :goto_17
    return v2

    .line 30
    .restart local v1    # "state":I
    :cond_18
    const/4 v2, 0x3

    goto :goto_17
.end method
