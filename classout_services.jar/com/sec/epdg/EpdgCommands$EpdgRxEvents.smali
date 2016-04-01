.class public Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgRxEvents"
.end annotation


# static fields
.field public static final CALL_STATUS_CHANGE:I = 0x3e

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0x21

.field public static final EPDG_IMS_READY:I = 0x4c

.field public static final EPDG_SETTINGS_READ:I = 0x1d

.field public static final EPDG_WFCPROFILE_READ:I = 0x4b

.field public static final HANDLE_DNS_QUERY_REQUEST:I = 0x34

.field public static final HANDLE_FQDN_QUERY_FAILED:I = 0x36

.field public static final HANDLE_FQDN_QUERY_RETRY:I = 0x37

.field public static final IMS_REG_STATUS_CHANGE:I = 0x40

.field public static final IPME_STATUS_CHANGE:I = 0x4e

.field public static final IPSEC_CONNECTED:I = 0x2d

.field public static final IPSEC_CONNECTION_RESET:I = 0x31

.field public static final IPSEC_CONNECTION_SETUP_FAILURE:I = 0x30

.field public static final IPSEC_CONNECT_INIT:I = 0x33

.field public static final IPSEC_DISCONNECTED:I = 0x2e

.field public static final IPSEC_ERROR:I = 0x32

.field public static final IPSEC_PEER_DISCONNECTED:I = 0x2f

.field public static final MAPCON_CHANGED:I = 0x1c

.field public static final NOTIFY_REGISTRANTS:I = 0x1e

.field public static final PERIODIC_DPD_TIMER_EXPIRED:I = 0x44

.field public static final RETRY_L2W_IF_REQUIRED:I = 0x1f

.field public static final RIL_CONNECT_REQ:I = 0x2b

.field public static final RIL_DISCONNECT_REQ:I = 0x2c

.field public static final RIL_EPDG_STATUS_QUERY:I = 0x35

.field public static final RIL_HANDOVER_RESULT:I = 0x2a

.field public static final RIL_IIL_SSAC_INFO_UPDATE:I = 0x4a

.field public static final SEND_DELAYED_EPDG_REGISTER:I = 0x46

.field public static final SEND_EPDG_DEREGISTER:I = 0x47

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE:I = 0x25

.field public static final SM_DISCONNECT_REQ:I = 0x29

.field public static final SM_ENABLE_EPDG_FAILURE:I = 0x23

.field public static final SM_TRANSITIONTO:I = 0x28

.field public static final SM_TRIGGER_HO:I = 0x22

.field public static final SM_UPDATE_CONN_STATUS:I = 0x26

.field public static final START_STOP_WIFI_RSSI_INTENT_DELAY_TIMER:I = 0x49

.field public static final START_TIMER_TEPDGHODELAY:I = 0x3d

.field public static final TIMER_TEPDG1X_EXPIRED:I = 0x3b

.field public static final TIMER_TEPDG1X_SCAN_EXPIRED:I = 0x41

.field public static final TIMER_TEPDGHODELAYWIFI_EXPIRED:I = 0x3a

.field public static final TIMER_TEPDGHODELAY_EXPIRED:I = 0x3c

.field public static final TIMER_TEPDGLTE_EXPIRED:I = 0x39

.field public static final TIMER_TEPDGWIFIRSSIDELAY_EXPIRED:I = 0x48

.field public static final TIMER_TEPDG_EXPIRED:I = 0x38

.field public static final TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED:I = 0x4d

.field public static final VOLTE_PROVISIONING_CHANGED:I = 0x42

.field public static final VOLTE_SETTING_CHANGED:I = 0x3f

.field public static final VOPS_STATUS_CHANGED:I = 0x45

.field public static final VOWIFI_PROVISIONING_CHANGED:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4
    .param p0, "event"    # I

    .prologue
    .line 221
    packed-switch p0, :pswitch_data_b4

    .line 319
    :pswitch_3
    const-string v0, "[EPDGCommands]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add log for event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "UNKNOWN"

    :goto_1d
    return-object v0

    .line 223
    :pswitch_1e
    const-string v0, "SM_TRIGGER_HO"

    goto :goto_1d

    .line 225
    :pswitch_21
    const-string v0, "SM_ENABLE_EPDG_FAILURE"

    goto :goto_1d

    .line 227
    :pswitch_24
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE"

    goto :goto_1d

    .line 229
    :pswitch_27
    const-string v0, "SM_UPDATE_CONN_STATUS"

    goto :goto_1d

    .line 231
    :pswitch_2a
    const-string v0, "SM_TRANSITIONTO"

    goto :goto_1d

    .line 233
    :pswitch_2d
    const-string v0, "SM_DISCONNECT_REQ"

    goto :goto_1d

    .line 235
    :pswitch_30
    const-string v0, "NOTIFY_REGISTRANTS"

    goto :goto_1d

    .line 237
    :pswitch_33
    const-string v0, "EPDG_SETTINGS_READ"

    goto :goto_1d

    .line 239
    :pswitch_36
    const-string v0, "RETRY_L2W_IF_REQUIRED"

    goto :goto_1d

    .line 241
    :pswitch_39
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    goto :goto_1d

    .line 243
    :pswitch_3c
    const-string v0, "RIL_HANDOVER_RESULT"

    goto :goto_1d

    .line 245
    :pswitch_3f
    const-string v0, "RIL_CONNECT_REQ"

    goto :goto_1d

    .line 247
    :pswitch_42
    const-string v0, "RIL_DISCONNECT_REQ"

    goto :goto_1d

    .line 249
    :pswitch_45
    const-string v0, "IPSEC_CONNECTED"

    goto :goto_1d

    .line 251
    :pswitch_48
    const-string v0, "IPSEC_DISCONNECTED"

    goto :goto_1d

    .line 253
    :pswitch_4b
    const-string v0, "IPSEC_PEER_DISCONNECTED"

    goto :goto_1d

    .line 255
    :pswitch_4e
    const-string v0, "IPSEC_CONNECTION_SETUP_FAILURE"

    goto :goto_1d

    .line 257
    :pswitch_51
    const-string v0, "IPSEC_CONNECTION_RESET"

    goto :goto_1d

    .line 259
    :pswitch_54
    const-string v0, "IPSEC_ERROR"

    goto :goto_1d

    .line 261
    :pswitch_57
    const-string v0, "IPSEC_CONNECT_INIT"

    goto :goto_1d

    .line 263
    :pswitch_5a
    const-string v0, "HANDLE_DNS_QUERY_REQUEST"

    goto :goto_1d

    .line 265
    :pswitch_5d
    const-string v0, "MAPCON_CHANGED"

    goto :goto_1d

    .line 267
    :pswitch_60
    const-string v0, "RIL_EPDG_STATUS_QUERY"

    goto :goto_1d

    .line 269
    :pswitch_63
    const-string v0, "HANDLE_FQDN_QUERY_FAILED"

    goto :goto_1d

    .line 271
    :pswitch_66
    const-string v0, "HANDLE_FQDN_QUERY_RETRY"

    goto :goto_1d

    .line 273
    :pswitch_69
    const-string v0, "TIMER_TEPDG_EXPIRED"

    goto :goto_1d

    .line 275
    :pswitch_6c
    const-string v0, "TIMER_TEPDGLTE_EXPIRED"

    goto :goto_1d

    .line 277
    :pswitch_6f
    const-string v0, "TIMER_TEPDGHODELAYWIFI_EXPIRED"

    goto :goto_1d

    .line 279
    :pswitch_72
    const-string v0, "TIMER_TEPDG1X_EXPIRED"

    goto :goto_1d

    .line 281
    :pswitch_75
    const-string v0, "TIMER_TEPDGHODELAY_EXPIRED"

    goto :goto_1d

    .line 283
    :pswitch_78
    const-string v0, "START_TIMER_TEPDGHODELAY"

    goto :goto_1d

    .line 285
    :pswitch_7b
    const-string v0, "CALL_STATUS_CHANGE"

    goto :goto_1d

    .line 287
    :pswitch_7e
    const-string v0, "IPME_STATUS_CHANGE"

    goto :goto_1d

    .line 289
    :pswitch_81
    const-string v0, "VOLTE_SETTING_CHANGED"

    goto :goto_1d

    .line 291
    :pswitch_84
    const-string v0, "IMS_REG_STATUS_CHANGE"

    goto :goto_1d

    .line 293
    :pswitch_87
    const-string v0, "TIMER_TEPDG1X_SCAN_EXPIRED"

    goto :goto_1d

    .line 295
    :pswitch_8a
    const-string v0, "PERIODIC_DPD_TIMER_EXPIRED"

    goto :goto_1d

    .line 297
    :pswitch_8d
    const-string v0, "VOLTE_PROVISIONING_CHANGED"

    goto :goto_1d

    .line 299
    :pswitch_90
    const-string v0, "VOWIFI_PROVISIONING_CHANGED"

    goto :goto_1d

    .line 301
    :pswitch_93
    const-string v0, "VOPS_STATUS_CHANGED"

    goto :goto_1d

    .line 303
    :pswitch_96
    const-string v0, "SEND_DELAYED_EPDG_REGISTER"

    goto :goto_1d

    .line 305
    :pswitch_99
    const-string v0, "SEND_EPDG_DEREGISTER"

    goto :goto_1d

    .line 307
    :pswitch_9c
    const-string v0, "TIMER_TEPDGWIFIRSSIDELAY_EXPIRED"

    goto/16 :goto_1d

    .line 309
    :pswitch_a0
    const-string v0, "START_STOP_WIFI_RSSI_INTENT_DELAY_TIMER"

    goto/16 :goto_1d

    .line 311
    :pswitch_a4
    const-string v0, "RIL_IIL_SSAC_INFO_UPDATE"

    goto/16 :goto_1d

    .line 313
    :pswitch_a8
    const-string v0, "EPDG_WFCPROFILE_READ"

    goto/16 :goto_1d

    .line 315
    :pswitch_ac
    const-string v0, "EPDG_IMS_READY"

    goto/16 :goto_1d

    .line 317
    :pswitch_b0
    const-string v0, "TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED"

    goto/16 :goto_1d

    .line 221
    :pswitch_data_b4
    .packed-switch 0x1c
        :pswitch_5d
        :pswitch_33
        :pswitch_30
        :pswitch_36
        :pswitch_3
        :pswitch_39
        :pswitch_1e
        :pswitch_21
        :pswitch_3
        :pswitch_24
        :pswitch_27
        :pswitch_3
        :pswitch_2a
        :pswitch_2d
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_60
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8d
        :pswitch_90
        :pswitch_8a
        :pswitch_93
        :pswitch_96
        :pswitch_99
        :pswitch_9c
        :pswitch_a0
        :pswitch_a4
        :pswitch_a8
        :pswitch_ac
        :pswitch_b0
        :pswitch_7e
    .end packed-switch
.end method
