.class public Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private final mEnergyUsed:I

.field private final mIdleTimeMs:I

.field private final mRxTimeMs:I

.field private final mSleepTimeMs:I

.field private final mTimestamp:J

.field private final mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[III)V
    .registers 13
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "txTimeMs"    # [I
    .param p6, "rxTimeMs"    # I
    .param p7, "energyUsed"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v3, [I

    iput-object v0, p0, mTxTimeMs:[I

    .line 48
    iput-wide p1, p0, mTimestamp:J

    .line 49
    iput p3, p0, mSleepTimeMs:I

    .line 50
    iput p4, p0, mIdleTimeMs:I

    .line 51
    iget-object v0, p0, mTxTimeMs:[I

    array-length v1, p5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 52
    iput p6, p0, mRxTimeMs:I

    .line 53
    iput p7, p0, mEnergyUsed:I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyUsed()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, mEnergyUsed:I

    return v0
.end method

.method public getIdleTimeMillis()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, mIdleTimeMs:I

    return v0
.end method

.method public getRxTimeMillis()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, mRxTimeMs:I

    return v0
.end method

.method public getSleepTimeMillis()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, mSleepTimeMs:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 107
    iget-wide v0, p0, mTimestamp:J

    return-wide v0
.end method

.method public getTxTimeMillis()[I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, mTxTimeMs:[I

    return-object v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "totalTxTimeMs":I
    invoke-virtual {p0}, getTxTimeMillis()[I

    move-result-object v2

    .line 153
    .local v2, "txTime":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    const/4 v3, 0x5

    if-ge v0, v3, :cond_f

    .line 154
    aget v3, v2, v0

    add-int/2addr v1, v3

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 156
    :cond_f
    invoke-virtual {p0}, getIdleTimeMillis()I

    move-result v3

    if-nez v3, :cond_23

    if-nez v1, :cond_23

    invoke-virtual {p0}, getSleepTimeMillis()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0}, getIdleTimeMillis()I

    move-result v3

    if-eqz v3, :cond_25

    :cond_23
    const/4 v3, 0x1

    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mEnergyUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-wide v2, p0, mTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v1, p0, mSleepTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v1, p0, mIdleTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1d

    .line 97
    iget-object v1, p0, mTxTimeMs:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 99
    :cond_1d
    iget v1, p0, mRxTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v1, p0, mEnergyUsed:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
