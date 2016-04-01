.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PERM_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "CARD_IO_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PERSO_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NETWORK_SUBSET_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "DETECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 88
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v3

    sget-object v1, ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v4

    sget-object v1, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v5

    sget-object v1, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v6

    sget-object v1, NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_30

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :pswitch_9
    sget-object v0, UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 138
    :goto_b
    return-object v0

    .line 126
    :pswitch_c
    sget-object v0, ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 127
    :pswitch_f
    sget-object v0, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 128
    :pswitch_12
    sget-object v0, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 129
    :pswitch_15
    sget-object v0, NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 130
    :pswitch_18
    sget-object v0, READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 131
    :pswitch_1b
    sget-object v0, NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 132
    :pswitch_1e
    sget-object v0, PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 133
    :pswitch_21
    sget-object v0, CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 135
    :pswitch_24
    sget-object v0, PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 136
    :pswitch_27
    sget-object v0, NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 137
    :pswitch_2a
    sget-object v0, SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 138
    :pswitch_2d
    sget-object v0, DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_b

    .line 124
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 1

    .prologue
    .line 88
    sget-object v0, $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public iccCardExist()Z
    .registers 2

    .prologue
    .line 115
    sget-object v0, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_20

    sget-object v0, CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isPinLocked()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 108
    sget-object v2, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_1a

    sget-object v2, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_1a

    sget-object v2, PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_1b

    :cond_1a
    move v0, v1

    .line 110
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    sget-object v2, PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_24

    sget-object v2, PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_1b

    :cond_24
    move v0, v1

    goto :goto_1b
.end method
