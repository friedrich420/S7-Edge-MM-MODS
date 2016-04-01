.class public final Landroid/telecom/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BUSY:I = 0x7

.field public static final CANCELED:I = 0x4

.field public static final CONNECTION_MANAGER_NOT_SUPPORTED:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = 0x1

.field public static final LOCAL:I = 0x2

.field public static final MISSED:I = 0x5

.field public static final OTHER:I = 0x9

.field public static final REJECTED:I = 0x6

.field public static final REMOTE:I = 0x3

.field public static final RESTRICTED:I = 0x8

.field public static final UNKNOWN:I


# instance fields
.field private mDisconnectCode:I

.field private mDisconnectDescription:Ljava/lang/CharSequence;

.field private mDisconnectLabel:Ljava/lang/CharSequence;

.field private mDisconnectReason:Ljava/lang/String;

.field private mToneToPlay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 177
    new-instance v0, Landroid/telecom/DisconnectCause$1;

    invoke-direct {v0}, Landroid/telecom/DisconnectCause$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, mDisconnectCode:I

    .line 116
    iput-object p2, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    .line 117
    iput-object p3, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    .line 118
    iput-object p4, p0, mDisconnectReason:Ljava/lang/String;

    .line 119
    iput p5, p0, mToneToPlay:I

    .line 120
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 219
    instance-of v2, p1, Landroid/telecom/DisconnectCause;

    if-eqz v2, :cond_55

    move-object v0, p1

    .line 220
    check-cast v0, Landroid/telecom/DisconnectCause;

    .line 221
    .local v0, "d":Landroid/telecom/DisconnectCause;
    iget v2, p0, mDisconnectCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0}, getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, mDisconnectReason:Ljava/lang/String;

    invoke-virtual {v0}, getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, p0, mToneToPlay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, getTone()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v1, 0x1

    .line 227
    .end local v0    # "d":Landroid/telecom/DisconnectCause;
    :cond_55
    return v1
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, mDisconnectCode:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, mDisconnectReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTone()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, mToneToPlay:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 210
    iget v0, p0, mDisconnectCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, mDisconnectReason:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mToneToPlay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 232
    const-string v0, ""

    .line 233
    .local v0, "code":Ljava/lang/String;
    iget v4, p0, mDisconnectCode:I

    packed-switch v4, :pswitch_data_c4

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mDisconnectCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_1c
    iget-object v4, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_b0

    const-string v2, ""

    .line 272
    .local v2, "label":Ljava/lang/String;
    :goto_22
    iget-object v4, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    if-nez v4, :cond_b8

    const-string v1, ""

    .line 274
    .local v1, "description":Ljava/lang/String;
    :goto_28
    iget-object v4, p0, mDisconnectReason:Ljava/lang/String;

    if-nez v4, :cond_c0

    const-string v3, ""

    .line 275
    .local v3, "reason":Ljava/lang/String;
    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause [ Code: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Label: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Description: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Reason: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Tone: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mToneToPlay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 235
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_8a
    const-string v0, "UNKNOWN"

    .line 236
    goto :goto_1c

    .line 238
    :pswitch_8d
    const-string v0, "ERROR"

    .line 239
    goto :goto_1c

    .line 241
    :pswitch_90
    const-string v0, "LOCAL"

    .line 242
    goto :goto_1c

    .line 244
    :pswitch_93
    const-string v0, "REMOTE"

    .line 245
    goto :goto_1c

    .line 247
    :pswitch_96
    const-string v0, "CANCELED"

    .line 248
    goto :goto_1c

    .line 250
    :pswitch_99
    const-string v0, "MISSED"

    .line 251
    goto :goto_1c

    .line 253
    :pswitch_9c
    const-string v0, "REJECTED"

    .line 254
    goto/16 :goto_1c

    .line 256
    :pswitch_a0
    const-string v0, "BUSY"

    .line 257
    goto/16 :goto_1c

    .line 259
    :pswitch_a4
    const-string v0, "RESTRICTED"

    .line 260
    goto/16 :goto_1c

    .line 262
    :pswitch_a8
    const-string v0, "OTHER"

    .line 263
    goto/16 :goto_1c

    .line 265
    :pswitch_ac
    const-string v0, "CONNECTION_MANAGER_NOT_SUPPORTED"

    .line 266
    goto/16 :goto_1c

    .line 271
    :cond_b0
    iget-object v4, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_22

    .line 272
    .restart local v2    # "label":Ljava/lang/String;
    :cond_b8
    iget-object v4, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_28

    .line 274
    .restart local v1    # "description":Ljava/lang/String;
    :cond_c0
    iget-object v3, p0, mDisconnectReason:Ljava/lang/String;

    goto/16 :goto_2e

    .line 233
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_93
        :pswitch_96
        :pswitch_99
        :pswitch_9c
        :pswitch_a0
        :pswitch_a4
        :pswitch_a8
        :pswitch_ac
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget v0, p0, mDisconnectCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 198
    iget-object v0, p0, mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 199
    iget-object v0, p0, mDisconnectReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, mToneToPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
