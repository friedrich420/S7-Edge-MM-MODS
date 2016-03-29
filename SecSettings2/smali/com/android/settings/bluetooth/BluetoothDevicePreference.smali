.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;,
        Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mClickable:Z

.field private static mVersion:I

.field private static sDimAlpha:I


# instance fields
.field private deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mIsBtScanDialog:Z

.field private mIsProcessingAsync:Z

.field private mIsRequestUpdate:Z

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    .line 74
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 76
    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    .line 85
    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    .line 121
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/bluetooth/BluetoothScanDialog;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    .line 125
    sget v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 126
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 127
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 128
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 131
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v2, :cond_3

    .line 133
    :cond_1
    const v2, 0x7f040177

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 139
    :goto_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 140
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 141
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBtScanDialog:Z

    if-nez v2, :cond_2

    .line 142
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const v2, 0x7f040175

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 148
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 150
    return-void

    .line 136
    :cond_3
    const v2, 0x7f040176

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    return p1
.end method

.method private getBtClassDrawable()I
    .locals 14

    .prologue
    .line 529
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 530
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearance()S

    move-result v0

    .line 531
    .local v0, "appearance":I
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v5

    .line 533
    .local v5, "manufacturerData":[B
    const-string v11, "BluetoothDevicePreference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getBtClassDrawable :: BluetoothClass = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Appearance = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSLDDevice()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 536
    const v10, 0x7f020228

    .line 629
    :cond_0
    :goto_0
    return v10

    .line 537
    :cond_1
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGearCircle()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 538
    const v10, 0x7f02022b

    goto :goto_0

    .line 541
    :cond_2
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "mDeviceName":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v11, "SAMSUNG LEVEL"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 544
    const-string v11, "BOX"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 545
    const v10, 0x7f020225

    goto :goto_0

    .line 547
    :cond_3
    const v10, 0x7f02022d

    goto :goto_0

    .line 550
    :cond_4
    if-eqz v5, :cond_5

    array-length v11, v5

    const/16 v12, 0xa

    if-le v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isContactType([B)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0xa

    aget-byte v11, v5, v11

    if-lez v11, :cond_5

    .line 551
    invoke-static {v5}, Lcom/android/settings/bluetooth/Utils;->getDeviceTypeIndex([B)I

    move-result v8

    .line 552
    .local v8, "resIcon":I
    if-eqz v8, :cond_5

    move v10, v8

    goto :goto_0

    .line 555
    .end local v8    # "resIcon":I
    :cond_5
    if-eqz v1, :cond_d

    .line 556
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 596
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getAppearanceDrawable(I)I

    move-result v10

    .line 597
    .local v10, "ret":I
    if-nez v10, :cond_0

    .line 601
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 602
    const v10, 0x7f02023c

    goto :goto_0

    .line 558
    .end local v10    # "ret":I
    :sswitch_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v11

    const/16 v12, 0x11c

    if-ne v11, v12, :cond_7

    .line 559
    const v10, 0x7f02023f

    goto :goto_0

    .line 561
    :cond_7
    const v10, 0x7f020230

    goto :goto_0

    .line 565
    :sswitch_1
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 566
    const v10, 0x7f02023f

    goto/16 :goto_0

    .line 568
    :cond_8
    const v10, 0x7f020231

    goto/16 :goto_0

    .line 572
    :sswitch_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v11

    const/16 v12, 0x704

    if-ne v11, v12, :cond_9

    .line 573
    const v10, 0x7f020243

    goto/16 :goto_0

    .line 577
    :cond_9
    :sswitch_3
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v10

    goto/16 :goto_0

    .line 580
    :sswitch_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v11

    const/16 v12, 0x620

    if-ne v11, v12, :cond_a

    .line 581
    const v10, 0x7f020222

    goto/16 :goto_0

    .line 583
    :cond_a
    const v10, 0x7f020236

    goto/16 :goto_0

    .line 586
    :sswitch_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v11

    const/16 v12, 0x43c

    if-ne v11, v12, :cond_b

    .line 587
    const v10, 0x7f020240

    goto/16 :goto_0

    .line 588
    :cond_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v11

    const/16 v12, 0x434

    if-ne v11, v12, :cond_6

    .line 589
    const v10, 0x7f020221

    goto/16 :goto_0

    .line 604
    .restart local v10    # "ret":I
    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 605
    const v10, 0x7f020232

    goto/16 :goto_0

    .line 607
    .end local v10    # "ret":I
    :cond_d
    if-eqz v0, :cond_10

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getAppearanceDrawable(I)I

    move-result v10

    .line 609
    .restart local v10    # "ret":I
    if-nez v10, :cond_0

    .line 616
    .end local v10    # "ret":I
    :cond_e
    :goto_1
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    .line 617
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 618
    .local v6, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_12

    .line 619
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v11, :cond_11

    .line 620
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v12, Landroid/bluetooth/BluetoothClass;

    const/16 v13, 0x418

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 621
    const v10, 0x7f02023c

    goto/16 :goto_0

    .line 613
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    :cond_10
    const-string v11, "BluetoothDevicePreference"

    const-string v12, "mBtClass is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 618
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .restart local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 624
    :cond_12
    invoke-interface {v6, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v9

    .line 625
    .local v9, "resId":I
    if-eqz v9, :cond_f

    move v10, v9

    .line 626
    goto/16 :goto_0

    .line 629
    .end local v2    # "i":I
    .end local v6    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v9    # "resId":I
    :cond_13
    const v10, 0x7f02022c

    goto/16 :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_5
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
        0x700 -> :sswitch_2
    .end sparse-switch
.end method

.method private getContactDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/Utils;->getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 669
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 673
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 514
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "mName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "mNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 518
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 520
    .local v1, "iconResId":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 525
    .end local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    .local v2, "iconResId":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 524
    .end local v2    # "iconResId":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/settings/bluetooth/Utils;->makeBitmapIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 525
    .end local v1    # "iconResId":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconResId":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isStubExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 485
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 487
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 488
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 489
    const/4 v7, 0x0

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v7, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    .line 490
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSTALLER_STUB is exist. Package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v7, "com.samsung.android.app.watchmanagerstub"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 492
    sget v7, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_2

    .line 510
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v5, v6

    .line 495
    goto :goto_0

    .line 497
    :cond_3
    const-string v7, "com.sec.android.app.applinker"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 498
    sget v7, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v7, :cond_1

    move v5, v6

    .line 501
    goto :goto_0

    .line 506
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 509
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v5, "BluetoothDevicePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSTALLER_STUB is not exist. package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 510
    goto :goto_0
.end method

.method private pair()V
    .locals 6

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e005e

    invoke-static {v2, v3, v4}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 309
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BEMC"

    const-string v5, "4_bluetooth_message_pairing_error"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 318
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 319
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 320
    const v2, 0x7f0201a1

    iput v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 321
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 323
    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method checkDeviceType()I
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->checkUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "checkDeviceType :: checkUltraPowerSavingMode() is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    .line 335
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_4

    .line 336
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    if-nez v3, :cond_3

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 338
    aget-byte v3, v0, v5

    if-eq v3, v2, :cond_2

    aget-byte v3, v0, v5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 340
    :cond_2
    const-string v3, "com.sec.android.app.applinker"

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 341
    goto :goto_0

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isContactType([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const/4 v1, 0x2

    goto :goto_0

    .line 350
    :cond_4
    const-string v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isGear1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v1, 0x1

    goto :goto_0
.end method

.method checkLanuchGM(Z)V
    .locals 16
    .param p1, "isBonded"    # Z

    .prologue
    .line 358
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling connect device with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v14}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isBonded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "addr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 363
    .local v5, "gearManagerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 366
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 367
    if-eqz p1, :cond_3

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.bluetooth"

    const-string v14, "BDSC"

    const-string v15, "PairToConnect"

    invoke-static {v12, v13, v14, v15}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->checkDeviceType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 474
    :cond_2
    :goto_1
    return-void

    .line 371
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.bluetooth"

    const-string v14, "BDSC"

    const-string v15, "UnpairToConnect"

    invoke-static {v12, v13, v14, v15}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_0
    const-string v5, "watchmanager"

    .line 380
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "WM_MANAGER"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR1, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  WM_MANAGER : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v9

    .line 392
    .local v9, "manufacturerData":[B
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_6

    if-eqz v9, :cond_6

    array-length v12, v9

    if-lez v12, :cond_6

    .line 393
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v2, v9

    .local v2, "arr$":[B
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_5

    aget-byte v3, v2, v6

    .line 396
    .local v3, "byteChar":B
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 398
    .end local v3    # "byteChar":B
    :cond_5
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  Manufacturer Data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v2    # "arr$":[B
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    sget v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0xc8

    if-ge v12, v13, :cond_9

    .line 402
    if-eqz v9, :cond_2

    array-length v12, v9

    const/16 v13, 0xa

    if-le v12, v13, :cond_2

    .line 403
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .restart local v7    # "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    aget-byte v12, v9, v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    .restart local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "cnt":I
    :goto_3
    const/16 v12, 0xa

    aget-byte v12, v9, v12

    if-ge v4, v12, :cond_7

    .line 406
    add-int/lit8 v12, v4, 0xb

    aget-byte v12, v9, v12

    int-to-char v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 409
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 410
    const-string v12, "WM_MANAGER"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_8

    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_GEAR, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  WM_MANAGER : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_8
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    .end local v4    # "cnt":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_9
    sget v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0x12c

    if-ge v12, v13, :cond_a

    .line 419
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.wmanger.action.CONNECT_WEARABLE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 421
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : CONNECT_WEARABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 427
    :cond_a
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 429
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : BLUETOOTH_DEVICE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 437
    .end local v9    # "manufacturerData":[B
    :pswitch_2
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: try to connect with DEVICE_TYPE_SLD_DEVICE device"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mVersion:I

    const/16 v13, 0xc8

    if-lt v12, v13, :cond_d

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v9

    .line 441
    .restart local v9    # "manufacturerData":[B
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v12, :cond_c

    if-eqz v9, :cond_c

    array-length v12, v9

    if-lez v12, :cond_c

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 444
    .restart local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    move-object v2, v9

    .restart local v2    # "arr$":[B
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v8, :cond_b

    aget-byte v3, v2, v6

    .line 445
    .restart local v3    # "byteChar":B
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 447
    .end local v3    # "byteChar":B
    :cond_b
    const-string v12, "BluetoothDevicePreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launchGearManager :: DEVICE_TYPE_SLD, MAC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",  Manufacturer Data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v2    # "arr$":[B
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v12, "MAC"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v12, "DATA"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 453
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    const-string v12, "BluetoothDevicePreference"

    const-string v13, "launchGearManager :: SendBroadcast : BLUETOOTH_DEVICE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v9    # "manufacturerData":[B
    :cond_d
    if-eqz p1, :cond_e

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_1

    .line 461
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_1

    .line 465
    :pswitch_3
    if-eqz p1, :cond_f

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_1

    .line 468
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_1

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 260
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 265
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x0

    .line 250
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAppearanceDrawable(I)I
    .locals 3
    .param p1, "appearance"    # I

    .prologue
    const v0, 0x7f020243

    .line 633
    sparse-switch p1, :sswitch_data_0

    .line 663
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 635
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GALAXY Gear ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const v0, 0x7f020231

    goto :goto_0

    .line 641
    :sswitch_2
    const v0, 0x7f020230

    goto :goto_0

    .line 649
    :sswitch_3
    const v0, 0x7f02022f

    goto :goto_0

    .line 652
    :sswitch_4
    const v0, 0x7f020233

    goto :goto_0

    .line 656
    :sswitch_5
    const v0, 0x7f02022a

    goto :goto_0

    .line 658
    :sswitch_6
    const v0, 0x7f020226

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0x200 -> :sswitch_6
        0x3c0 -> :sswitch_3
        0x3c1 -> :sswitch_3
        0x3c2 -> :sswitch_4
        0x3c3 -> :sswitch_5
        0x3c4 -> :sswitch_5
    .end sparse-switch
.end method

.method getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method isGear1()Z
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    const v1, 0x7f020243

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GALAXY Gear ("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x1020016

    .line 188
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 203
    const v3, 0x7f0d03cb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 210
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 212
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ro.build.scafe.size"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .local v1, "mPreferenceText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    .end local v1    # "mPreferenceText":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 220
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0181

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 223
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mClickable:Z

    .line 229
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 272
    .local v0, "bondState":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_3

    .line 273
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    const-string v4, "BDSC"

    const-string v5, "ConnectToPair"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothDevicePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disconnect device with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e02d5

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 289
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 284
    :cond_3
    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 285
    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0

    .line 286
    :cond_4
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 287
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0
.end method

.method onClickedForHeadset()V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 297
    .local v0, "bondState":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->checkLanuchGM(Z)V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .prologue
    .line 173
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAttributesChanged :: Device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isBonded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z

    if-nez v1, :cond_0

    .line 176
    :try_start_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "BluetoothDevicePreference"

    const-string v2, "RejectedExecutionException :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 164
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method
