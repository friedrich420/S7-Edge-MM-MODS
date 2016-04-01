.class public Lcom/android/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"

.field public static final EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 322
    new-instance v0, Lcom/android/ims/ImsCallProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, mRestrictCause:I

    .line 218
    iput v1, p0, mServiceType:I

    .line 219
    iput v1, p0, mCallType:I

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mCallExtras:Landroid/os/Bundle;

    .line 221
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 222
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, mRestrictCause:I

    .line 225
    iput p1, p0, mServiceType:I

    .line 226
    iput p2, p0, mCallType:I

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mCallExtras:Landroid/os/Bundle;

    .line 228
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, mRestrictCause:I

    .line 214
    invoke-direct {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 215
    return-void
.end method

.method public static OIRToPresentation(I)I
    .registers 2
    .param p0, "oir"    # I

    .prologue
    const/4 v0, 0x3

    .line 417
    packed-switch p0, :pswitch_data_c

    .line 427
    :goto_4
    :pswitch_4
    return v0

    .line 419
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 421
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 423
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 417
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method public static getCallTypeFromVideoState(I)I
    .registers 7
    .param p0, "videoState"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 376
    const/4 v5, 0x1

    invoke-static {p0, v5}, isVideoStateSet(II)Z

    move-result v2

    .line 377
    .local v2, "videoTx":Z
    invoke-static {p0, v4}, isVideoStateSet(II)Z

    move-result v1

    .line 378
    .local v1, "videoRx":Z
    invoke-static {p0, v3}, isVideoStateSet(II)Z

    move-result v0

    .line 379
    .local v0, "isPaused":Z
    if-eqz v0, :cond_13

    .line 380
    const/4 v3, 0x7

    .line 388
    :cond_12
    :goto_12
    return v3

    .line 381
    :cond_13
    if-eqz v2, :cond_19

    if-nez v1, :cond_19

    .line 382
    const/4 v3, 0x5

    goto :goto_12

    .line 383
    :cond_19
    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 384
    const/4 v3, 0x6

    goto :goto_12

    .line 385
    :cond_1f
    if-eqz v2, :cond_23

    if-nez v1, :cond_12

    :cond_23
    move v3, v4

    .line 388
    goto :goto_12
.end method

.method public static getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I
    .registers 3
    .param p0, "callProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "videostate":I
    iget v1, p0, mCallType:I

    packed-switch v1, :pswitch_data_22

    .line 357
    :pswitch_6
    const/4 v0, 0x0

    .line 360
    :goto_7
    invoke-virtual {p0}, isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 361
    or-int/lit8 v0, v0, 0x4

    .line 365
    :goto_15
    return v0

    .line 345
    :pswitch_16
    const/4 v0, 0x1

    .line 346
    goto :goto_7

    .line 348
    :pswitch_18
    const/4 v0, 0x2

    .line 349
    goto :goto_7

    .line 351
    :pswitch_1a
    const/4 v0, 0x3

    .line 352
    goto :goto_7

    .line 354
    :pswitch_1c
    const/4 v0, 0x0

    .line 355
    goto :goto_7

    .line 363
    :cond_1e
    and-int/lit8 v0, v0, -0x5

    goto :goto_15

    .line 343
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_6
        :pswitch_1a
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method private static isVideoStateSet(II)Z
    .registers 3
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .prologue
    .line 447
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static presentationToOIR(I)I
    .registers 2
    .param p0, "presentation"    # I

    .prologue
    .line 397
    packed-switch p0, :pswitch_data_e

    .line 407
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 399
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 401
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 403
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 405
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 397
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mServiceType:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCallType:I

    .line 318
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, mCallExtras:Landroid/os/Bundle;

    .line 319
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    iput-object v0, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 320
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 240
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_4
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 248
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 252
    .end local p2    # "defaultValue":Z
    :goto_4
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_5
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_4
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 260
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 264
    .end local p2    # "defaultValue":I
    :goto_4
    return p2

    .restart local p2    # "defaultValue":I
    :cond_5
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_4
.end method

.method public isVideoPaused()Z
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v0, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_9
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 274
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    :cond_9
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 280
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Lcom/android/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCallExtras(Lcom/android/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 290
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 291
    iget-object v0, p1, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, mCallExtras:Landroid/os/Bundle;

    .line 292
    return-void
.end method

.method public updateCallType(Lcom/android/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 286
    iget v0, p1, mCallType:I

    iput v0, p0, mCallType:I

    .line 287
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    iget v0, p0, mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 312
    iget-object v0, p0, mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    return-void
.end method
