.class Lcom/android/settings/DualSoundRingtoneSettings$1;
.super Landroid/os/Handler;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DualSoundRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSoundRingtoneSettings;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/android/settings/DualSoundRingtoneSettings;

    # getter for: Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/DualSoundRingtoneSettings;->access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
