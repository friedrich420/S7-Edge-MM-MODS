.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;
.super Landroid/database/ContentObserver;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, -0x1

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_snooze_length_ms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "packageSnoozeLengthMs":I
    if-le v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    # setter for: Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$002(Lcom/android/systemui/statusbar/policy/HeadsUpManager;I)I

    .line 128
    :cond_0
    return-void
.end method
