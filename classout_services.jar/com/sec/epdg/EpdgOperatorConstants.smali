.class public Lcom/sec/epdg/EpdgOperatorConstants;
.super Ljava/lang/Object;
.source "EpdgOperatorConstants.java"


# static fields
.field public static final ATTACH_APN_ID:I = 0x1

.field public static final CDMA_PROFILING:Z

.field public static final CHANGE_PREFERREDMODE_AT_ROAMING:Z

.field public static final DELAY_HO_TIMER_VALUE:I

.field public static final DELAY_HO_UNTIL_REGI_FINISHED:Z

.field public static final DELAY_L2W_AND_W2L:Z

.field public static final DISCONNECT_AFTER_DEREGI:Z

.field public static final DNS_RETRY_THROTTLE_COUNTER:I = 0x5

.field public static final EMERGENCY_CALLBACK_MODE:Z

.field public static final HAS_DIFFERENT_ROAMING_POLICY:Z

.field public static final IMS_APN_ID:I

.field public static final IMS_CALL_MONITORING:Z

.field public static final IMS_REGISTRATION_MONITORING:Z

.field public static final INTERNET_APN_ID:I

.field public static final IWLAN_INTERFACE_PREFIX:Ljava/lang/String; = "epdg"

.field public static final KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

.field public static final LTE_PROFILING:Z

.field public static final PDPD_CHECK_TIMEOUT:I

.field public static final SEPARATE_VIDEO_FROM_VOWIFI:Z

.field public static final SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_CDMA_NETWORK:Z

.field public static final SUPPORT_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_IMSI_FROM_IMPI:Z

.field public static final SUPPORT_KEEP_ALIVE:Z

.field public static final SUPPORT_MULTIPLE_EPDGIP:Z

.field public static final SUPPORT_VOLTE:Z

.field public static final SUPPORT_VOWIFI_PROVISIONING:Z

.field public static final SUPPORT_WEAK_WIFI_SIGNAL_WARNING:Z = false

.field public static final SUPPORT_WIFI_OVER_IPME:Z

.field public static final SUPPORT_WIFI_RSSI_POLLING:Z

.field public static final VOWIFI_BLACKLIST_BLOCKING:Z

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field public static final WIFI_RSSI_INTENT_DELAY_TIMER:I

.field public static final WIFI_THRESHOLD_BASED_HO:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 72
    sput v2, IMS_APN_ID:I

    .line 73
    sput v3, INTERNET_APN_ID:I

    .line 74
    sput-boolean v3, DELAY_L2W_AND_W2L:Z

    .line 75
    sput-boolean v1, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 76
    sput-boolean v1, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 77
    sput v1, DELAY_HO_TIMER_VALUE:I

    .line 78
    sput-boolean v1, EMERGENCY_CALLBACK_MODE:Z

    .line 79
    sput-boolean v1, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 80
    sput-boolean v1, SUPPORT_CDMA_NETWORK:Z

    .line 81
    sput-boolean v1, SUPPORT_KEEP_ALIVE:Z

    .line 82
    sput-boolean v1, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 83
    sput-boolean v1, CDMA_PROFILING:Z

    .line 84
    sput-boolean v1, LTE_PROFILING:Z

    .line 85
    sput-boolean v1, IMS_CALL_MONITORING:Z

    .line 86
    sput-boolean v1, IMS_REGISTRATION_MONITORING:Z

    .line 87
    sput-boolean v3, SUPPORT_VOLTE:Z

    .line 88
    sput-boolean v1, SUPPORT_IMSI_FROM_IMPI:Z

    .line 89
    sput-boolean v1, WIFI_THRESHOLD_BASED_HO:Z

    .line 90
    sput-boolean v1, DISCONNECT_AFTER_DEREGI:Z

    .line 91
    sput-boolean v1, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 92
    sput v1, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 93
    sput v4, PDPD_CHECK_TIMEOUT:I

    .line 94
    sput-boolean v1, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 95
    sput-boolean v1, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 96
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 97
    sput-boolean v1, SUPPORT_WIFI_OVER_IPME:Z

    .line 98
    sput-boolean v1, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 99
    sput-boolean v3, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 100
    sput-boolean v1, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    .line 252
    :goto_49
    return-void

    .line 101
    :cond_4a
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 102
    sput v3, IMS_APN_ID:I

    .line 103
    sput v2, INTERNET_APN_ID:I

    .line 104
    sput-boolean v1, DELAY_L2W_AND_W2L:Z

    .line 105
    sput-boolean v3, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 106
    sput-boolean v3, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 107
    sput v5, DELAY_HO_TIMER_VALUE:I

    .line 108
    sput-boolean v3, EMERGENCY_CALLBACK_MODE:Z

    .line 109
    sput-boolean v3, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 110
    sput-boolean v3, SUPPORT_CDMA_NETWORK:Z

    .line 111
    sput-boolean v3, SUPPORT_KEEP_ALIVE:Z

    .line 112
    sput-boolean v3, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 113
    sput-boolean v3, CDMA_PROFILING:Z

    .line 114
    sput-boolean v3, LTE_PROFILING:Z

    .line 115
    sput-boolean v3, IMS_CALL_MONITORING:Z

    .line 116
    sput-boolean v3, IMS_REGISTRATION_MONITORING:Z

    .line 117
    sput-boolean v3, SUPPORT_VOLTE:Z

    .line 118
    sput-boolean v3, SUPPORT_IMSI_FROM_IMPI:Z

    .line 119
    sput-boolean v3, WIFI_THRESHOLD_BASED_HO:Z

    .line 120
    sput-boolean v3, DISCONNECT_AFTER_DEREGI:Z

    .line 121
    sput-boolean v3, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 122
    sput v5, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 123
    sput v4, PDPD_CHECK_TIMEOUT:I

    .line 124
    sput-boolean v1, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 125
    sput-boolean v3, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 126
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 127
    sput-boolean v1, SUPPORT_WIFI_OVER_IPME:Z

    .line 128
    sput-boolean v1, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 129
    sput-boolean v1, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 130
    sput-boolean v1, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto :goto_49

    .line 131
    :cond_8f
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 132
    sput v2, IMS_APN_ID:I

    .line 133
    sput v3, INTERNET_APN_ID:I

    .line 134
    sput-boolean v3, DELAY_L2W_AND_W2L:Z

    .line 135
    sput-boolean v3, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 136
    sput-boolean v1, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 137
    sput v1, DELAY_HO_TIMER_VALUE:I

    .line 138
    sput-boolean v1, EMERGENCY_CALLBACK_MODE:Z

    .line 139
    sput-boolean v1, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 140
    sput-boolean v1, SUPPORT_CDMA_NETWORK:Z

    .line 141
    sput-boolean v1, SUPPORT_KEEP_ALIVE:Z

    .line 142
    sput-boolean v1, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 143
    sput-boolean v1, CDMA_PROFILING:Z

    .line 144
    sput-boolean v3, LTE_PROFILING:Z

    .line 145
    sput-boolean v3, IMS_CALL_MONITORING:Z

    .line 146
    sput-boolean v3, IMS_REGISTRATION_MONITORING:Z

    .line 147
    sput-boolean v3, SUPPORT_VOLTE:Z

    .line 148
    sput-boolean v1, SUPPORT_IMSI_FROM_IMPI:Z

    .line 149
    sput-boolean v3, WIFI_THRESHOLD_BASED_HO:Z

    .line 150
    sput-boolean v3, DISCONNECT_AFTER_DEREGI:Z

    .line 151
    sput-boolean v1, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 152
    sput v1, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 153
    sput v4, PDPD_CHECK_TIMEOUT:I

    .line 154
    sput-boolean v1, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 155
    sput-boolean v3, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 156
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 157
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, SUPPORT_WIFI_OVER_IPME:Z

    .line 158
    sput-boolean v3, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 159
    sput-boolean v3, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 160
    sput-boolean v3, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_49

    .line 161
    :cond_eb
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_133

    .line 162
    sput v2, IMS_APN_ID:I

    .line 163
    sput v3, INTERNET_APN_ID:I

    .line 164
    sput-boolean v1, DELAY_L2W_AND_W2L:Z

    .line 165
    sput-boolean v1, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 166
    sput-boolean v1, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 167
    sput v1, DELAY_HO_TIMER_VALUE:I

    .line 168
    sput-boolean v1, EMERGENCY_CALLBACK_MODE:Z

    .line 169
    sput-boolean v1, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 170
    sput-boolean v1, SUPPORT_CDMA_NETWORK:Z

    .line 171
    sput-boolean v1, SUPPORT_KEEP_ALIVE:Z

    .line 172
    sput-boolean v1, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 173
    sput-boolean v1, CDMA_PROFILING:Z

    .line 174
    sput-boolean v1, LTE_PROFILING:Z

    .line 175
    sput-boolean v1, IMS_CALL_MONITORING:Z

    .line 176
    sput-boolean v3, IMS_REGISTRATION_MONITORING:Z

    .line 177
    sput-boolean v1, SUPPORT_VOLTE:Z

    .line 178
    sput-boolean v1, SUPPORT_IMSI_FROM_IMPI:Z

    .line 179
    sput-boolean v1, WIFI_THRESHOLD_BASED_HO:Z

    .line 180
    sput-boolean v3, DISCONNECT_AFTER_DEREGI:Z

    .line 181
    sput-boolean v1, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 182
    sput v1, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 183
    const/16 v0, 0x9

    sput v0, PDPD_CHECK_TIMEOUT:I

    .line 184
    sput-boolean v3, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 185
    sput-boolean v1, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 186
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 187
    sput-boolean v1, SUPPORT_WIFI_OVER_IPME:Z

    .line 188
    sput-boolean v1, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 189
    sput-boolean v3, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 190
    sput-boolean v1, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_49

    .line 191
    :cond_133
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 192
    sput v2, IMS_APN_ID:I

    .line 193
    sput v3, INTERNET_APN_ID:I

    .line 194
    sput-boolean v3, DELAY_L2W_AND_W2L:Z

    .line 195
    sput-boolean v1, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 196
    sput-boolean v1, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 197
    sput v1, DELAY_HO_TIMER_VALUE:I

    .line 198
    sput-boolean v1, EMERGENCY_CALLBACK_MODE:Z

    .line 199
    sput-boolean v1, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 200
    sput-boolean v1, SUPPORT_CDMA_NETWORK:Z

    .line 201
    sput-boolean v1, SUPPORT_KEEP_ALIVE:Z

    .line 202
    sput-boolean v1, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 203
    sput-boolean v1, CDMA_PROFILING:Z

    .line 204
    sput-boolean v1, LTE_PROFILING:Z

    .line 205
    sput-boolean v3, IMS_CALL_MONITORING:Z

    .line 206
    sput-boolean v3, IMS_REGISTRATION_MONITORING:Z

    .line 207
    sput-boolean v3, SUPPORT_VOLTE:Z

    .line 208
    sput-boolean v1, SUPPORT_IMSI_FROM_IMPI:Z

    .line 209
    sput-boolean v1, WIFI_THRESHOLD_BASED_HO:Z

    .line 210
    sput-boolean v3, DISCONNECT_AFTER_DEREGI:Z

    .line 211
    sput-boolean v1, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 212
    sput v1, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 213
    const/16 v0, 0x1f

    sput v0, PDPD_CHECK_TIMEOUT:I

    .line 214
    sput-boolean v1, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 215
    sput-boolean v1, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 216
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 217
    sput-boolean v1, SUPPORT_WIFI_OVER_IPME:Z

    .line 218
    sput-boolean v1, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 219
    sput-boolean v3, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 220
    sput-boolean v1, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_49

    .line 222
    :cond_17b
    sput v2, IMS_APN_ID:I

    .line 223
    sput v3, INTERNET_APN_ID:I

    .line 224
    sput-boolean v3, DELAY_L2W_AND_W2L:Z

    .line 225
    sput-boolean v1, SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 226
    sput-boolean v1, DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 227
    sput v1, DELAY_HO_TIMER_VALUE:I

    .line 228
    sput-boolean v1, EMERGENCY_CALLBACK_MODE:Z

    .line 229
    sput-boolean v1, SUPPORT_VOWIFI_PROVISIONING:Z

    .line 230
    sput-boolean v1, SUPPORT_CDMA_NETWORK:Z

    .line 231
    sput-boolean v1, SUPPORT_KEEP_ALIVE:Z

    .line 232
    sput-boolean v1, CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 233
    sput-boolean v1, CDMA_PROFILING:Z

    .line 234
    sput-boolean v1, LTE_PROFILING:Z

    .line 235
    sput-boolean v3, IMS_CALL_MONITORING:Z

    .line 236
    sput-boolean v3, IMS_REGISTRATION_MONITORING:Z

    .line 237
    sput-boolean v3, SUPPORT_VOLTE:Z

    .line 238
    sput-boolean v1, SUPPORT_IMSI_FROM_IMPI:Z

    .line 239
    sput-boolean v1, WIFI_THRESHOLD_BASED_HO:Z

    .line 240
    sput-boolean v3, DISCONNECT_AFTER_DEREGI:Z

    .line 241
    sput-boolean v1, HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 242
    sput v1, WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 243
    sput v4, PDPD_CHECK_TIMEOUT:I

    .line 244
    sput-boolean v1, VOWIFI_BLACKLIST_BLOCKING:Z

    .line 245
    sput-boolean v1, SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 246
    sput-boolean v1, SUPPORT_MULTIPLE_EPDGIP:Z

    .line 247
    sput-boolean v1, SUPPORT_WIFI_OVER_IPME:Z

    .line 248
    sput-boolean v1, KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 249
    sput-boolean v3, SUPPORT_WIFI_RSSI_POLLING:Z

    .line 250
    sput-boolean v1, SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_49
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
