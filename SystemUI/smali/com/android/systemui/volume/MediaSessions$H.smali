.class final Lcom/android/systemui/volume/MediaSessions$H;
.super Landroid/os/Handler;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/MediaSessions;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    .line 353
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/volume/MediaSessions$1;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/MediaSessions$H;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    # getter for: Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;
    invoke-static {v1}, Lcom/android/systemui/volume/MediaSessions;->access$1000(Lcom/android/systemui/volume/MediaSessions;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/ISessionController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/MediaSessions;->onRemoteVolumeChangedH(Landroid/media/session/ISessionController;I)V
    invoke-static {v1, v0, v2}, Lcom/android/systemui/volume/MediaSessions;->access$1100(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;I)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/ISessionController;

    # invokes: Lcom/android/systemui/volume/MediaSessions;->onUpdateRemoteControllerH(Landroid/media/session/ISessionController;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/MediaSessions;->access$1200(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;)V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
