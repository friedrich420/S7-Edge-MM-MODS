.class final Lcom/android/server/policy/GlobalActions$RebootAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 4

    .prologue
    .line 2756
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    .line 2758
    const v0, 0x1080030

    const v1, 0x104011d

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 2760
    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 6

    .prologue
    .line 2775
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2777
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2782
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :goto_11
    return-void

    .line 2778
    :catch_12
    move-exception v0

    .line 2779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GlobalActions"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 2769
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 2786
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 2764
    const/4 v0, 0x1

    return v0
.end method
