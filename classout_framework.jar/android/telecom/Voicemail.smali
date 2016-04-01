.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 286
    new-instance v0, Landroid/telecom/Voicemail$1;

    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, mTimestamp:Ljava/lang/Long;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mNumber:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_7e

    .line 303
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 307
    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, mId:Ljava/lang/Long;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, mDuration:Ljava/lang/Long;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mSource:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mProviderData:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_81

    .line 312
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, mUri:Landroid/net/Uri;

    .line 316
    :goto_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_84

    move v0, v1

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mIsRead:Ljava/lang/Boolean;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_86

    :goto_6f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mHasContent:Ljava/lang/Boolean;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mTranscription:Ljava/lang/String;

    .line 319
    return-void

    .line 305
    :cond_7e
    iput-object v3, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_28

    .line 314
    :cond_81
    iput-object v3, p0, mUri:Landroid/net/Uri;

    goto :goto_5c

    :cond_84
    move v0, v2

    .line 316
    goto :goto_63

    :cond_86
    move v1, v2

    .line 317
    goto :goto_6f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/Voicemail$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 12
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "id"    # Ljava/lang/Long;
    .param p5, "duration"    # Ljava/lang/Long;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "providerData"    # Ljava/lang/String;
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "isRead"    # Ljava/lang/Boolean;
    .param p10, "hasContent"    # Ljava/lang/Boolean;
    .param p11, "transcription"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, mTimestamp:Ljava/lang/Long;

    .line 45
    iput-object p2, p0, mNumber:Ljava/lang/String;

    .line 46
    iput-object p3, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 47
    iput-object p4, p0, mId:Ljava/lang/Long;

    .line 48
    iput-object p5, p0, mDuration:Ljava/lang/Long;

    .line 49
    iput-object p6, p0, mSource:Ljava/lang/String;

    .line 50
    iput-object p7, p0, mProviderData:Ljava/lang/String;

    .line 51
    iput-object p8, p0, mUri:Landroid/net/Uri;

    .line 52
    iput-object p9, p0, mIsRead:Ljava/lang/Boolean;

    .line 53
    iput-object p10, p0, mHasContent:Ljava/lang/Boolean;

    .line 54
    iput-object p11, p0, mTranscription:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail$1;)V
    .registers 13
    .param p1, "x0"    # Ljava/lang/Long;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "x3"    # Ljava/lang/Long;
    .param p5, "x4"    # Ljava/lang/Long;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Landroid/net/Uri;
    .param p9, "x8"    # Ljava/lang/Boolean;
    .param p10, "x9"    # Ljava/lang/Boolean;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Landroid/telecom/Voicemail$1;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p11}, <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5
    .param p0, "timestamp"    # J
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5
    .param p0, "id"    # J
    .param p2, "sourceData"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-object v0, p0, mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_56

    .line 258
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_17
    iget-object v0, p0, mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget-object v0, p0, mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-object v0, p0, mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, mProviderData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, mUri:Landroid/net/Uri;

    if-nez v0, :cond_5f

    .line 268
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    :goto_3a
    iget-object v0, p0, mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 274
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    :goto_45
    iget-object v0, p0, mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    :goto_50
    iget-object v0, p0, mTranscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 260
    :cond_56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 270
    :cond_5f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    .line 276
    :cond_68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 281
    :cond_6c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50
.end method
