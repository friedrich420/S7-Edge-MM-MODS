.class Lcom/android/server/wm/WindowManagerService$11;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 14834
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;
    .param p2, "rhs"    # Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;

    .prologue
    .line 14837
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTmpGlobalWindowList:Lcom/android/server/wm/WindowList;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 14838
    .local v0, "lhsIndex":I
    iget-object v2, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTmpGlobalWindowList:Lcom/android/server/wm/WindowList;

    iget-object v3, p2, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 14839
    .local v1, "rhsIndex":I
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14834
    check-cast p1, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;)I

    move-result v0

    return v0
.end method
