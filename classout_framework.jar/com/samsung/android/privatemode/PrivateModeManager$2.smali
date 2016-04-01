.class Lcom/samsung/android/privatemode/PrivateModeManager$2;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/PrivateModeManager;->bindPrivateModeManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/privatemode/PrivateModeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeManager;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, this$0:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 204
    const-string v1, "PPS_PrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z
    invoke-static {v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$102(Z)Z

    .line 206
    invoke-static {p2}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    move-result-object v1

    # setter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    invoke-static {v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$202(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    .line 208
    :try_start_2e
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 209
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;-><init>(Lcom/samsung/android/privatemode/PrivateModeManager$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_41

    .line 228
    :cond_40
    :goto_40
    return-void

    .line 225
    :catch_41
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, this$0:Lcom/samsung/android/privatemode/PrivateModeManager;

    const-string/jumbo v2, "onServiceConnected"

    const/4 v3, 0x0

    # invokes: Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 197
    const-string v0, "PPS_PrivateModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    # setter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z
    invoke-static {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$102(Z)Z

    .line 199
    const/4 v0, 0x0

    # setter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    invoke-static {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$202(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    .line 200
    return-void
.end method
