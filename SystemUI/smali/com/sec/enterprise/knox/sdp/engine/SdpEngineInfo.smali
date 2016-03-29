.class public Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
.super Ljava/lang/Object;
.source "SdpEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

.field private static PWD_RESET_TOKEN:Ljava/lang/String;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mId:I

.field private mIsMigrating:Z

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mUserId:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    .line 78
    const-string v0, "PwdResetToken"

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    .line 69
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    .line 70
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 71
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    .line 72
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 73
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    .line 74
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpEngineInfo { alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
