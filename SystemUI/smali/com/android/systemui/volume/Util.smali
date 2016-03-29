.class Lcom/android/systemui/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static AUDIO_MANAGER_FLAGS:[I

.field private static AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

.field private static final HMMAA:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/volume/Util;->HMMAA:Ljava/text/SimpleDateFormat;

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHOW_UI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PLAY_SOUND"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ALLOW_RINGER_MODES"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "REMOVE_SOUND_AND_VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHOW_VIBRATE_HINT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SHOW_SILENT_HINT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FROM_KEY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SHOW_UI_WARNINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DISMISS_UI_WARNINGS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
        0x10000000
    .end array-data
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 132
    sget-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/Util;->bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I
    .param p1, "values"    # [I
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0x2c

    .line 136
    if-nez p0, :cond_0

    const-string v2, ""

    .line 149
    :goto_0
    return-object v2

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 139
    aget v2, p1, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    aget v2, p1, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p0, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_3
    if-eqz p0, :cond_5

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    const-string v2, "UNKNOWN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 179
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x17

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vol."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mediaMetadataToString(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 1
    .param p0, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    .line 92
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 95
    :goto_0
    return-object v2

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->playbackInfoTypeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->volumeProviderControlToString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "vc":Ljava/lang/String;
    const-string v2, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static playbackInfoTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    const-string v0, "LOCAL"

    goto :goto_0

    .line 102
    :pswitch_1
    const-string v0, "REMOTE"

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static playbackStateStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 108
    packed-switch p0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "STATE_NONE"

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "STATE_STOPPED"

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v0, "STATE_PAUSED"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string v0, "STATE_PLAYING"

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .locals 2
    .param p0, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 127
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Util;->playbackStateStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RINGER_MODE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    const-string v0, "RINGER_MODE_SILENT"

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "RINGER_MODE_VIBRATE"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "RINGER_MODE_NORMAL"

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final setVisOrGone(Landroid/view/View;Z)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "vis"    # Z

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v1, p1, :cond_2

    .line 169
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 167
    goto :goto_0

    .line 168
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public static final setVisOrInvis(Landroid/view/View;Z)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "vis"    # Z

    .prologue
    const/4 v0, 0x0

    .line 172
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v1, p1, :cond_2

    .line 174
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public static volumeProviderControlToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "control"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOLUME_CONTROL_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    const-string v0, "VOLUME_CONTROL_ABSOLUTE"

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v0, "VOLUME_CONTROL_FIXED"

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "VOLUME_CONTROL_RELATIVE"

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
