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

.field private static final DEBUG:Z = true

.field private static PERSONA_PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SdpEngineInfo"


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
    .registers 1

    .prologue
    .line 77
    const-string v0, "PersonaPwdResetToken"

    sput-object v0, PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    .line 78
    const-string v0, "PwdResetToken"

    sput-object v0, PWD_RESET_TOKEN:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, mIsMigrating:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, mAlias:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 68
    iput v1, p0, mId:I

    .line 69
    iput v1, p0, mUserId:I

    .line 70
    iput v1, p0, mState:I

    .line 71
    iput v1, p0, mFlags:I

    .line 72
    iput v1, p0, mVersion:I

    .line 73
    iput v1, p0, mType:I

    .line 74
    iput-boolean v2, p0, mIsMigrating:Z

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, mIsMigrating:Z

    .line 31
    const-string v1, ""

    iput-object v1, p0, mPackageName:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mAlias:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mPackageName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mId:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mUserId:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mState:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mFlags:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mVersion:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mType:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    const/4 v0, 0x1

    :cond_41
    iput-boolean v0, p0, mIsMigrating:Z

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .param p4, "state"    # I
    .param p5, "flags"    # I
    .param p6, "version"    # I
    .param p7, "isMigrating"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsMigrating:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 40
    if-nez p1, :cond_32

    .line 41
    invoke-static {p2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAlias:Ljava/lang/String;

    .line 44
    :goto_12
    iput p2, p0, mId:I

    .line 45
    iput p3, p0, mUserId:I

    .line 46
    iput p4, p0, mState:I

    .line 47
    iput p5, p0, mFlags:I

    .line 48
    iput p6, p0, mVersion:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, mAlias:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 52
    iget-object v0, p0, mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 53
    const/4 v0, 0x1

    iput v0, p0, mType:I

    .line 59
    :goto_2f
    iput-boolean p7, p0, mIsMigrating:Z

    .line 60
    return-void

    .line 43
    :cond_32
    iput-object p1, p0, mAlias:Ljava/lang/String;

    goto :goto_12

    .line 55
    :cond_35
    const/4 v0, 0x2

    iput v0, p0, mType:I

    goto :goto_2f

    .line 57
    :cond_39
    const/4 v0, -0x1

    iput v0, p0, mType:I

    goto :goto_2f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResetTokenTimaAlias()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    iget v0, p0, mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_1a
    return-object v0

    .line 83
    :cond_1b
    iget v0, p0, mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 86
    :cond_36
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, mState:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, mUserId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, mVersion:I

    return v0
.end method

.method public isAndroidDefaultEngine()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, mType:I

    if-ne v1, v0, :cond_6

    .line 170
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCustomEngine()Z
    .registers 3

    .prologue
    .line 147
    iget v0, p0, mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMdfpp()Z
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, isMinor()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 163
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMigrating()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, mIsMigrating:Z

    return v0
.end method

.method public isMinor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 154
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    .line 157
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIsMigrating(Z)V
    .registers 2
    .param p1, "isMigrating"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, mIsMigrating:Z

    .line 140
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_4

    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 99
    :cond_4
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 112
    iput p1, p0, mState:I

    .line 113
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 131
    iput p1, p0, mVersion:I

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 174
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpEngineInfo { alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 190
    iget-object v0, p0, mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget v0, p0, mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v0, p0, mIsMigrating:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void

    .line 198
    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method
