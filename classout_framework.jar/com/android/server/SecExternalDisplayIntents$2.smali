.class synthetic Lcom/android/server/SecExternalDisplayIntents$2;
.super Ljava/lang/Object;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 232
    invoke-static {}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    :try_start_9
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_16d

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RearCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_16a

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_FrontCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_167

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_164

    :goto_35
    :try_start_35
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_161

    :goto_40
    :try_start_40
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_15e

    :goto_4b
    :try_start_4b
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_15b

    :goto_56
    :try_start_56
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_158

    :goto_62
    :try_start_62
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_155

    :goto_6e
    :try_start_6e
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_152

    :goto_7a
    :try_start_7a
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_14f

    :goto_86
    :try_start_86
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_14c

    :goto_92
    :try_start_92
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_149

    :goto_9e
    :try_start_9e
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_146

    :goto_aa
    :try_start_aa
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_143

    :goto_b6
    :try_start_b6
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_141

    :goto_c2
    :try_start_c2
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_13f

    :goto_ce
    :try_start_ce
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_13d

    :goto_da
    :try_start_da
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_13b

    :goto_e6
    :try_start_e6
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_139

    :goto_f2
    :try_start_f2
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_137

    :goto_fe
    :try_start_fe
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_135

    :goto_10a
    :try_start_10a
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_133

    :goto_116
    :try_start_116
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkConnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_131

    :goto_122
    :try_start_122
    sget-object v0, $SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkDisconnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_12f

    :goto_12e
    return-void

    :catch_12f
    move-exception v0

    goto :goto_12e

    :catch_131
    move-exception v0

    goto :goto_122

    :catch_133
    move-exception v0

    goto :goto_116

    :catch_135
    move-exception v0

    goto :goto_10a

    :catch_137
    move-exception v0

    goto :goto_fe

    :catch_139
    move-exception v0

    goto :goto_f2

    :catch_13b
    move-exception v0

    goto :goto_e6

    :catch_13d
    move-exception v0

    goto :goto_da

    :catch_13f
    move-exception v0

    goto :goto_ce

    :catch_141
    move-exception v0

    goto :goto_c2

    :catch_143
    move-exception v0

    goto/16 :goto_b6

    :catch_146
    move-exception v0

    goto/16 :goto_aa

    :catch_149
    move-exception v0

    goto/16 :goto_9e

    :catch_14c
    move-exception v0

    goto/16 :goto_92

    :catch_14f
    move-exception v0

    goto/16 :goto_86

    :catch_152
    move-exception v0

    goto/16 :goto_7a

    :catch_155
    move-exception v0

    goto/16 :goto_6e

    :catch_158
    move-exception v0

    goto/16 :goto_62

    :catch_15b
    move-exception v0

    goto/16 :goto_56

    :catch_15e
    move-exception v0

    goto/16 :goto_4b

    :catch_161
    move-exception v0

    goto/16 :goto_40

    :catch_164
    move-exception v0

    goto/16 :goto_35

    :catch_167
    move-exception v0

    goto/16 :goto_2a

    :catch_16a
    move-exception v0

    goto/16 :goto_1f

    :catch_16d
    move-exception v0

    goto/16 :goto_14
.end method
