.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 299
    iput-object p1, p0, this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 305
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_6a

    .line 369
    :cond_5
    :goto_5
    return-void

    .line 308
    :sswitch_6
    iget-object v1, p0, this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 309
    const-string v1, "KiesUsbManager"

    const-string v2, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_5

    .line 366
    :catch_13
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1a
    :try_start_1a
    const-string v1, "KiesUsbManager"

    const-string v2, "KiesUsbManagerHandler -> UsbMode.offline"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 345
    :sswitch_22
    iget-object v1, p0, this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentChargingMode()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto :goto_5

    .line 351
    :sswitch_28
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTwiceReset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isbootcomplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 353
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v1, :cond_5

    .line 354
    iget-object v1, p0, this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_68} :catch_13

    goto :goto_5

    .line 305
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_6
        0x1f40 -> :sswitch_22
        0x2328 -> :sswitch_28
    .end sparse-switch
.end method
