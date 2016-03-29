.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final deviceTypeDefaultIcon:[I

.field private static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field contactDrawble:Landroid/graphics/drawable/Drawable;

.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field deviceName:Landroid/widget/TextView;

.field private iconIndex:I

.field private mDeviceType:I

.field private mTalkback:Z

.field relLayout:Landroid/widget/RelativeLayout;

.field secondSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    .line 147
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    .line 81
    :array_0
    .array-data 4
        0x7f02037e
        0x7f020391
        0x7f020394
        0x7f020383
        0x7f020372
        0x7f020392
        0x7f02037c
        0x7f02038b
        0x7f020387
        0x7f020393
        0x7f020378
        0x7f020379
        0x7f020389
        0x7f020390
        0x7f020373
        0x7f020382
        0x7f020386
        0x7f020388
        0x7f02038c
        0x7f020385
        0x7f02037d
        0x7f02038e
        0x7f020392
        0x7f02038b
        0x7f02038a
        0x7f020377
        0x7f020376
    .end array-data

    .line 122
    :array_1
    .array-data 4
        0x7f020384
        0x7f020380
        0x7f02037a
        0x7f02037b
        0x7f02038d
        0x7f020374
        0x7f020375
        0x7f02037f
        0x7f02037c
    .end array-data

    .line 147
    :array_2
    .array-data 4
        0x7f020383
        0x7f02037b
        0x7f020385
        0x7f020377
        0x7f02038f
        0x7f020381
        0x7f020392
        0x7f02038d
        0x7f02037a
        0x7f02037e
        0x7f02037c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 162
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 144
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    .line 145
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 167
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v0, v3, 0xff

    .line 169
    .local v0, "index":I
    const v3, 0x7f040268

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setLayoutResource(I)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 179
    :cond_0
    if-lt v2, v6, :cond_1

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_1

    .line 180
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    .line 181
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 183
    :sswitch_0
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v7

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 186
    :sswitch_1
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 189
    :sswitch_2
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 192
    :sswitch_3
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 195
    :sswitch_4
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 198
    :sswitch_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 201
    :sswitch_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 204
    :sswitch_7
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 207
    :sswitch_8
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto :goto_0

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_3

    array-length v3, v1

    if-ge v3, v6, :cond_4

    .line 219
    :cond_3
    const-string v3, "WifiP2pPeer"

    const-string v4, "Malformed primaryDeviceType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto/16 :goto_0

    .line 222
    :cond_4
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 223
    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    if-lt v3, v6, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_5

    .line 224
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto/16 :goto_0

    .line 226
    :cond_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x401 -> :sswitch_0
        0x501 -> :sswitch_1
        0x502 -> :sswitch_2
        0x503 -> :sswitch_3
        0x701 -> :sswitch_4
        0x702 -> :sswitch_5
        0x704 -> :sswitch_6
        0x1502 -> :sswitch_7
        0x1601 -> :sswitch_8
    .end sparse-switch
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "statusArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const v2, 0x7f0e0553

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 307
    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->iconIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 314
    :goto_1
    return-void

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceName:Landroid/widget/TextView;

    const v3, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 294
    const v2, 0x7f0e0580

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    .line 295
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    const v2, 0x7f0e0583

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    const v2, 0x7f0e0584

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    .line 303
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSecondSummary(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 259
    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v2, :cond_2

    .line 264
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 267
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 270
    .local v0, "other":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 279
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceName:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0d0602

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->secondSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const v0, 0x7f0d0601

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->relLayout:Landroid/widget/RelativeLayout;

    .line 246
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 250
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 251
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTalkback(Z)V
    .locals 0
    .param p1, "talkback"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 255
    return-void
.end method
