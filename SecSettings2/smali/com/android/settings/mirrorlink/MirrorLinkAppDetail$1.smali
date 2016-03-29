.class Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;
.super Landroid/os/Handler;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e13c1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e13c2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
