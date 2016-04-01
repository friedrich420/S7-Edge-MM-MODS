.class Lcom/android/server/LocationManagerService$6;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 484
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/server/LocationManagerService;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$802(Lcom/android/server/LocationManagerService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 486
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/LocationManagerService;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$902(Lcom/android/server/LocationManagerService;Z)Z

    .line 487
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 491
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/LocationManagerService;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$802(Lcom/android/server/LocationManagerService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 493
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/LocationManagerService;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$902(Lcom/android/server/LocationManagerService;Z)Z

    .line 494
    return-void
.end method
