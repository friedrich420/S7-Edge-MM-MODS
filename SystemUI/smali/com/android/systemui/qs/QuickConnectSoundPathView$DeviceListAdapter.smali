.class Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickConnectSoundPathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListAdapter"
.end annotation


# instance fields
.field protected mDevices:Ljava/util/ArrayList;

.field protected mQuickSoundController:Lcom/android/systemui/qs/QuickConnectSoundPathView;

.field final synthetic this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView;Lcom/android/systemui/qs/QuickConnectSoundPathView;)V
    .locals 0
    .param p2, "quickSound"    # Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mQuickSoundController:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    .line 272
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->notifyDataSetChanged()V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->this$0:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    # getter for: Lcom/android/systemui/qs/QuickConnectSoundPathView;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->access$000(Lcom/android/systemui/qs/QuickConnectSoundPathView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter$1;-><init>(Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method
