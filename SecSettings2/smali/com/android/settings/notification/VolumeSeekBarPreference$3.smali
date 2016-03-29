.class Lcom/android/settings/notification/VolumeSeekBarPreference$3;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


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
    .line 235
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$500(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$600(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$502(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    .line 257
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z
    invoke-static {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$602(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    .line 258
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$700(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$400(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 252
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 2
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/settings/notification/VolumeSeekBarPreference;->requestAudioFocus()Z
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$3;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 241
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "SeekBarVolumizer onSampleStarting() : request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "SeekBarVolumizer : can\'t request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
