.class Lcom/android/systemui/volume/ZenModePanel$2;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$500(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onPrioritySettings()V

    .line 185
    :cond_0
    return-void
.end method
