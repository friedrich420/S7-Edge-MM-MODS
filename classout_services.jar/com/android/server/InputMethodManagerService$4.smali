.class Lcom/android/server/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1558
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1561
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v6, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1562
    :try_start_5
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    .line 1566
    .local v0, "currentUserId":I
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    .line 1567
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v4

    .line 1569
    .local v4, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 1570
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 1571
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1572
    .local v3, "imeCount":I
    new-array v5, v3, [Ljava/lang/String;

    .line 1573
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v3, :cond_37

    .line 1574
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1575
    .local v2, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1573
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1578
    .end local v1    # "i":I
    .end local v2    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imeCount":I
    :cond_37
    iget-object v6, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    .line 1579
    monitor-exit v7

    return-object v5

    .line 1580
    .end local v0    # "currentUserId":I
    .end local v4    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v5    # "packageNames":[Ljava/lang/String;
    :catchall_40
    move-exception v6

    monitor-exit v7
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v6
.end method
