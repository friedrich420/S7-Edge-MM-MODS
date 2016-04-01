.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:I = 0x3fffe

.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, mPhoneId:I

    .line 77
    iput p2, p0, mRadioAccessFamily:I

    .line 78
    return-void
.end method

.method private static getAdjustedRaf(I)I
    .registers 4
    .param p0, "raf"    # I

    .prologue
    const v2, 0x10006

    const v1, 0x8e08

    .line 234
    and-int v0, v2, p0

    if-lez v0, :cond_b

    or-int/2addr p0, v2

    .line 235
    :cond_b
    and-int v0, v1, p0

    if-lez v0, :cond_10

    or-int/2addr p0, v1

    .line 236
    :cond_10
    and-int/lit8 v0, p0, 0x70

    if-lez v0, :cond_16

    or-int/lit8 p0, p0, 0x70

    .line 237
    :cond_16
    and-int/lit16 v0, p0, 0x3180

    if-lez v0, :cond_1c

    or-int/lit16 p0, p0, 0x3180

    .line 239
    :cond_1c
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .registers 2
    .param p0, "raf"    # I

    .prologue
    .line 245
    invoke-static {p0}, getAdjustedRaf(I)I

    move-result p0

    .line 247
    sparse-switch p0, :sswitch_data_46

    .line 315
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 319
    .local v0, "type":I
    :goto_9
    return v0

    .line 249
    .end local v0    # "type":I
    :sswitch_a
    const/4 v0, 0x0

    .line 250
    .restart local v0    # "type":I
    goto :goto_9

    .line 252
    .end local v0    # "type":I
    :sswitch_c
    const/4 v0, 0x1

    .line 253
    .restart local v0    # "type":I
    goto :goto_9

    .line 255
    .end local v0    # "type":I
    :sswitch_e
    const/4 v0, 0x2

    .line 256
    .restart local v0    # "type":I
    goto :goto_9

    .line 258
    .end local v0    # "type":I
    :sswitch_10
    const/4 v0, 0x4

    .line 259
    .restart local v0    # "type":I
    goto :goto_9

    .line 261
    .end local v0    # "type":I
    :sswitch_12
    const/16 v0, 0x8

    .line 262
    .restart local v0    # "type":I
    goto :goto_9

    .line 264
    .end local v0    # "type":I
    :sswitch_15
    const/16 v0, 0x9

    .line 265
    .restart local v0    # "type":I
    goto :goto_9

    .line 267
    .end local v0    # "type":I
    :sswitch_18
    const/16 v0, 0xa

    .line 268
    .restart local v0    # "type":I
    goto :goto_9

    .line 270
    .end local v0    # "type":I
    :sswitch_1b
    const/16 v0, 0xb

    .line 271
    .restart local v0    # "type":I
    goto :goto_9

    .line 273
    .end local v0    # "type":I
    :sswitch_1e
    const/16 v0, 0xc

    .line 274
    .restart local v0    # "type":I
    goto :goto_9

    .line 276
    .end local v0    # "type":I
    :sswitch_21
    const/4 v0, 0x5

    .line 277
    .restart local v0    # "type":I
    goto :goto_9

    .line 279
    .end local v0    # "type":I
    :sswitch_23
    const/4 v0, 0x6

    .line 280
    .restart local v0    # "type":I
    goto :goto_9

    .line 282
    .end local v0    # "type":I
    :sswitch_25
    const/4 v0, 0x7

    .line 283
    .restart local v0    # "type":I
    goto :goto_9

    .line 285
    .end local v0    # "type":I
    :sswitch_27
    const/16 v0, 0xd

    .line 286
    .restart local v0    # "type":I
    goto :goto_9

    .line 288
    .end local v0    # "type":I
    :sswitch_2a
    const/16 v0, 0xe

    .line 289
    .restart local v0    # "type":I
    goto :goto_9

    .line 291
    .end local v0    # "type":I
    :sswitch_2d
    const/16 v0, 0xf

    .line 292
    .restart local v0    # "type":I
    goto :goto_9

    .line 294
    .end local v0    # "type":I
    :sswitch_30
    const/16 v0, 0x10

    .line 295
    .restart local v0    # "type":I
    goto :goto_9

    .line 297
    .end local v0    # "type":I
    :sswitch_33
    const/16 v0, 0x11

    .line 298
    .restart local v0    # "type":I
    goto :goto_9

    .line 300
    .end local v0    # "type":I
    :sswitch_36
    const/16 v0, 0x12

    .line 301
    .restart local v0    # "type":I
    goto :goto_9

    .line 303
    .end local v0    # "type":I
    :sswitch_39
    const/16 v0, 0x13

    .line 304
    .restart local v0    # "type":I
    goto :goto_9

    .line 306
    .end local v0    # "type":I
    :sswitch_3c
    const/16 v0, 0x14

    .line 307
    .restart local v0    # "type":I
    goto :goto_9

    .line 309
    .end local v0    # "type":I
    :sswitch_3f
    const/16 v0, 0x15

    .line 310
    .restart local v0    # "type":I
    goto :goto_9

    .line 312
    .end local v0    # "type":I
    :sswitch_42
    const/16 v0, 0x16

    .line 313
    .restart local v0    # "type":I
    goto :goto_9

    .line 247
    nop

    :sswitch_data_46
    .sparse-switch
        0x70 -> :sswitch_21
        0x3180 -> :sswitch_23
        0x31f0 -> :sswitch_10
        0x4000 -> :sswitch_1b
        0x71f0 -> :sswitch_12
        0x8e08 -> :sswitch_e
        0xce08 -> :sswitch_1e
        0x10006 -> :sswitch_c
        0x18e0e -> :sswitch_a
        0x1bffe -> :sswitch_25
        0x1ce0e -> :sswitch_15
        0x1fffe -> :sswitch_18
        0x20000 -> :sswitch_27
        0x24000 -> :sswitch_2d
        0x28e08 -> :sswitch_2a
        0x2ce08 -> :sswitch_39
        0x30006 -> :sswitch_30
        0x34006 -> :sswitch_33
        0x38e0e -> :sswitch_36
        0x3bffe -> :sswitch_3f
        0x3ce0e -> :sswitch_3c
        0x3fffe -> :sswitch_42
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_5c

    .line 222
    const/4 v0, 0x1

    .line 226
    .local v0, "raf":I
    :goto_4
    return v0

    .line 153
    .end local v0    # "raf":I
    :pswitch_5
    const v0, 0x18e0e

    .line 154
    .restart local v0    # "raf":I
    goto :goto_4

    .line 156
    .end local v0    # "raf":I
    :pswitch_9
    const v0, 0x10006

    .line 157
    .restart local v0    # "raf":I
    goto :goto_4

    .line 159
    .end local v0    # "raf":I
    :pswitch_d
    const v0, 0x8e08

    .line 160
    .restart local v0    # "raf":I
    goto :goto_4

    .line 162
    .end local v0    # "raf":I
    :pswitch_11
    const v0, 0x18e0e

    .line 163
    .restart local v0    # "raf":I
    goto :goto_4

    .line 165
    .end local v0    # "raf":I
    :pswitch_15
    const/16 v0, 0x31f0

    .line 166
    .restart local v0    # "raf":I
    goto :goto_4

    .line 168
    .end local v0    # "raf":I
    :pswitch_18
    const/16 v0, 0x71f0

    .line 169
    .restart local v0    # "raf":I
    goto :goto_4

    .line 171
    .end local v0    # "raf":I
    :pswitch_1b
    const v0, 0x1ce0e

    .line 172
    .restart local v0    # "raf":I
    goto :goto_4

    .line 174
    .end local v0    # "raf":I
    :pswitch_1f
    const v0, 0x1fffe

    .line 175
    .restart local v0    # "raf":I
    goto :goto_4

    .line 177
    .end local v0    # "raf":I
    :pswitch_23
    const/16 v0, 0x4000

    .line 178
    .restart local v0    # "raf":I
    goto :goto_4

    .line 180
    .end local v0    # "raf":I
    :pswitch_26
    const v0, 0xce08

    .line 181
    .restart local v0    # "raf":I
    goto :goto_4

    .line 183
    .end local v0    # "raf":I
    :pswitch_2a
    const/16 v0, 0x70

    .line 184
    .restart local v0    # "raf":I
    goto :goto_4

    .line 186
    .end local v0    # "raf":I
    :pswitch_2d
    const/16 v0, 0x3180

    .line 187
    .restart local v0    # "raf":I
    goto :goto_4

    .line 189
    .end local v0    # "raf":I
    :pswitch_30
    const v0, 0x1bffe

    .line 190
    .restart local v0    # "raf":I
    goto :goto_4

    .line 192
    .end local v0    # "raf":I
    :pswitch_34
    const/high16 v0, 0x20000

    .line 193
    .restart local v0    # "raf":I
    goto :goto_4

    .line 195
    .end local v0    # "raf":I
    :pswitch_37
    const v0, 0x28e08

    .line 196
    .restart local v0    # "raf":I
    goto :goto_4

    .line 198
    .end local v0    # "raf":I
    :pswitch_3b
    const v0, 0x24000

    .line 199
    .restart local v0    # "raf":I
    goto :goto_4

    .line 201
    .end local v0    # "raf":I
    :pswitch_3f
    const v0, 0x30006

    .line 202
    .restart local v0    # "raf":I
    goto :goto_4

    .line 204
    .end local v0    # "raf":I
    :pswitch_43
    const v0, 0x34006

    .line 205
    .restart local v0    # "raf":I
    goto :goto_4

    .line 207
    .end local v0    # "raf":I
    :pswitch_47
    const v0, 0x38e0e

    .line 208
    .restart local v0    # "raf":I
    goto :goto_4

    .line 210
    .end local v0    # "raf":I
    :pswitch_4b
    const v0, 0x2ce08

    .line 211
    .restart local v0    # "raf":I
    goto :goto_4

    .line 213
    .end local v0    # "raf":I
    :pswitch_4f
    const v0, 0x3ce0e

    .line 214
    .restart local v0    # "raf":I
    goto :goto_4

    .line 216
    .end local v0    # "raf":I
    :pswitch_53
    const v0, 0x3bffe

    .line 217
    .restart local v0    # "raf":I
    goto :goto_4

    .line 219
    .end local v0    # "raf":I
    :pswitch_57
    const v0, 0x3fffe

    .line 220
    .restart local v0    # "raf":I
    goto :goto_4

    .line 151
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_18
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_26
        :pswitch_34
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .registers 9
    .param p0, "rafList"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 351
    const-string v7, "\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "rafs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 353
    .local v6, "result":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    .line 354
    .local v3, "raf":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, singleRafTypeFromString(Ljava/lang/String;)I

    move-result v4

    .line 355
    .local v4, "rafType":I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_1e

    .line 358
    .end local v3    # "raf":Ljava/lang/String;
    .end local v4    # "rafType":I
    :goto_1d
    return v4

    .line 356
    .restart local v3    # "raf":Ljava/lang/String;
    .restart local v4    # "rafType":I
    :cond_1e
    or-int/2addr v6, v4

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v3    # "raf":Ljava/lang/String;
    .end local v4    # "rafType":I
    :cond_22
    move v4, v6

    .line 358
    goto :goto_1d
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .registers 8
    .param p0, "rafString"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v4, 0x1

    .line 323
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_14a

    :cond_f
    :goto_f
    packed-switch v5, :pswitch_data_1a0

    move v0, v4

    .line 345
    :goto_13
    :pswitch_13
    return v0

    .line 323
    :sswitch_14
    const-string v6, "GPRS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x0

    goto :goto_f

    :sswitch_1e
    const-string v6, "EDGE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v5, v4

    goto :goto_f

    :sswitch_28
    const-string v6, "UMTS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v5, v0

    goto :goto_f

    :sswitch_32
    const-string v6, "IS95A"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x3

    goto :goto_f

    :sswitch_3c
    const-string v6, "IS95B"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v5, v1

    goto :goto_f

    :sswitch_46
    const-string v6, "1XRTT"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x5

    goto :goto_f

    :sswitch_50
    const-string v6, "EVDO_0"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x6

    goto :goto_f

    :sswitch_5a
    const-string v6, "EVDO_A"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x7

    goto :goto_f

    :sswitch_64
    const-string v6, "HSDPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v5, v2

    goto :goto_f

    :sswitch_6e
    const-string v6, "HSUPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0x9

    goto :goto_f

    :sswitch_79
    const-string v6, "HSPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xa

    goto :goto_f

    :sswitch_84
    const-string v6, "EVDO_B"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xb

    goto :goto_f

    :sswitch_8f
    const-string v6, "EHRPD"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xc

    goto/16 :goto_f

    :sswitch_9b
    const-string v6, "LTE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xd

    goto/16 :goto_f

    :sswitch_a7
    const-string v6, "HSPAP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xe

    goto/16 :goto_f

    :sswitch_b3
    const-string v6, "GSM"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0xf

    goto/16 :goto_f

    :sswitch_bf
    const-string v6, "TD_SCDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v5, v3

    goto/16 :goto_f

    :sswitch_ca
    const-string v6, "HS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0x11

    goto/16 :goto_f

    :sswitch_d6
    const-string v6, "CDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0x12

    goto/16 :goto_f

    :sswitch_e2
    const-string v6, "EVDO"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0x13

    goto/16 :goto_f

    :sswitch_ee
    const-string v6, "WCDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v5, 0x14

    goto/16 :goto_f

    :pswitch_fa
    move v0, v1

    .line 325
    goto/16 :goto_13

    :pswitch_fd
    move v0, v2

    .line 326
    goto/16 :goto_13

    :pswitch_100
    move v0, v3

    .line 327
    goto/16 :goto_13

    .line 328
    :pswitch_103
    const/16 v0, 0x20

    goto/16 :goto_13

    .line 329
    :pswitch_107
    const/16 v0, 0x40

    goto/16 :goto_13

    .line 330
    :pswitch_10b
    const/16 v0, 0x80

    goto/16 :goto_13

    .line 331
    :pswitch_10f
    const/16 v0, 0x100

    goto/16 :goto_13

    .line 332
    :pswitch_113
    const/16 v0, 0x200

    goto/16 :goto_13

    .line 333
    :pswitch_117
    const/16 v0, 0x400

    goto/16 :goto_13

    .line 334
    :pswitch_11b
    const/16 v0, 0x800

    goto/16 :goto_13

    .line 335
    :pswitch_11f
    const/16 v0, 0x1000

    goto/16 :goto_13

    .line 336
    :pswitch_123
    const/16 v0, 0x2000

    goto/16 :goto_13

    .line 337
    :pswitch_127
    const/16 v0, 0x4000

    goto/16 :goto_13

    .line 338
    :pswitch_12b
    const v0, 0x8000

    goto/16 :goto_13

    .line 339
    :pswitch_130
    const/high16 v0, 0x10000

    goto/16 :goto_13

    .line 340
    :pswitch_134
    const/high16 v0, 0x20000

    goto/16 :goto_13

    .line 341
    :pswitch_138
    const v0, 0x8e00

    goto/16 :goto_13

    .line 342
    :pswitch_13d
    const/16 v0, 0x70

    goto/16 :goto_13

    .line 343
    :pswitch_141
    const/16 v0, 0x3180

    goto/16 :goto_13

    .line 344
    :pswitch_145
    const v0, 0x8e08

    goto/16 :goto_13

    .line 323
    :sswitch_data_14a
    .sparse-switch
        -0x36280a07 -> :sswitch_bf
        0x90b -> :sswitch_ca
        0x114e1 -> :sswitch_b3
        0x127bd -> :sswitch_9b
        0x1f7db5 -> :sswitch_d6
        0x2065bd -> :sswitch_1e
        0x20a8fc -> :sswitch_e2
        0x217cea -> :sswitch_14
        0x21fc3c -> :sswitch_79
        0x27cf17 -> :sswitch_28
        0x2dbbeab -> :sswitch_46
        0x3ee4e43 -> :sswitch_8f
        0x41d604a -> :sswitch_64
        0x41d8b94 -> :sswitch_a7
        0x41da01b -> :sswitch_6e
        0x42b4b3b -> :sswitch_32
        0x42b4b3c -> :sswitch_3c
        0x4e97a8c -> :sswitch_ee
        0x7a9a65ad -> :sswitch_50
        0x7a9a65be -> :sswitch_5a
        0x7a9a65bf -> :sswitch_84
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_fa
        :pswitch_fd
        :pswitch_100
        :pswitch_103
        :pswitch_107
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_117
        :pswitch_11b
        :pswitch_11f
        :pswitch_123
        :pswitch_127
        :pswitch_12b
        :pswitch_130
        :pswitch_134
        :pswitch_138
        :pswitch_13d
        :pswitch_141
        :pswitch_145
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRadioAccessFamily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRadioAccessFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget v0, p0, mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void
.end method
