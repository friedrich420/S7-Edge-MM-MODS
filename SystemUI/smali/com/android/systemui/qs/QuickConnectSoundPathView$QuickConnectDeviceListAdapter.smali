.class Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;
.super Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;
.source "QuickConnectSoundPathView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectDeviceListAdapter"
.end annotation


# instance fields
.field private final MAX_DEVICE_NUM:I

.field private mIconSize:I

.field private mIconTint:I

.field private mMoreIconTextColor:I

.field mMorePaint:Landroid/graphics/Paint;

.field private mMoreTextSize:I

.field final synthetic this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V
    .locals 2
    .param p2, "quickSound"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V

    .line 360
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->MAX_DEVICE_NUM:I

    .line 370
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconTint:I

    .line 371
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconSize:I

    .line 373
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMoreTextSize:I

    .line 374
    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMoreIconTextColor:I

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    .line 377
    return-void
.end method

.method private drawMoreText(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 444
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    if-nez v7, :cond_0

    .line 445
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    .line 446
    const-string v7, "sec-roboto-light"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 447
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 448
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 449
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMoreIconTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMoreTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    .end local v3    # "font":Landroid/graphics/Typeface;
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 455
    .local v1, "bitmapPaint":Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 457
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconTint:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 459
    iget v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconSize:I

    iget v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconSize:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 460
    .local v4, "image":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 461
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 463
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 464
    .local v5, "x":F
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v6, v7

    .line 465
    .local v6, "y":F
    iget-object v7, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mMorePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 467
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v7
.end method

.method private removeAllDevice(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 471
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 472
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .line 476
    .local v1, "device":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iget v5, v1, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    if-ne v5, p1, :cond_0

    .line 477
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v1    # "device":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .line 481
    .local v0, "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 482
    .end local v0    # "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    :cond_2
    return-void
.end method

.method private updateDevices(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 488
    if-ne p1, v10, :cond_2

    .line 489
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    .line 490
    .local v0, "connected":Z
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$100(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v3

    .line 503
    .local v3, "devices":Ljava/util/Collection;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 504
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->removeAllDevice(I)V

    .line 536
    :cond_1
    return-void

    .line 492
    .end local v0    # "connected":Z
    .end local v3    # "devices":Ljava/util/Collection;
    :cond_2
    if-ne p1, v11, :cond_3

    .line 493
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$200(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/WifiP2pController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/WifiP2pController;->isWifiP2pConnected()Z

    move-result v0

    .line 494
    .restart local v0    # "connected":Z
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mWifiP2pController:Lcom/android/systemui/statusbar/policy/WifiP2pController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$200(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/WifiP2pController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/WifiP2pController;->getDevices()Ljava/util/Collection;

    move-result-object v3

    .restart local v3    # "devices":Ljava/util/Collection;
    goto :goto_0

    .line 497
    .end local v0    # "connected":Z
    .end local v3    # "devices":Ljava/util/Collection;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mApMirroringController:Lcom/android/systemui/statusbar/policy/ApMirroringController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$300(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/ApMirroringController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ApMirroringController;->isApMirroringConnected()Z

    move-result v0

    .line 498
    .restart local v0    # "connected":Z
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mApMirroringController:Lcom/android/systemui/statusbar/policy/ApMirroringController;
    invoke-static {v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$300(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Lcom/android/systemui/statusbar/policy/ApMirroringController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ApMirroringController;->getDevices()Ljava/util/Collection;

    move-result-object v3

    .restart local v3    # "devices":Ljava/util/Collection;
    goto :goto_0

    .line 509
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 510
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;>;"
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 512
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .line 513
    .local v2, "device":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iget v9, v2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    if-ne v9, p1, :cond_5

    .line 514
    iget v9, v2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    if-ne v9, v11, :cond_6

    iget-object v9, v2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    invoke-interface {v3, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget v9, v2, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    if-ne v9, v10, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_5

    .line 516
    :cond_7
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    .end local v2    # "device":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    .line 521
    .local v1, "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 525
    .end local v1    # "d":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    :cond_9
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 527
    .local v6, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    new-instance v7, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-direct {v7, v9}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;)V

    .line 528
    .local v7, "qcDevice":Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;
    iput p1, v7, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mType:I

    .line 530
    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v7, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->mQcDevice:Ljava/lang/Object;

    .line 532
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 533
    iget-object v9, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    const/4 v10, 0x0

    new-instance v11, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    iget-object v12, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-direct {v11, v12, v7}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 386
    instance-of v5, p2, Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 387
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040059

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 390
    :cond_0
    const/4 v1, 0x0

    .line 392
    .local v1, "moreDevices":Z
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 394
    const/4 v1, 0x1

    .line 397
    :cond_1
    if-eqz v1, :cond_3

    const v3, 0x7f0203c3

    .line 399
    .local v3, "resId":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 400
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconSize:I

    iget v6, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconSize:I

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconTint:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "num":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->drawMoreText(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    move-object v4, p2

    .line 406
    check-cast v4, Landroid/widget/ImageView;

    .line 407
    .local v4, "view":Landroid/widget/ImageView;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-object p2

    .line 397
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "num":Ljava/lang/String;
    .end local v3    # "resId":I
    .end local v4    # "view":Landroid/widget/ImageView;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceInfo;->getIcon()I

    move-result v3

    goto :goto_0
.end method

.method public onApMirroringConnectionChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 438
    const-string v0, "QConnectSoundPathView"

    const-string v1, "onApMirroringConnectionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateDevices(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 441
    return-void
.end method

.method public onBluetoothDevicesChanged()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateDevices(I)V

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 422
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 414
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateDevices(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 416
    return-void
.end method

.method public onWifiP2pConnectionStateChange(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 426
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateDevices(I)V

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 428
    return-void
.end method

.method public onWifiP2pDevicesChanged()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->updateDevices(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->refresh()V

    .line 434
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$400(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$QuickConnectDeviceListAdapter;->mIconTint:I

    .line 540
    return-void
.end method
