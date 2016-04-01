.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;
.super Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_19

    .line 140
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 141
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iput-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    .line 142
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    .line 144
    :cond_19
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method
