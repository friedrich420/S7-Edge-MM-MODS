.class final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_SESSIONS_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    .prologue
    .line 1325
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1330
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1335
    :goto_5
    return-void

    .line 1332
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3600(Lcom/android/server/media/MediaSessionService;I)V

    goto :goto_5

    .line 1330
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public post(III)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1338
    invoke-virtual {p0, p1, p2, p3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1339
    return-void
.end method
