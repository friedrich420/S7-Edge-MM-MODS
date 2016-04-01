.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final CAPABILITY_CALL_TRANSFER:I = 0x4000000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_CONTROL_WAITINGCALL:I = 0x2000000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_GROUP_CALL:I = 0x800000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_ROAMING_AREA:I = 0x400000

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SESSION_MODIFY:I = 0x1000000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED_1:I = 0x10

.field public static final CAPABILITY_VOICE_PRIVACY:I = 0x8000000

.field public static final PROPERTY_CONFERENCE:I = 0x1

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x4

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x10

.field public static final PROPERTY_WIFI:I = 0x8


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallCapabilities:I

.field private final mCallProperties:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoState:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "handlePresentation"    # I
    .param p3, "callerDisplayName"    # Ljava/lang/String;
    .param p4, "callerDisplayNamePresentation"    # I
    .param p5, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p6, "capabilities"    # I
    .param p7, "properties"    # I
    .param p8, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p9, "connectTimeMillis"    # J
    .param p11, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p12, "videoState"    # I
    .param p13, "statusHints"    # Landroid/telecom/StatusHints;
    .param p14, "extras"    # Landroid/os/Bundle;
    .param p15, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, mHandle:Landroid/net/Uri;

    .line 621
    iput p2, p0, mHandlePresentation:I

    .line 622
    iput-object p3, p0, mCallerDisplayName:Ljava/lang/String;

    .line 623
    iput p4, p0, mCallerDisplayNamePresentation:I

    .line 624
    iput-object p5, p0, mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 625
    iput p6, p0, mCallCapabilities:I

    .line 626
    iput p7, p0, mCallProperties:I

    .line 627
    iput-object p8, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 628
    iput-wide p9, p0, mConnectTimeMillis:J

    .line 629
    iput-object p11, p0, mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 630
    iput p12, p0, mVideoState:I

    .line 631
    move-object/from16 v0, p13

    iput-object v0, p0, mStatusHints:Landroid/telecom/StatusHints;

    .line 632
    move-object/from16 v0, p14

    iput-object v0, p0, mExtras:Landroid/os/Bundle;

    .line 633
    move-object/from16 v0, p15

    iput-object v0, p0, mIntentExtras:Landroid/os/Bundle;

    .line 634
    return-void
.end method

.method public static can(II)Z
    .registers 3
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 307
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "capabilities"    # I

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v1, 0x1

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 330
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 333
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_22
    const/4 v1, 0x4

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 336
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_2e
    const/16 v1, 0x8

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 339
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_3b
    const/16 v1, 0x20

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 342
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_48
    const/16 v1, 0x40

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 345
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_55
    const/16 v1, 0x80

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 348
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_62
    const/16 v1, 0x100

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 351
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_6f
    const/16 v1, 0x200

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 354
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_7c
    const/16 v1, 0x300

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 357
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_89
    const/16 v1, 0x400

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 360
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_96
    const/16 v1, 0x800

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 363
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_a3
    const/16 v1, 0xc00

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 366
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_b0
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 369
    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_bd
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 372
    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_ca
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 375
    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_d7
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 379
    const-string v1, " CAPABILITY_CONFERENCE_HAS_NO_CHILDREN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_e4
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 382
    const-string v1, " CAPABILITY_ROAMING_AREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_f1
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 385
    const-string v1, " CAPABILITY_GROUP_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_fe
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 388
    const-string v1, " CAPABILITY_SESSION_MODIFY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_10b
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 391
    const-string v1, " CAPABILITY_CONTROL_WAITINGCALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_118
    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 394
    const-string v1, " CAPABILITY_CALL_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_125
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, can(II)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 397
    const-string v1, " CAPABILITY_VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_132
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasProperty(II)Z
    .registers 3
    .param p0, "properties"    # I
    .param p1, "property"    # I

    .prologue
    .line 412
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "properties"    # I

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/4 v1, 0x1

    invoke-static {p0, v1}, hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 435
    const-string v1, " PROPERTY_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 438
    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_22
    const/16 v1, 0x8

    invoke-static {p0, v1}, hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 441
    const-string v1, " PROPERTY_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_2f
    const/16 v1, 0x10

    invoke-static {p0, v1}, hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 444
    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_3c
    const/4 v1, 0x4

    invoke-static {p0, v1}, hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 447
    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_48
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public can(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 317
    iget v0, p0, mCallCapabilities:I

    invoke-static {v0, p1}, can(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 563
    instance-of v2, p1, Landroid/telecom/Call$Details;

    if-eqz v2, :cond_c5

    move-object v0, p1

    .line 564
    check-cast v0, Landroid/telecom/Call$Details;

    .line 565
    .local v0, "d":Landroid/telecom/Call$Details;
    iget-object v2, p0, mHandle:Landroid/net/Uri;

    iget-object v3, v0, mHandle:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget v2, p0, mHandlePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, mHandlePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mCallerDisplayName:Ljava/lang/String;

    iget-object v3, v0, mCallerDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget v2, p0, mCallerDisplayNamePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, mCallerDisplayNamePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v0, mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget v2, p0, mCallCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, mCallCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget v2, p0, mCallProperties:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, mCallProperties:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v3, v0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-wide v2, p0, mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, mConnectTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget-object v3, v0, mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget v2, p0, mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mStatusHints:Landroid/telecom/StatusHints;

    iget-object v3, v0, mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mExtras:Landroid/os/Bundle;

    iget-object v3, v0, mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, mIntentExtras:Landroid/os/Bundle;

    iget-object v3, v0, mIntentExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const/4 v1, 0x1

    .line 582
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_c5
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallCapabilities()I
    .registers 2

    .prologue
    .line 497
    iget v0, p0, mCallCapabilities:I

    return v0
.end method

.method public getCallProperties()I
    .registers 2

    .prologue
    .line 505
    iget v0, p0, mCallProperties:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConnectTimeMillis()J
    .registers 3

    .prologue
    .line 522
    iget-wide v0, p0, mConnectTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, mHandlePresentation:I

    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoState()I
    .registers 2

    .prologue
    .line 536
    iget v0, p0, mVideoState:I

    return v0
.end method

.method public hasProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 422
    iget v0, p0, mCallProperties:I

    invoke-static {v0, p1}, hasProperty(II)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 587
    iget-object v0, p0, mHandle:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, mHandlePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mCallerDisplayName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mCallerDisplayNamePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mCallCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mCallProperties:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mVideoState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mIntentExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
