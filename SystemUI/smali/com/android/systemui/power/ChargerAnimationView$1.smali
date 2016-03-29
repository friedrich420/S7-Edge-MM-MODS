.class Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;

.field final synthetic val$batteryLevel:Ljava/lang/String;

.field final synthetic val$displayBatteryLevel:I


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$batteryLevel:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$displayBatteryLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    # getter for: Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$000(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$batteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->val$displayBatteryLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    # getter for: Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const/4 v1, 0x2

    # setter for: Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$202(Lcom/android/systemui/power/ChargerAnimationView;I)I

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    # invokes: Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V
    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)V

    goto :goto_0
.end method
