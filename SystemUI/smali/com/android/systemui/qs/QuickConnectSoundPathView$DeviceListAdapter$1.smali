.class Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "QuickConnectSoundPathView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter$1;->this$1:Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter$1;->this$1:Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QuickConnectSoundPathView$DeviceListAdapter;->mQuickSoundController:Lcom/android/systemui/qs/QuickConnectSoundPathView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickConnectSoundPathView;->updateVisibility()V

    .line 300
    return-void
.end method
