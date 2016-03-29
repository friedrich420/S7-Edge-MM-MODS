.class Lcom/android/settings/notification/VolumeSeekBarPreference$2;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 223
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "onProgressChanged changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$400(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 227
    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)V
    .locals 2
    .param p1, "sbv"    # Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/settings/notification/VolumeSeekBarPreference;->requestAudioFocus()Z
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "SeekBarVolumizerDTMF requestAudioFocus() return true : request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "SeekBarVolumizerDTMF : can\'t request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
