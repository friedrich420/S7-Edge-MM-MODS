.class Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .registers 2

    .prologue
    .line 886
    iput-object p1, p0, this$0:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 891
    iget-object v0, p0, this$0:Lcom/android/internal/util/AsyncChannel;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 892
    iget-object v0, p0, this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->access$000(Lcom/android/internal/util/AsyncChannel;I)V

    .line 893
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 897
    iget-object v0, p0, this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->access$600(Lcom/android/internal/util/AsyncChannel;I)V

    .line 898
    return-void
.end method
