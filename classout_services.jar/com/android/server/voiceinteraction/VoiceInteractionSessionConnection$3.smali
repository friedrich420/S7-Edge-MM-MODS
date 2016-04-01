.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;
.super Lcom/android/internal/os/IResultReceiver$Stub;
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
    .line 122
    iput-object p1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_19

    .line 127
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 128
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iput-object p2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    .line 129
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    .line 131
    :cond_19
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method
