.class final Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeupPreventionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2178
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    .line 2179
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 2203
    :cond_5
    :goto_5
    return-void

    .line 2186
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2187
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mPocketHandler: MSG_REGISTER_POCKET_SENSOR"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2190
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPocketSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    const/16 v2, 0x2a

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPocketHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    goto :goto_5

    .line 2195
    :pswitch_38
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2196
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mPocketHandler: MSG_UNREGISTER_POCKET_SENSOR"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1602(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2199
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPocketSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    goto :goto_5

    .line 2184
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_38
    .end packed-switch
.end method
