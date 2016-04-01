.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClipboardData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mCallerUid:J

.field protected mClipdata:Landroid/content/ClipData;

.field protected mFormatID:I

.field protected mIsProtected:Z

.field private transient mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private transient mStateToSave:Z

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 257
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "format"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x14

    iput v0, p0, LOG_LEN:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mCallerUid:J

    .line 48
    iput-boolean v2, p0, mIsProtected:Z

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTimestamp:J

    .line 57
    iput-boolean v2, p0, mStateToSave:Z

    .line 58
    iput-object v3, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 66
    iput-boolean v2, p0, mStateToSave:Z

    .line 68
    iput p1, p0, mFormatID:I

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, mCallerUid:J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mTimestamp:J

    .line 71
    iput-object v3, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 72
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 105
    iget-wide v0, p0, mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, mStateToSave:Z

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    iput-wide v0, p0, mTimestamp:J

    .line 109
    :cond_1a
    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 6
    .param p1, "format"    # I

    .prologue
    .line 156
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 158
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_e

    .line 159
    invoke-virtual {p0, p1, v0}, SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 160
    const/4 v0, 0x0

    .line 168
    :cond_d
    :goto_d
    return-object v0

    .line 163
    :cond_e
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 164
    const-string v1, "ClipboardData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public GetFomat()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, mFormatID:I

    return v0
.end method

.method public GetProtectState()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, mIsProtected:Z

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .registers 6
    .param p1, "format"    # I

    .prologue
    const/4 v2, 0x1

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "isformat":Z
    if-eq p1, v2, :cond_8

    iget v3, p0, mFormatID:I

    if-ne v3, p1, :cond_9

    .line 187
    :cond_8
    :goto_8
    return v2

    .line 184
    :cond_9
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 185
    .local v0, "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    .line 187
    goto :goto_8
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 5
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 198
    if-eqz p2, :cond_13

    .line 199
    iget-object v0, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 200
    iget-wide v0, p0, mTimestamp:J

    invoke-virtual {p2, v0, v1}, setTimestamp(J)V

    .line 201
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {p2, v0}, setClipdata(Landroid/content/ClipData;)V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public SetProtectState(Z)V
    .registers 2
    .param p1, "isProtect"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, mIsProtected:Z

    .line 291
    return-void
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "Result":Z
    if-eqz p1, :cond_15

    .line 232
    instance-of v2, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v2, :cond_18

    move-object v1, p1

    .line 233
    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 234
    .local v1, "trgData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, getFormat()I

    move-result v2

    invoke-virtual {p0}, getFormat()I

    move-result v3

    if-ne v2, v3, :cond_16

    const/4 v0, 0x1

    .line 239
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_15
    :goto_15
    return v0

    .line 234
    .restart local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 236
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_18
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15
.end method

.method public getCallerUid()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, mCallerUid:J

    return-wide v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    return-object v0
.end method

.method public getFormat()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, mFormatID:I

    return v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStateToSave()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, mStateToSave:Z

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, mTimestamp:J

    return-wide v0
.end method

.method public abstract isValidData()Z
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method protected abstract readFromSource(Landroid/os/Parcel;)V
.end method

.method public setClipdata(Landroid/content/ClipData;)V
    .registers 2
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    .line 316
    iput-object p1, p0, mClipdata:Landroid/content/ClipData;

    .line 317
    return-void
.end method

.method public setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 113
    iput-object p1, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 114
    return-void
.end method

.method public setStateToSave(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, mStateToSave:Z

    .line 86
    return-void
.end method

.method public setTimestamp(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 100
    iput-wide p1, p0, mTimestamp:J

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 218
    iget v0, p0, mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-wide v0, p0, mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget-object v0, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1c

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 226
    :goto_1b
    return-void

    .line 224
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b
.end method
