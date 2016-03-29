.class Lcom/android/settings/notification/NotificationSettings$14;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->initSoundMode()V
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
    .line 937
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$14;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 940
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 941
    .local v1, "val":I
    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 960
    :goto_0
    return v5

    .line 944
    :cond_0
    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/settings/notification/NotificationSettings;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "extraText":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 958
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings$14;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "SDMD"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :pswitch_0
    const-string v0, "Mute"

    .line 950
    goto :goto_1

    .line 952
    :pswitch_1
    const-string v0, "Vibrate"

    .line 953
    goto :goto_1

    .line 955
    :pswitch_2
    const-string v0, "Sound"

    goto :goto_1

    .line 947
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
