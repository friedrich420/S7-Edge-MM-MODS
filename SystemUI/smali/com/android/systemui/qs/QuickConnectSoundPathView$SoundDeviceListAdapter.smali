.class Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;
.super Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;
.source "QuickConnectSoundPathView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundDeviceListAdapter"
.end annotation


# instance fields
.field private mIconSize:I

.field private mIconTint:I

.field private mIconTintActivated:I

.field private mTextTint:I

.field private mTextTintActivated:I

.field private mViewMinWidth:I

.field private oldDeviceCount:I

.field final synthetic this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V
    .locals 2
    .param p2, "quickSound"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V

    .line 555
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconTint:I

    .line 556
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconTintActivated:I

    .line 558
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mTextTint:I

    .line 559
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mTextTintActivated:I

    .line 561
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconSize:I

    .line 563
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mViewMinWidth:I

    .line 564
    return-void
.end method

.method private updateBluetoothDevice()V
    .locals 10

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->getCount()I

    move-result v7

    .line 628
    .local v7, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 629
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    .line 630
    .local v3, "device":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    const/4 v2, 0x0

    .line 632
    .local v2, "btDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    const/4 v6, 0x0

    .line 633
    .local v6, "isBtDevice":Z
    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    .line 635
    .local v8, "type":I
    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 637
    :cond_0
    const/4 v6, 0x1

    .line 639
    :cond_1
    if-eqz v6, :cond_4

    .line 640
    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v2

    .line 642
    :cond_2
    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "addr":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 644
    .local v1, "bt":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 645
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDrawable(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mResId:I

    .line 646
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mName:Ljava/lang/String;

    .line 628
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "bt":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 652
    .end local v2    # "btDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    .end local v3    # "device":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    .end local v6    # "isBtDevice":Z
    .end local v8    # "type":I
    :cond_5
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 568
    instance-of v3, p2, Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04005b

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v2, p2

    .line 572
    check-cast v2, Landroid/widget/TextView;

    .line 573
    .local v2, "view":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    .line 575
    .local v1, "device":Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;
    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconSize:I

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 577
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconTintActivated:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 578
    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 580
    const v3, 0x7f0c0136

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 582
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mIsActivated:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mTextTintActivated:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 588
    iget-object v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$000(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 589
    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mViewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 591
    return-object p2

    .line 577
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mIconTint:I

    goto :goto_0

    .line 582
    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mTextTint:I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 596
    const-string v0, "QConnectSoundPathView"

    const-string v1, "onItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$500(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/SoundPathController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/SoundPathController;->connect(Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$600(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$600(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$600(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$602(Lcom/android/systemui/qs/QuickConnectSoundPathView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 602
    :cond_0
    return-void
.end method

.method public onSoundPathDevicesChanged(Z)V
    .locals 6
    .param p1, "isCallMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 607
    const-string v2, "QConnectSoundPathView"

    const-string v3, "onSoundPathDevicesChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # setter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mIsCallMode:Z
    invoke-static {v2, p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$702(Lcom/android/systemui/qs/QuickConnectSoundPathView;Z)Z

    .line 611
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;
    invoke-static {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$500(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/SoundPathController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mSoundPathController:Lcom/android/systemui/statusbar/policy/SoundPathController;
    invoke-static {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$500(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/SoundPathController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SoundPathController;->getDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 613
    .local v0, "devices":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 615
    .local v1, "size":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->oldDeviceCount:I

    if-eq v1, v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_AUDIOPATH:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v5}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    .line 619
    iput v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->oldDeviceCount:I

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->updateBluetoothDevice()V

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$SoundDeviceListAdapter;->refresh()V

    .line 624
    .end local v0    # "devices":Ljava/util/ArrayList;
    .end local v1    # "size":I
    :cond_1
    return-void
.end method
