.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 7

    .prologue
    .line 4947
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4948
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 4949
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 4950
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 4951
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 4952
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/16 v3, -0x2710

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 4955
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iput v3, p0, mConnectionId:I

    .line 4957
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    iput-object v3, p0, mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 4958
    iget-object v3, p0, mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v4, p0, mConnectionId:I

    invoke-virtual {v3, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 4961
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 4963
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, mDefaultDisplay:Landroid/view/Display;

    .line 4964
    return-void
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .prologue
    .line 5012
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5013
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 5014
    .local v0, "focusedWindowId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 5015
    const/4 v1, 0x0

    monitor-exit v2

    .line 5018
    :goto_14
    return-object v1

    .line 5017
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 5018
    invoke-direct {p0, v0}, getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_14

    .line 5017
    .end local v0    # "focusedWindowId":I
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "windowId"    # I

    .prologue
    .line 5022
    iget-object v1, p0, mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, mConnectionId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x2

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .prologue
    .line 4967
    invoke-direct {p0, p1}, getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4968
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_b

    .line 4969
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 4971
    :cond_b
    return-void
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .registers 13
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 4974
    invoke-direct {p0}, getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 4975
    .local v1, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_8

    .line 5007
    :goto_7
    return v5

    .line 4979
    :cond_8
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4980
    :try_start_f
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4981
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4984
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    .line 4985
    .local v4, "windowBounds":Landroid/graphics/Rect;
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    .line 4986
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 4987
    monitor-exit v6

    goto :goto_7

    .line 5005
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v4    # "windowBounds":Landroid/graphics/Rect;
    :catchall_2f
    move-exception v5

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v5

    .line 4991
    .restart local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v4    # "windowBounds":Landroid/graphics/Rect;
    :cond_32
    :try_start_32
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v8

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v3

    .line 4992
    .local v3, "spec":Landroid/view/MagnificationSpec;
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v7

    if-nez v7, :cond_57

    .line 4993
    iget v7, v3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v7, v7

    float-to-int v7, v7

    iget v8, v3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 4994
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 4998
    :cond_57
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v2

    .line 4999
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v7, p0, mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v7, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5000
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_70

    .line 5001
    monitor-exit v6

    goto :goto_7

    .line 5004
    :cond_70
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Point;->set(II)V

    .line 5005
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_2f

    .line 5007
    const/4 v5, 0x1

    goto :goto_7
.end method
