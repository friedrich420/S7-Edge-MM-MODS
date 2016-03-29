.class Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;
.super Landroid/os/Handler;
.source "SViewCoverZeroUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->refreshChildView()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
