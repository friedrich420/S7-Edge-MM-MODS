.class Lcom/android/systemui/volume/ZenModePanel$9$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel$9;->onSelected(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/ZenModePanel$9;

.field final synthetic val$realConditionId:Landroid/net/Uri;

.field final synthetic val$zen:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel$9;ILandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$9;

    iput p2, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$zen:I

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$realConditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$9;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1800(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$zen:I

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$realConditionId:Landroid/net/Uri;

    const-string v3, "ZenModePanel.selectZen"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 940
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$zen:I

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$9;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$9;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndFavoriteZen"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$9$1;->val$zen:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 943
    :cond_0
    return-void
.end method
