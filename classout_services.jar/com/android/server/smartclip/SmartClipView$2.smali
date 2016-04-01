.class Lcom/android/server/smartclip/SmartClipView$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
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
    .line 525
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 527
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 529
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z
    invoke-static {v1}, Lcom/android/server/smartclip/SmartClipView;->access$000(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 530
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->access$002(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 538
    :cond_1b
    :goto_1b
    return-void

    .line 533
    :cond_1c
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z
    invoke-static {v1}, Lcom/android/server/smartclip/SmartClipView;->access$100(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 534
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SmartClipView;

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SmartClipView;->access$102(Lcom/android/server/smartclip/SmartClipView;Z)Z

    goto :goto_1b
.end method
