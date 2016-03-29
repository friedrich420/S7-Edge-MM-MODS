.class Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;
.super Landroid/database/ContentObserver;
.source "MultiSIMPrefferedSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$1100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mMobileDataSettingEnabled:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$1002(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;Z)Z

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$3;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    .line 157
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
