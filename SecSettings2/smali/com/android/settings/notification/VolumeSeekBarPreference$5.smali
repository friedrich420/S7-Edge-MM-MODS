.class Lcom/android/settings/notification/VolumeSeekBarPreference$5;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;
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
    .line 363
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 365
    const-string v0, "VolumeSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$800(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$800(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$900(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizerDTMF:Lcom/android/settings/notification/SeekBarVolumizerDTMF;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$900(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stopSample()V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
