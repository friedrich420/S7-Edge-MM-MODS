.class Lcom/android/server/smartclip/SmartClipView$4;
.super Landroid/os/Handler;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    .prologue
    .line 782
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 784
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 800
    :goto_6
    return-void

    .line 786
    :pswitch_7
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # invokes: Lcom/android/server/smartclip/SmartClipView;->startAniForLoadingService()V
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$400(Lcom/android/server/smartclip/SmartClipView;)V

    goto :goto_6

    .line 789
    :pswitch_d
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$500(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 790
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$500(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 791
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$500(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 794
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->access$602(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 795
    iget-object v0, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z

    goto :goto_6

    .line 784
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
