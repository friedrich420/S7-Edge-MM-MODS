.class Lcom/android/server/wm/WindowManagerService$10;
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
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 14826
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "lhs"    # Lcom/android/server/wm/WindowState;
    .param p2, "rhs"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 14829
    iget v0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v1, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14826
    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/wm/WindowState;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0
.end method
