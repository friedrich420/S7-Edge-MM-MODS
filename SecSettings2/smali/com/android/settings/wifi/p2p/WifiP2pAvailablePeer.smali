.class public Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
.super Landroid/preference/CheckBoxPreference;
.source "WifiP2pAvailablePeer.java"


# static fields
.field private static final deviceTypeDefaultIcon:[I

.field private static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field contactDrawble:Landroid/graphics/drawable/Drawable;

.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private deviceName:Landroid/widget/TextView;

.field private iconIndex:I

.field private mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeDefaultIcon:[I

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    .line 137
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    return-void

    .line 76
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

    .line 117
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

    .line 137
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

    .line 152
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    .line 135
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    .line 153
    const v3, 0x7f040267

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setLayoutResource(I)V

    .line 154
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 158
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v0, v3, 0xff

    .line 160
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 161
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 219
    :goto_0
    return-void

    .line 168
    :cond_0
    if-lt v2, v6, :cond_1

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_1

    .line 169
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    .line 170
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 172
    :sswitch_0
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v7

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 175
    :sswitch_1
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 178
    :sswitch_2
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 181
    :sswitch_3
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 184
    :sswitch_4
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 187
    :sswitch_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 190
    :sswitch_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 193
    :sswitch_7
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 196
    :sswitch_8
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceTypeOpionalIcon:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto :goto_0

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_3

    array-length v3, v1

    if-ge v3, v6, :cond_4

    .line 208
    :cond_3
    const-string v3, "WifiP2pAvailablePeer"

    const-string v4, "Malformed primaryDeviceType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto/16 :goto_0

    .line 211
    :cond_4
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    .line 212
    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    if-lt v3, v6, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_5

    .line 213
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto/16 :goto_0

    .line 215
    :cond_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    goto/16 :goto_0

    .line 170
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
    .locals 5

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "statusArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    const v2, 0x7f0e0553

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(I)V

    .line 273
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 274
    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->iconIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 281
    :goto_1
    return-void

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->contactDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 238
    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 244
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 247
    .local v0, "other":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->deviceName:Landroid/widget/TextView;

    .line 232
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->refresh()V

    .line 233
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 234
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
