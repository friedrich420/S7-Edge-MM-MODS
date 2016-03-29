.class final Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mAccessibilityState:Z

.field private mFeedbackEnabled:Z

.field private mMgr:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$1;

    .prologue
    .line 1622
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mAccessibilityState:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;
    .param p1, "x1"    # Z

    .prologue
    .line 1622
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mAccessibilityState:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .prologue
    .line 1622
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 5

    .prologue
    .line 1678
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1680
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1681
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 1682
    const/4 v3, 0x1

    .line 1685
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mFeedbackEnabled:Z

    .line 1674
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4700(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4700(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1662
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->updateFeedbackEnabled()V

    .line 1663
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1669
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
