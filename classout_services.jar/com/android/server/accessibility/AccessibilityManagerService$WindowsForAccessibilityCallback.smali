.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .prologue
    .line 4831
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 3
    .param p1, "windowType"    # I

    .prologue
    .line 4895
    sparse-switch p1, :sswitch_data_e

    .line 4936
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 4907
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 4913
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 4928
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 4932
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 4895
    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x3ed -> :sswitch_5
        0x44c -> :sswitch_7
        0x7d0 -> :sswitch_9
        0x7d1 -> :sswitch_9
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_9
        0x7d5 -> :sswitch_5
        0x7d6 -> :sswitch_9
        0x7d7 -> :sswitch_5
        0x7d8 -> :sswitch_9
        0x7d9 -> :sswitch_9
        0x7da -> :sswitch_9
        0x7db -> :sswitch_7
        0x7dc -> :sswitch_7
        0x7de -> :sswitch_9
        0x7e1 -> :sswitch_9
        0x7e3 -> :sswitch_9
        0x7e4 -> :sswitch_9
        0x7e8 -> :sswitch_9
        0x7f0 -> :sswitch_b
    .end sparse-switch
.end method

.method private populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 11
    .param p1, "window"    # Landroid/view/WindowInfo;

    .prologue
    .line 4862
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 4863
    .local v6, "windowId":I
    if-gez v6, :cond_c

    .line 4864
    const/4 v5, 0x0

    .line 4891
    :cond_b
    return-object v5

    .line 4867
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 4869
    .local v5, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 4870
    iget v7, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v7}, getTypeForWindowManagerWindowType(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 4871
    iget v7, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 4872
    iget-boolean v7, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 4873
    iget-object v7, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4875
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v8, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v4

    .line 4876
    .local v4, "parentId":I
    if-ltz v4, :cond_38

    .line 4877
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 4880
    :cond_38
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 4881
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 4882
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    if-ge v3, v0, :cond_b

    .line 4883
    iget-object v7, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4884
    .local v2, "childToken":Landroid/os/IBinder;
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 4885
    .local v1, "childId":I
    if-ltz v1, :cond_58

    .line 4886
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 4882
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_43
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4836
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4838
    :try_start_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4839
    .local v4, "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4840
    .local v2, "receivedWindowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_25

    .line 4841
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 4842
    .local v1, "receivedWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v1}, populateReportedWindow(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 4844
    .local v3, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_22

    .line 4845
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4840
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 4854
    .end local v1    # "receivedWindow":Landroid/view/WindowInfo;
    .end local v3    # "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_25
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 4857
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 4858
    monitor-exit v6

    .line 4859
    return-void

    .line 4858
    .end local v0    # "i":I
    .end local v2    # "receivedWindowCount":I
    .end local v4    # "reportedWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_39
    move-exception v5

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v5
.end method
