.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lac:I

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/OperatorInfo$State;

.field operatorRat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 298
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 114
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V
    .registers 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 46
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, operatorRat:Ljava/lang/String;

    .line 91
    iput-object p1, p0, mOperatorAlphaLong:Ljava/lang/String;

    .line 92
    iput-object p2, p0, mOperatorAlphaShort:Ljava/lang/String;

    .line 93
    iput-object p3, p0, mOperatorNumeric:Ljava/lang/String;

    .line 95
    iput-object p4, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 97
    const/16 v0, 0xff

    iput v0, p0, lac:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V
    .registers 8
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "lac"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 46
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, operatorRat:Ljava/lang/String;

    .line 136
    iput-object p1, p0, mOperatorAlphaLong:Ljava/lang/String;

    .line 137
    iput-object p2, p0, mOperatorAlphaShort:Ljava/lang/String;

    .line 138
    iput-object p3, p0, mOperatorNumeric:Ljava/lang/String;

    .line 140
    iput-object p4, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 142
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_NetworkInfoRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 144
    :cond_2c
    invoke-direct {p0, p5}, ratToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, operatorRat:Ljava/lang/String;

    .line 147
    :goto_32
    return-void

    .line 146
    :cond_33
    iput p5, p0, lac:I

    goto :goto_32
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V
    .registers 7
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "ratString"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 46
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, operatorRat:Ljava/lang/String;

    .line 169
    iput-object p1, p0, mOperatorAlphaLong:Ljava/lang/String;

    .line 170
    iput-object p2, p0, mOperatorAlphaShort:Ljava/lang/String;

    .line 171
    iput-object p3, p0, mOperatorNumeric:Ljava/lang/String;

    .line 173
    iput-object p4, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 174
    iput-object p5, p0, operatorRat:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p4}, rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;
    .param p5, "lacString"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p4}, rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;
    .param p5, "ratString"    # Ljava/lang/String;
    .param p6, "lacString"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p4}, rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 154
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, lac:I

    .line 156
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 157
    invoke-direct {p0, p5}, ratInfoToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, operatorRat:Ljava/lang/String;

    .line 161
    :goto_1f
    return-void

    .line 159
    :cond_20
    iput-object p5, p0, operatorRat:Ljava/lang/String;

    goto :goto_1f
.end method

.method private actByteToStr(I)Ljava/lang/String;
    .registers 7
    .param p1, "act"    # I

    .prologue
    .line 194
    const/4 v2, 0x1

    .line 195
    .local v2, "IPC_NET_ACT_GSM":I
    const/4 v1, 0x2

    .line 196
    .local v1, "IPC_NET_ACT_GPRS":I
    const/4 v0, 0x3

    .line 197
    .local v0, "IPC_NET_ACT_EGPRS":I
    const/4 v3, 0x4

    .line 199
    .local v3, "IPC_NET_ACT_UMTS":I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_a

    .line 200
    const-string v4, "2G"

    .line 206
    :goto_9
    return-object v4

    .line 201
    :cond_a
    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    .line 202
    const-string v4, "4G"

    goto :goto_9

    .line 203
    :cond_11
    const/4 v4, 0x4

    if-ne p1, v4, :cond_17

    .line 204
    const-string v4, "3G"

    goto :goto_9

    .line 206
    :cond_17
    const-string/jumbo v4, "unknown"

    goto :goto_9
.end method

.method private ratInfoToStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "RATinfo"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "GERAN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    const-string v0, "2G"

    .line 221
    :goto_a
    return-object v0

    .line 216
    :cond_b
    const-string v0, "LTE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    const-string v0, "4G"

    goto :goto_a

    .line 218
    :cond_16
    const-string v0, "UMTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 219
    const-string v0, "3G"

    goto :goto_a

    .line 221
    :cond_21
    const-string/jumbo v0, "unknown"

    goto :goto_a
.end method

.method private ratToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "rat"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 181
    const-string v0, "GERAN"

    .line 187
    :goto_5
    return-object v0

    .line 182
    :cond_6
    const/16 v0, 0x21

    if-ne p1, v0, :cond_d

    .line 183
    const-string v0, "LTE"

    goto :goto_5

    .line 184
    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 185
    const-string v0, "UMTS"

    goto :goto_5

    .line 187
    :cond_13
    const-string/jumbo v0, "unknown"

    goto :goto_5
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 237
    :goto_b
    return-object v0

    .line 232
    :cond_c
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 233
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_b

    .line 234
    :cond_17
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 235
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_b

    .line 236
    :cond_22
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 237
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_b

    .line 239
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getLac()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, lac:I

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorRat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, operatorRat:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_NetworkInfoRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 250
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, operatorRat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_69
    return-object v0

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 285
    iget-object v0, p0, mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, mState:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 290
    iget v0, p0, lac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
