.class Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;
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
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$900(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoice:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$802(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    .line 149
    const-string v0, "MultiSIMPrefferedSlotView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferedVoiceObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$2;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mPreferedVoice:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$800(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
