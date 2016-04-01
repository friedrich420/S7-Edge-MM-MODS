.class public Lcom/samsung/android/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# static fields
.field public static final ICC_LOCKED:I = 0x1

.field public static final ICC_NOT_SUPPORT:I = -0x1

.field public static final ICC_UNLOCKED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field private static final PHONE_ID_TYPE_FOREGROUND_CALL:I = 0x0

.field private static final PHONE_ID_TYPE_REJECT_CALL:I = 0x1

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final SIMSLOT_COUNT:I

.field private static SM:Landroid/telephony/SubscriptionManager; = null

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_VOICE:I = 0x1

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mSimIconKey:[Ljava/lang/String;

.field private static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_name_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_name_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_name_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_name_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, mSimNameKey:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, mSimIconKey:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "phone1_on"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone2_on"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone3_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone4_on"

    aput-object v1, v0, v5

    const-string/jumbo v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, mPhoneOnKey:[Ljava/lang/String;

    .line 104
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, SIMSLOT_COUNT:I

    .line 109
    new-instance v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, SM:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allDefaultsSelected()Z
    .registers 1

    .prologue
    .line 1239
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static answerRingingCall(I)V
    .registers 3
    .param p0, "slotId"    # I

    .prologue
    .line 847
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v0

    .line 849
    .local v0, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->answerRingingCall(I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_c

    .line 852
    :goto_b
    return-void

    .line 850
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v1, "str":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_17

    sget v2, SIMSLOT_COUNT:I

    if-ge p1, v2, :cond_17

    .line 1404
    if-eqz p1, :cond_12

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1415
    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1406
    :cond_17
    const-string v2, "MultiSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimSlot value is bigger than SIMSLOT_COUNT or smaller than 0.(text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :try_start_3f
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendSimSlot method exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_47

    .line 1410
    :catch_47
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public static call(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "slotId"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v0

    .line 832
    .local v0, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/telephony/TelephonyManager;->call(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_c

    .line 835
    :goto_b
    return-void

    .line 833
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static dial(ILjava/lang/String;)V
    .registers 4
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v0

    .line 819
    .local v0, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->dial(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_c

    .line 822
    :goto_b
    return-void

    .line 820
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static endCall(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 860
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 862
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->endCall(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 864
    :goto_c
    return v2

    .line 863
    :catch_d
    move-exception v0

    .line 864
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getActiveSubIdList()[J
    .registers 6

    .prologue
    .line 1550
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v3

    .line 1551
    .local v3, "subIds":[I
    array-length v4, v3

    if-lez v4, :cond_19

    array-length v1, v3

    .line 1553
    .local v1, "numSubIds":I
    :goto_c
    new-array v2, v1, [J

    .line 1554
    .local v2, "subIdArr":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1b

    .line 1555
    aget v4, v3, v0

    int-to-long v4, v4

    aput-wide v4, v2, v0

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1551
    .end local v0    # "i":I
    .end local v1    # "numSubIds":I
    .end local v2    # "subIdArr":[J
    :cond_19
    const/4 v1, 0x0

    goto :goto_c

    .line 1557
    .restart local v0    # "i":I
    .restart local v1    # "numSubIds":I
    .restart local v2    # "subIdArr":[J
    :cond_1b
    return-object v2
.end method

.method public static getActiveSubInfoCount()I
    .registers 1

    .prologue
    .line 1115
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSubscriptionIdList()[I
    .registers 1

    .prologue
    .line 1280
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    return-object v0
.end method

.method public static getAllSubInfoCount()I
    .registers 1

    .prologue
    .line 1107
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1090
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCallState(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 704
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 706
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 708
    :goto_c
    return v2

    .line 707
    :catch_d
    move-exception v0

    .line 708
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getCurrentPhoneType(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 315
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 317
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 319
    :goto_c
    return v2

    .line 318
    :catch_d
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static getDataNetworkType(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 424
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 426
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 428
    :goto_c
    return v2

    .line 427
    :catch_d
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getDataRoamingEnabled(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 759
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 761
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 763
    :goto_c
    return v2

    .line 762
    :catch_d
    move-exception v0

    .line 763
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getDataServiceState(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 801
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 803
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataServiceState(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 805
    :goto_c
    return v2

    .line 804
    :catch_d
    move-exception v0

    .line 805
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getDataState(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 721
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 723
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataState(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 725
    :goto_c
    return v2

    .line 724
    :catch_d
    move-exception v0

    .line 725
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getDataStateUsingSubId(I)I
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1575
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultPhoneId(I)I
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 1220
    packed-switch p0, :pswitch_data_34

    .line 1230
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultPhoneId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 1223
    :pswitch_1d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    goto :goto_1c

    .line 1225
    :pswitch_22
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    goto :goto_1c

    .line 1227
    :pswitch_2b
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_1c

    .line 1220
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_2b
    .end packed-switch
.end method

.method public static getDefaultSubId(I)J
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 1492
    packed-switch p0, :pswitch_data_1c

    .line 1502
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    int-to-long v0, v0

    :goto_8
    return-wide v0

    .line 1495
    :pswitch_9
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_8

    .line 1497
    :pswitch_f
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_8

    .line 1499
    :pswitch_15
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_8

    .line 1492
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method public static getDefaultSubInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 1198
    packed-switch p0, :pswitch_data_38

    .line 1208
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultSubInfo] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 1201
    :pswitch_1d
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_1c

    .line 1203
    :pswitch_26
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_1c

    .line 1205
    :pswitch_2f
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_1c

    .line 1198
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method public static getDefaultSubscriptionId(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 1154
    packed-switch p0, :pswitch_data_18

    .line 1164
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    :goto_7
    return v0

    .line 1157
    :pswitch_8
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    goto :goto_7

    .line 1159
    :pswitch_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    goto :goto_7

    .line 1161
    :pswitch_12
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    goto :goto_7

    .line 1154
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 252
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledSimCount(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "count":I
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_40

    .line 170
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 171
    .local v0, "SubscriptionInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "iccType":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {p0, v5}, isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 177
    .end local v0    # "SubscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iccType":Ljava/lang/String;
    :cond_40
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "return getEnabledSimCount count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v2
.end method

.method public static getGroupIdLevel1(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 550
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 552
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 554
    :goto_c
    return-object v2

    .line 553
    :catch_d
    move-exception v0

    .line 554
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getIccLockState()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1293
    const-string v3, "gsm.facilitylock.state"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1300
    :goto_14
    return v1

    .line 1297
    :cond_15
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v2

    .line 1298
    goto :goto_14

    .line 1300
    :cond_21
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public static getImei(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 304
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInsertedSimCount()I
    .registers 1

    .prologue
    .line 156
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getInsertedSimNum()I
    .registers 5

    .prologue
    .line 1580
    const/4 v0, 0x0

    .line 1582
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_2
    invoke-static {}, getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 1583
    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1585
    add-int/lit8 v0, v0, 0x1

    .line 1582
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1589
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1e
    return v0
.end method

.method public static getLine1AlphaTag(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 572
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 574
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 576
    :goto_c
    return-object v2

    .line 575
    :catch_d
    move-exception v0

    .line 576
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getLine1Number(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 286
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 288
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 290
    :goto_c
    return-object v2

    .line 289
    :catch_d
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getLine1NumberUsingSubId(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1603
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaMode(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 530
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 532
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 534
    :goto_c
    return v2

    .line 533
    :catch_d
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public static getMeid(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 1616
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMsisdn(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 592
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 594
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 596
    :goto_c
    return-object v2

    .line 595
    :catch_d
    move-exception v0

    .line 596
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getMultiSimPhoneId(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 1046
    packed-switch p0, :pswitch_data_18

    .line 1052
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1048
    :pswitch_5
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    goto :goto_4

    .line 1050
    :pswitch_e
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    goto :goto_4

    .line 1046
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 390
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 392
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 394
    :goto_c
    return-object v2

    .line 393
    :catch_d
    move-exception v0

    .line 394
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getNetworkOperator(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 350
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 352
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 354
    :goto_c
    return-object v2

    .line 353
    :catch_d
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getNetworkOperatorName(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 333
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 335
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 337
    :goto_c
    return-object v2

    .line 336
    :catch_d
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getNetworkType(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 407
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 409
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 411
    :goto_c
    return v2

    .line 410
    :catch_d
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getPhoneId(I)I
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1143
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getPhoneId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1483
    long-to-int v0, p0

    .line 1484
    .local v0, "sub":I
    invoke-static {v0}, getPhoneId(I)I

    move-result v1

    return v1
.end method

.method public static getServiceState(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 775
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 777
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getServiceState(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 779
    :goto_c
    return v2

    .line 778
    :catch_d
    move-exception v0

    .line 779
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getServiceStateUsingSubId(I)I
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 790
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public static getServiceStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1457
    long-to-int v0, p0

    .line 1458
    .local v0, "sub":I
    invoke-static {v0}, getServiceStateUsingSubId(I)I

    move-result v1

    return v1
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 512
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 514
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 516
    :goto_c
    return-object v2

    .line 515
    :catch_d
    move-exception v0

    .line 516
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 1353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1355
    .local v0, "simIcon":I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    if-gez v0, :cond_35

    .line 1357
    packed-switch p1, :pswitch_data_40

    .line 1374
    const/4 v0, 0x0

    .line 1379
    :cond_35
    :goto_35
    return v0

    .line 1359
    :pswitch_36
    const/4 v0, 0x0

    .line 1360
    goto :goto_35

    .line 1362
    :pswitch_38
    const/4 v0, 0x1

    .line 1363
    goto :goto_35

    .line 1365
    :pswitch_3a
    const/4 v0, 0x2

    .line 1366
    goto :goto_35

    .line 1368
    :pswitch_3c
    const/4 v0, 0x3

    .line 1369
    goto :goto_35

    .line 1371
    :pswitch_3e
    const/4 v0, 0x4

    .line 1372
    goto :goto_35

    .line 1357
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 1315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "simName":Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-nez v0, :cond_35

    .line 1319
    packed-switch p1, :pswitch_data_46

    .line 1336
    const-string v0, "SIM 1"

    .line 1341
    :cond_35
    :goto_35
    return-object v0

    .line 1321
    :pswitch_36
    const-string v0, "SIM 1"

    .line 1322
    goto :goto_35

    .line 1324
    :pswitch_39
    const-string v0, "SIM 2"

    .line 1325
    goto :goto_35

    .line 1327
    :pswitch_3c
    const-string v0, "SIM 3"

    .line 1328
    goto :goto_35

    .line 1330
    :pswitch_3f
    const-string v0, "SIM 4"

    .line 1331
    goto :goto_35

    .line 1333
    :pswitch_42
    const-string v0, "SIM 5"

    .line 1334
    goto :goto_35

    .line 1319
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 480
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 482
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 484
    :goto_c
    return-object v2

    .line 483
    :catch_d
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getSimOperatorName(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 496
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 498
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 500
    :goto_c
    return-object v2

    .line 499
    :catch_d
    move-exception v0

    .line 500
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 266
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 268
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 270
    :goto_c
    return-object v2

    .line 269
    :catch_d
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getSimSlotCount()I
    .registers 1

    .prologue
    .line 146
    sget v0, SIMSLOT_COUNT:I

    return v0
.end method

.method public static getSimState(I)I
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 468
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(I)I
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1125
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1428
    long-to-int v0, p0

    .line 1429
    .local v0, "sub":I
    invoke-static {v0}, getSlotId(I)I

    move-result v1

    return v1
.end method

.method public static getSubId(I)[J
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1437
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1438
    .local v3, "subIds":[I
    if-eqz v3, :cond_17

    array-length v4, v3

    if-lez v4, :cond_17

    array-length v1, v3

    .line 1440
    .local v1, "numSubIds":I
    :goto_a
    new-array v2, v1, [J

    .line 1441
    .local v2, "subIdArr":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_19

    .line 1442
    aget v4, v3, v0

    int-to-long v4, v4

    aput-wide v4, v2, v0

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1438
    .end local v0    # "i":I
    .end local v1    # "numSubIds":I
    .end local v2    # "subIdArr":[J
    :cond_17
    const/4 v1, 0x0

    goto :goto_a

    .line 1444
    .restart local v0    # "i":I
    .restart local v1    # "numSubIds":I
    .restart local v2    # "subIdArr":[J
    :cond_19
    return-object v2
.end method

.method public static getSubIdUsingProperty(I)I
    .registers 9
    .param p0, "slotId"    # I

    .prologue
    .line 1626
    const/4 v1, 0x0

    .line 1627
    .local v1, "propVal":Ljava/lang/String;
    const v3, 0x7fffffff

    .line 1629
    .local v3, "subId":I
    const-string/jumbo v5, "ril.subinfo"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 1631
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1632
    .local v4, "values":[Ljava/lang/String;
    if-ltz p0, :cond_2a

    array-length v5, v4

    if-ge p0, v5, :cond_2a

    aget-object v5, v4, p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1634
    aget-object v1, v4, p0

    .line 1638
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2a
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4c

    .line 1639
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, "retStr":[Ljava/lang/String;
    if-ltz p0, :cond_4c

    array-length v5, v2

    if-ge p0, v5, :cond_4c

    aget-object v5, v2, p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1642
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1645
    .end local v2    # "retStr":[Ljava/lang/String;
    :cond_4c
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "return subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return v3
.end method

.method public static getSubInfoForSubscriber(I)Landroid/telephony/SubscriptionInfo;
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1062
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubscriptionInfo;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1470
    long-to-int v0, p0

    .line 1471
    .local v0, "sub":I
    invoke-static {v0}, getSubInfoForSubscriber(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 2
    .param p0, "iccId"    # Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingSlotId(I)Landroid/telephony/SubscriptionInfo;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 1080
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 231
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 233
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 235
    :goto_c
    return-object v2

    .line 234
    :catch_d
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getSubscriptionId(I)[I
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 1134
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .registers 1

    .prologue
    .line 128
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    return-object v0
.end method

.method private static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 135
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    return-object v1
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 742
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_22

    array-length v3, v2

    if-ge p1, v3, :cond_22

    aget-object v3, v2, p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 745
    aget-object v1, v2, p1

    .line 748
    .end local v2    # "values":[Ljava/lang/String;
    :cond_22
    if-nez v1, :cond_25

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_24
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_25
    move-object p2, v1

    goto :goto_24
.end method

.method public static getTelephonyPropertyUsingSubId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1659
    invoke-static {p1}, getPhoneId(I)I

    move-result v0

    .line 1660
    .local v0, "phoneId":I
    invoke-static {v0, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 687
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 689
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 691
    :goto_c
    return-object v2

    .line 690
    :catch_d
    move-exception v0

    .line 691
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 613
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 615
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 617
    :goto_c
    return-object v2

    .line 616
    :catch_d
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getVoiceMessageCount(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 666
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 668
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 670
    :goto_c
    return v2

    .line 669
    :catch_d
    move-exception v0

    .line 670
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getVoiceNetworkType(I)I
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 440
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 442
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 444
    :goto_c
    return v2

    .line 443
    :catch_d
    move-exception v0

    .line 444
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static handlePinMmi(ILjava/lang/String;)Z
    .registers 5
    .param p0, "slotId"    # I
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1006
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 1008
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 1010
    :goto_c
    return v2

    .line 1009
    :catch_d
    move-exception v0

    .line 1010
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static hasIccCard(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 457
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .registers 5
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 1033
    .local v1, "subId":I
    :try_start_4
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1035
    :goto_8
    return v2

    .line 1034
    :catch_9
    move-exception v0

    .line 1035
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "simActive":I
    if-ne v0, v1, :cond_11

    .line 216
    :goto_10
    return v1

    .line 215
    :cond_11
    const-string v1, "MultiSimManager"

    const-string/jumbo v2, "return isEnabledSim = false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isIdle(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 906
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 908
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isIdle(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 910
    :goto_c
    return v2

    .line 909
    :catch_d
    move-exception v0

    .line 910
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static isNetworkRoaming(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 369
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 371
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 373
    :goto_c
    return v2

    .line 372
    :catch_d
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static isNoSIM()Z
    .registers 5

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_2
    invoke-static {}, getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 190
    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1e
    invoke-static {}, getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_26

    .line 196
    const/4 v3, 0x1

    .line 199
    :goto_25
    return v3

    .line 198
    :cond_26
    const-string v3, "MultiSimManager"

    const-string/jumbo v4, "return isNoSIM = false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public static isOffhook(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 875
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 877
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isOffhook(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 879
    :goto_c
    return v2

    .line 878
    :catch_d
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static isRadioOn(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 920
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 922
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isRadioOn(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 924
    :goto_c
    return v2

    .line 923
    :catch_d
    move-exception v0

    .line 924
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static isRinging(I)Z
    .registers 4
    .param p0, "slotId"    # I

    .prologue
    .line 891
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 893
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isRinging(I)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 895
    :goto_c
    return v2

    .line 894
    :catch_d
    move-exception v0

    .line 895
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static isSimFDNEnabledSubId(I)Z
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 652
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .prologue
    .line 1253
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(I)Z
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 1246
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1526
    long-to-int v0, p0

    .line 1527
    .local v0, "sub":I
    invoke-static {v0}, isValidSubId(I)Z

    move-result v1

    return v1
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1262
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1263
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1272
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1273
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1541
    long-to-int v0, p2

    .line 1542
    .local v0, "sub":I
    invoke-static {p0, p1, v0}, putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1543
    return-void
.end method

.method public static setDataEnabled(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 1019
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1020
    return-void
.end method

.method public static setDefaultSubId(II)V
    .registers 5
    .param p0, "type"    # I
    .param p1, "subId"    # I

    .prologue
    .line 1174
    packed-switch p0, :pswitch_data_34

    .line 1187
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultSubId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_1b
    return-void

    .line 1177
    :pswitch_1c
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_1b

    .line 1180
    :pswitch_24
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_1b

    .line 1183
    :pswitch_2c
    invoke-static {}, getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_1b

    .line 1174
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method public static setDefaultSubId(IJ)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "subId"    # J

    .prologue
    .line 1515
    long-to-int v0, p1

    .line 1516
    .local v0, "sub":I
    invoke-static {p0, v0}, setDefaultSubId(II)V

    .line 1517
    return-void
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1674
    :try_start_0
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1677
    :goto_3
    return-void

    .line 1675
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static supplyPin(ILjava/lang/String;)Z
    .registers 5
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 936
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 938
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->supplyPin(ILjava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 940
    :goto_c
    return v2

    .line 939
    :catch_d
    move-exception v0

    .line 940
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static supplyPinReportResult(ILjava/lang/String;)[I
    .registers 5
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 972
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(ILjava/lang/String;)[I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 974
    :goto_c
    return-object v2

    .line 973
    :catch_d
    move-exception v0

    .line 974
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_c
.end method

.method public static supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 953
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 955
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 957
    :goto_c
    return v2

    .line 956
    :catch_d
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 989
    invoke-static {p0}, getSubIdUsingProperty(I)I

    move-result v1

    .line 991
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 993
    :goto_c
    return-object v2

    .line 992
    :catch_d
    move-exception v0

    .line 993
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_c
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotId"    # I

    .prologue
    .line 632
    invoke-static {p1}, getSubIdUsingProperty(I)I

    move-result v1

    .line 634
    .local v1, "subId":I
    :try_start_4
    invoke-static {}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    .line 636
    :goto_c
    return-object v2

    .line 635
    :catch_d
    move-exception v0

    .line 636
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_c
.end method
