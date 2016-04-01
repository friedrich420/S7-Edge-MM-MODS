.class public Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mFocusDuckBehavior:I

.field mHasFocusListener:Z

.field mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .registers 8
    .param p2, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p4, "hasFocusListener"    # Z

    .prologue
    .line 9084
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    .line 9085
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 9081
    const/4 v0, 0x0

    iput v0, p0, mFocusDuckBehavior:I

    .line 9086
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":ap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # operator++ for: Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$15208(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, setRegistration(Ljava/lang/String;)V

    .line 9087
    iput-object p3, p0, mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9088
    iput-boolean p4, p0, mHasFocusListener:Z

    .line 9089
    iget-boolean v0, p0, mHasFocusListener:Z

    if-eqz v0, :cond_40

    .line 9090
    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 9092
    :cond_40
    invoke-virtual {p0}, connectMixes()V

    .line 9093
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 9096
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 9097
    :try_start_7
    const-string v0, "AudioPolicyProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9098
    invoke-virtual {p0}, release()V

    .line 9099
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9100
    monitor-exit v1

    .line 9101
    return-void

    .line 9100
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method connectMixes()V
    .registers 3

    .prologue
    .line 9118
    iget-object v0, p0, mMixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 9119
    return-void
.end method

.method getRegistrationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9104
    invoke-virtual {p0}, getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 9108
    iget v0, p0, mFocusDuckBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 9109
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 9111
    :cond_f
    iget-boolean v0, p0, mHasFocusListener:Z

    if-eqz v0, :cond_1e

    .line 9112
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 9114
    :cond_1e
    iget-object v0, p0, mMixes:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 9115
    return-void
.end method
