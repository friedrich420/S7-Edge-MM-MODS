.class Lcom/android/server/SdpLogService$SdpLogHandler;
.super Landroid/os/Handler;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpLogService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpLogService;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, this$0:Lcom/android/server/SdpLogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpLogService;
    .param p2, "x1"    # Lcom/android/server/SdpLogService$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, <init>(Lcom/android/server/SdpLogService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_a

    .line 139
    const-string v1, "System Ready!"

    # invokes: Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$200(Ljava/lang/String;)V

    .line 148
    :cond_9
    :goto_9
    return-void

    .line 140
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 141
    const-string v1, "Save into File!"

    # invokes: Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$200(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, this$0:Lcom/android/server/SdpLogService;

    # invokes: Lcom/android/server/SdpLogService;->saveToFile()V
    invoke-static {v1}, Lcom/android/server/SdpLogService;->access$300(Lcom/android/server/SdpLogService;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_9

    .line 144
    :catch_1a
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SdpLogService.Handler"

    const-string v2, "Exception occurred during message handling..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
