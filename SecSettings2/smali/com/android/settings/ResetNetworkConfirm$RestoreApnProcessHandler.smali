.class Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method public constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 394
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    iput-object p3, p0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 400
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/settings/ResetNetworkConfirm;->DEFAULTAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ResetNetworkConfirm;->access$1300()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
