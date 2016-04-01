.class public Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgTxEvents"
.end annotation


# static fields
.field public static final APN_ATTACH_DNS_RETRY_RESPONSE:I = 0xc

.field public static final APN_ATTACH_REQ:I = 0x2

.field public static final APN_DETACH_REQ:I = 0x3

.field public static final APN_FORCE_DETACH_REQ:I = 0xf

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0xd

.field public static final DELAYED_CHECK_HO_W2L:I = 0x11

.field public static final HANDOVER_RESULT:I = 0x4

.field public static final INTERFACE_DOWN:I = 0xe

.field public static final INTERFACE_UP:I = 0x9

.field public static final IPSEC_CONN_DISCONNECTED:I = 0x7

.field public static final IPSEC_CONN_FAIL:I = 0x6

.field public static final IPSEC_CONN_RESET:I = 0x8

.field public static final IPSEC_CONN_SUCCESS:I = 0x5

.field public static final PERIODIC_DPD_TIMER_EXPIRED:I = 0x10

.field public static final SM_TIMEOUT:I = 0xb

.field public static final START_HO_L2W:I = 0x0

.field public static final START_HO_W2L:I = 0x1

.field public static final WIFI_STATUS_CHANGED:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4
    .param p0, "event"    # I

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_54

    .line 164
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

    .line 165
    const-string v0, "UNKNOWN"

    :goto_1d
    return-object v0

    .line 128
    :pswitch_1e
    const-string v0, "START_HO_L2W"

    goto :goto_1d

    .line 130
    :pswitch_21
    const-string v0, "START_HO_W2L"

    goto :goto_1d

    .line 132
    :pswitch_24
    const-string v0, "APN_ATTACH_REQ"

    goto :goto_1d

    .line 134
    :pswitch_27
    const-string v0, "APN_DETACH_REQ"

    goto :goto_1d

    .line 136
    :pswitch_2a
    const-string v0, "HANDOVER_RESULT"

    goto :goto_1d

    .line 138
    :pswitch_2d
    const-string v0, "IPSEC_CONN_SUCCESS"

    goto :goto_1d

    .line 140
    :pswitch_30
    const-string v0, "IPSEC_CONN_FAIL"

    goto :goto_1d

    .line 142
    :pswitch_33
    const-string v0, "IPSEC_CONN_DISCONNECTED"

    goto :goto_1d

    .line 144
    :pswitch_36
    const-string v0, "IPSEC_CONN_RESET"

    goto :goto_1d

    .line 146
    :pswitch_39
    const-string v0, "INTERFACE_UP"

    goto :goto_1d

    .line 148
    :pswitch_3c
    const-string v0, "WIFI_STATUS_CHANGED"

    goto :goto_1d

    .line 150
    :pswitch_3f
    const-string v0, "SM_TIMEOUT"

    goto :goto_1d

    .line 152
    :pswitch_42
    const-string v0, "APN_ATTACH_DNS_RETRY_RESPONSE"

    goto :goto_1d

    .line 154
    :pswitch_45
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    goto :goto_1d

    .line 156
    :pswitch_48
    const-string v0, "INTERFACE_DOWN"

    goto :goto_1d

    .line 158
    :pswitch_4b
    const-string v0, "APN_FORCE_DETACH_REQ"

    goto :goto_1d

    .line 160
    :pswitch_4e
    const-string v0, "PERIODIC_DPD_TIMER_EXPIRED"

    goto :goto_1d

    .line 162
    :pswitch_51
    const-string v0, "DELAYED_CHECK_HO_W2L"

    goto :goto_1d

    .line 126
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method
