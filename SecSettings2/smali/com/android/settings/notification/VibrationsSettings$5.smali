.class Lcom/android/settings/notification/VibrationsSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "VibrationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VibrationsSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VibrationsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VibrationsSettings;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/notification/VibrationsSettings$5;->this$0:Lcom/android/settings/notification/VibrationsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x2

    # getter for: Lcom/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/VibrationsSettings;->access$500()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings$5;->this$0:Lcom/android/settings/notification/VibrationsSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings$5;->this$0:Lcom/android/settings/notification/VibrationsSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings$5;->this$0:Lcom/android/settings/notification/VibrationsSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings$5;->this$0:Lcom/android/settings/notification/VibrationsSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
