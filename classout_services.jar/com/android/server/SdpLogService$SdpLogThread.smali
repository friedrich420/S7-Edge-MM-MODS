.class Lcom/android/server/SdpLogService$SdpLogThread;
.super Ljava/lang/Thread;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpLogService;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, this$0:Lcom/android/server/SdpLogService;

    .line 119
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    iget-object v0, p0, this$0:Lcom/android/server/SdpLogService;

    new-instance v1, Lcom/android/server/SdpLogService$SdpLogHandler;

    iget-object v2, p0, this$0:Lcom/android/server/SdpLogService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;-><init>(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$1;)V

    # setter for: Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;
    invoke-static {v0, v1}, Lcom/android/server/SdpLogService;->access$002(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)Lcom/android/server/SdpLogService$SdpLogHandler;

    .line 124
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 125
    return-void
.end method
