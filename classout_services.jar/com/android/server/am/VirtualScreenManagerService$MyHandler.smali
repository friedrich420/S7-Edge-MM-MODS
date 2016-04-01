.class Lcom/android/server/am/VirtualScreenManagerService$MyHandler;
.super Landroid/os/Handler;
.source "VirtualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VirtualScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VirtualScreenManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/VirtualScreenManagerService;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, this$0:Lcom/android/server/am/VirtualScreenManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/VirtualScreenManagerService;Lcom/android/server/am/VirtualScreenManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/VirtualScreenManagerService;
    .param p2, "x1"    # Lcom/android/server/am/VirtualScreenManagerService$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/VirtualScreenManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2e

    .line 106
    :goto_5
    return-void

    .line 100
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "displayId":I
    const-string v1, "VirtualScreenManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() : PAUSE_VIRTUAL_SCREEN_MSG d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, this$0:Lcom/android/server/am/VirtualScreenManagerService;

    # invokes: Lcom/android/server/am/VirtualScreenManagerService;->handlePauseVirtualScreen(I)V
    invoke-static {v1, v0}, Lcom/android/server/am/VirtualScreenManagerService;->access$100(Lcom/android/server/am/VirtualScreenManagerService;I)V

    goto :goto_5

    .line 98
    nop

    :pswitch_data_2e
    .packed-switch 0x3e9
        :pswitch_6
    .end packed-switch
.end method
