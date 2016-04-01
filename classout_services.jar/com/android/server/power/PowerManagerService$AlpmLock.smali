.class Lcom/android/server/power/PowerManagerService$AlpmLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlpmLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4688
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    .line 4689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4690
    iput-object p2, p0, binder:Landroid/os/IBinder;

    .line 4693
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 4697
    :goto_b
    return-void

    .line 4694
    :catch_c
    move-exception v0

    .line 4695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4699
    const-string v0, "PowerManagerService"

    const-string v1, "ALPM binder is died"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, binder:Landroid/os/IBinder;

    # invokes: Lcom/android/server/power/PowerManagerService;->setAlpmModeInternal(IIILandroid/os/IBinder;)V
    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;IIILandroid/os/IBinder;)V

    .line 4701
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->initAlpm()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)V

    .line 4702
    return-void
.end method
