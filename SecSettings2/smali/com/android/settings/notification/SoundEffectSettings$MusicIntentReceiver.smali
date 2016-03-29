.class Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundEffectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundEffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundEffectSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/SoundEffectSettings;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/SoundEffectSettings;Lcom/android/settings/notification/SoundEffectSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;
    .param p2, "x1"    # Lcom/android/settings/notification/SoundEffectSettings$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "action":Ljava/lang/String;
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 153
    const-string v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 154
    .local v9, "sinkState":I
    const-string v12, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 156
    .local v8, "previousSinkState":I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_3

    const/4 v12, 0x1

    if-eq v8, v12, :cond_0

    if-nez v8, :cond_3

    .line 158
    :cond_0
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x2

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    .line 220
    .end local v8    # "previousSinkState":I
    .end local v9    # "sinkState":I
    :cond_1
    :goto_0
    const-string v12, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 222
    const-string v12, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 223
    .local v11, "stream":I
    const-string v12, "SoundEffectSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "action : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " In Stream Devices changed. Stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 227
    const-string v12, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 228
    .local v5, "newDevice":I
    const-string v12, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 230
    .local v6, "oldDevice":I
    const-string v12, "SoundEffectSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New device : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", old : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v12, 0x2

    if-ne v5, v12, :cond_15

    .line 232
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    .line 243
    .end local v5    # "newDevice":I
    .end local v6    # "oldDevice":I
    .end local v11    # "stream":I
    :cond_2
    :goto_1
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # invokes: Lcom/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$200(Lcom/android/settings/notification/SoundEffectSettings;)V

    .line 244
    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;
    invoke-static {}, Lcom/android/settings/notification/SoundEffectSettings;->access$300()[Lcom/android/settings/notification/SettingPref;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_18

    aget-object v7, v2, v3

    .line 245
    .local v7, "pref":Lcom/android/settings/notification/SettingPref;
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$400(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 159
    .end local v2    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "pref":Lcom/android/settings/notification/SettingPref;
    .restart local v8    # "previousSinkState":I
    .restart local v9    # "sinkState":I
    :cond_3
    if-eqz v9, :cond_4

    const/4 v12, 0x3

    if-ne v9, v12, :cond_1

    .line 160
    :cond_4
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 161
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x1

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 162
    :cond_5
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 163
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x3

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 168
    .end local v8    # "previousSinkState":I
    .end local v9    # "sinkState":I
    :cond_7
    const-string v12, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 170
    const-string v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 171
    .restart local v9    # "sinkState":I
    const-string v12, "SoundEffectSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BT Play state changed, new state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v12, 0xa

    if-ne v9, v12, :cond_a

    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$000(Lcom/android/settings/notification/SoundEffectSettings;)I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a

    .line 174
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$100(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$000(Lcom/android/settings/notification/SoundEffectSettings;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    .line 176
    :cond_8
    const-string v12, "SoundEffectSettings"

    const-string v13, "Music is routed to WFD, unless STREAM_DEVICES_CHANGED is received as BT for Music"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x2

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 180
    :cond_a
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    # getter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12}, Lcom/android/settings/notification/SoundEffectSettings;->access$000(Lcom/android/settings/notification/SoundEffectSettings;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 183
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 184
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x1

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 185
    :cond_b
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 186
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x3

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 188
    :cond_c
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 191
    .end local v9    # "sinkState":I
    :cond_d
    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 192
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 193
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x1

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 194
    :cond_e
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 195
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x2

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 196
    :cond_f
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 197
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x3

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 199
    :cond_10
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 201
    :cond_11
    const-string v12, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 203
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 204
    .local v10, "state":I
    const-string v12, "SoundEffectSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_WIFIDISPLAY_STATE_CHANGED state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v12, 0x1

    if-ne v10, v12, :cond_12

    .line 207
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x3

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 209
    :cond_12
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 210
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x1

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 211
    :cond_13
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v12}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 212
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x2

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 214
    :cond_14
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_0

    .line 233
    .end local v10    # "state":I
    .restart local v5    # "newDevice":I
    .restart local v6    # "oldDevice":I
    .restart local v11    # "stream":I
    :cond_15
    const/4 v12, 0x4

    if-ne v5, v12, :cond_16

    .line 234
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x1

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 235
    :cond_16
    const/16 v12, 0x80

    if-ne v5, v12, :cond_17

    .line 236
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x2

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 237
    :cond_17
    const v12, 0x8000

    if-ne v5, v12, :cond_2

    .line 238
    iget-object v12, p0, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;->this$0:Lcom/android/settings/notification/SoundEffectSettings;

    const/4 v13, 0x3

    # setter for: Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I
    invoke-static {v12, v13}, Lcom/android/settings/notification/SoundEffectSettings;->access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I

    goto/16 :goto_1

    .line 247
    .end local v5    # "newDevice":I
    .end local v6    # "oldDevice":I
    .end local v11    # "stream":I
    .restart local v2    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_18
    return-void
.end method
