.class public Landroid/telephony/PreciseCallState;
.super Ljava/lang/Object;
.source "PreciseCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PreciseCallState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x1

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x4

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x3

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x7

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x8

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x2

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x0

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x5

.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x6


# instance fields
.field private mBackgroundCallState:I

.field private mDisconnectCause:I

.field private mForegroundCallState:I

.field private mPreciseDisconnectCause:I

.field private mRingingCallState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 254
    new-instance v0, Landroid/telephony/PreciseCallState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseCallState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, mRingingCallState:I

    .line 64
    iput v0, p0, mForegroundCallState:I

    .line 65
    iput v0, p0, mBackgroundCallState:I

    .line 66
    iput v0, p0, mDisconnectCause:I

    .line 67
    iput v0, p0, mPreciseDisconnectCause:I

    .line 89
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 7
    .param p1, "ringingCall"    # I
    .param p2, "foregroundCall"    # I
    .param p3, "backgroundCall"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, mRingingCallState:I

    .line 64
    iput v0, p0, mForegroundCallState:I

    .line 65
    iput v0, p0, mBackgroundCallState:I

    .line 66
    iput v0, p0, mDisconnectCause:I

    .line 67
    iput v0, p0, mPreciseDisconnectCause:I

    .line 76
    iput p1, p0, mRingingCallState:I

    .line 77
    iput p2, p0, mForegroundCallState:I

    .line 78
    iput p3, p0, mBackgroundCallState:I

    .line 79
    iput p4, p0, mDisconnectCause:I

    .line 80
    iput p5, p0, mPreciseDisconnectCause:I

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, mRingingCallState:I

    .line 64
    iput v0, p0, mForegroundCallState:I

    .line 65
    iput v0, p0, mBackgroundCallState:I

    .line 66
    iput v0, p0, mDisconnectCause:I

    .line 67
    iput v0, p0, mPreciseDisconnectCause:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRingingCallState:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mForegroundCallState:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mBackgroundCallState:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDisconnectCause:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mPreciseDisconnectCause:I

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/PreciseCallState$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    if-ne p0, p1, :cond_5

    .line 290
    :cond_4
    :goto_4
    return v1

    .line 283
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 284
    goto :goto_4

    .line 286
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 287
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 289
    check-cast v0, Landroid/telephony/PreciseCallState;

    .line 290
    .local v0, "other":Landroid/telephony/PreciseCallState;
    iget v3, p0, mRingingCallState:I

    iget v4, v0, mRingingCallState:I

    if-eq v3, v4, :cond_36

    iget v3, p0, mForegroundCallState:I

    iget v4, v0, mForegroundCallState:I

    if-eq v3, v4, :cond_36

    iget v3, p0, mBackgroundCallState:I

    iget v4, v0, mBackgroundCallState:I

    if-eq v3, v4, :cond_36

    iget v3, p0, mDisconnectCause:I

    iget v4, v0, mDisconnectCause:I

    if-eq v3, v4, :cond_36

    iget v3, p0, mPreciseDisconnectCause:I

    iget v4, v0, mPreciseDisconnectCause:I

    if-ne v3, v4, :cond_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public getBackgroundCallState()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, mBackgroundCallState:I

    return v0
.end method

.method public getDisconnectCause()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, mDisconnectCause:I

    return v0
.end method

.method public getForegroundCallState()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, mForegroundCallState:I

    return v0
.end method

.method public getPreciseDisconnectCause()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, mPreciseDisconnectCause:I

    return v0
.end method

.method public getRingingCallState()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, mRingingCallState:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 268
    const/16 v0, 0x1f

    .line 269
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 270
    .local v1, "result":I
    iget v2, p0, mRingingCallState:I

    add-int/lit8 v1, v2, 0x1f

    .line 271
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mForegroundCallState:I

    add-int v1, v2, v3

    .line 272
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mBackgroundCallState:I

    add-int v1, v2, v3

    .line 273
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mDisconnectCause:I

    add-int v1, v2, v3

    .line 274
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mPreciseDisconnectCause:I

    add-int v1, v2, v3

    .line 275
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRingingCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Foreground call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mForegroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Background call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBackgroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Precise disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mPreciseDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 247
    iget v0, p0, mRingingCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, mForegroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, mBackgroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, mDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, mPreciseDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return-void
.end method
