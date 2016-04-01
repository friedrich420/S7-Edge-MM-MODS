.class Lcom/android/server/policy/PhoneWindowManager$14;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 3

    .prologue
    .line 5991
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 5994
    if-eqz p1, :cond_19

    .line 5996
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_1a

    .line 5999
    :goto_9
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 6000
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iget-boolean v2, p0, val$awakenFromDreams:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 6002
    :cond_19
    return-void

    .line 5997
    :catch_1a
    move-exception v0

    goto :goto_9
.end method
