.class Lcom/android/settings/notification/NotificationSettings$16;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1700(Lcom/android/settings/notification/NotificationSettings;)V

    .line 1126
    const/4 v1, 0x2

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$16;->this$0:Lcom/android/settings/notification/NotificationSettings;

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
