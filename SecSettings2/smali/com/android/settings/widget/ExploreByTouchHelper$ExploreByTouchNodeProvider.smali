.class Lcom/android/settings/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ExploreByTouchHelper;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/settings/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ExploreByTouchHelper;Lcom/android/settings/widget/ExploreByTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/ExploreByTouchHelper;
    .param p2, "x1"    # Lcom/android/settings/widget/ExploreByTouchHelper$1;

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/settings/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/settings/widget/ExploreByTouchHelper;

    # invokes: Lcom/android/settings/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v0, p1}, Lcom/android/settings/widget/ExploreByTouchHelper;->access$100(Lcom/android/settings/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/settings/widget/ExploreByTouchHelper;

    # invokes: Lcom/android/settings/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/widget/ExploreByTouchHelper;->access$200(Lcom/android/settings/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
