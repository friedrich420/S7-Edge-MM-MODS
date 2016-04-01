.class Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x9

.field private static final MSG_SEND_EVENT:I = 0x6

.field private static final MSG_UPDATE_EXTRAS:I = 0x5

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field private static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field private static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1314
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1315
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1316
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1319
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 1347
    :goto_5
    :pswitch_5
    return-void

    .line 1321
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1324
    :pswitch_c
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1327
    :pswitch_12
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1330
    :pswitch_18
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3800(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1333
    :pswitch_1e
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1336
    :pswitch_24
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->access$4000(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    .line 1342
    :pswitch_32
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1345
    :pswitch_38
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4100(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_5

    .line 1319
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_5
        :pswitch_32
        :pswitch_38
    .end packed-switch
.end method

.method public post(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, post(ILjava/lang/Object;)V

    .line 1351
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1354
    invoke-virtual {p0, p1, p2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1355
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1358
    invoke-virtual {p0, p1, p2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1359
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1361
    return-void
.end method
