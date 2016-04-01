.class Lcom/android/server/cover/CoverHideAnimator$1;
.super Landroid/os/Handler;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverHideAnimator;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$000(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 66
    :goto_24
    return-void

    .line 59
    :pswitch_25
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/cover/CoverHideAnimator;->handleStartAnimation()V
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$100(Lcom/android/server/cover/CoverHideAnimator;)V

    goto :goto_24

    .line 62
    :pswitch_2b
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/cover/CoverHideAnimator;->handleCancelAnimation()V
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$200(Lcom/android/server/cover/CoverHideAnimator;)V

    goto :goto_24

    .line 57
    nop

    :pswitch_data_32
    .packed-switch 0x65
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method
