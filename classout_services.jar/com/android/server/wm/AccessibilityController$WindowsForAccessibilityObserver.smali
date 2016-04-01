.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowsForAccessibilityObserver"


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 5
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTempWindowStates:Landroid/util/SparseArray;

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOldWindows:Ljava/util/List;

    .line 1013
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mTempBinderSet:Ljava/util/Set;

    .line 1015
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mTempRectF:Landroid/graphics/RectF;

    .line 1017
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mTempMatrix:Landroid/graphics/Matrix;

    .line 1019
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mTempPoint:Landroid/graphics/Point;

    .line 1021
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 1023
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion:Landroid/graphics/Region;

    .line 1025
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion1:Landroid/graphics/Region;

    .line 1039
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 1040
    iput-object p1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1041
    iput-object p2, p0, mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1042
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 1043
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, mRecurringAccessibilityEventsIntervalMillis:J

    .line 1045
    invoke-virtual {p0}, computeChangedWindows()V

    .line 1046
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 8
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
    .line 1286
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1287
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1288
    iget-object v4, p0, mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1287
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1290
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1291
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_31

    .line 1292
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1293
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1295
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_31
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 4
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
    .line 1338
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1339
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1340
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1339
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1342
    :cond_14
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1236
    iget-object v2, p0, mTempRegion1:Landroid/graphics/Region;

    .line 1237
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1238
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    .line 1239
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1242
    iget-object v3, p0, mTempRectF:Landroid/graphics/RectF;

    .line 1243
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1244
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1247
    iget-object v0, p0, mTempMatrix:Landroid/graphics/Matrix;

    .line 1248
    .local v0, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->access$600(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1249
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1252
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1254
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .registers 2
    .param p0, "windowType"    # I

    .prologue
    .line 1345
    const/16 v0, 0x7ed

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .registers 9
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1258
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    .line 1259
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v4, Landroid/view/WindowInfo;->type:I

    .line 1260
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    .line 1261
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1264
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_22

    .line 1265
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1268
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    .line 1269
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1271
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1272
    .local v2, "childCount":I
    if-lez v2, :cond_59

    .line 1273
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_40

    .line 1274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1276
    :cond_40
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_41
    if-ge v3, v2, :cond_59

    .line 1277
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1278
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 1282
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_59
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;I)V
    .registers 10
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1361
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1362
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1363
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_26

    .line 1364
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1365
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1366
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1363
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1369
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_26
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 7
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1298
    if-ne p1, p2, :cond_5

    .line 1334
    :cond_4
    :goto_4
    return v0

    .line 1301
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1302
    goto :goto_4

    .line 1304
    :cond_9
    if-nez p2, :cond_d

    move v0, v1

    .line 1305
    goto :goto_4

    .line 1307
    :cond_d
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 1308
    goto :goto_4

    .line 1310
    :cond_15
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    .line 1311
    goto :goto_4

    .line 1313
    :cond_1d
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_27

    .line 1314
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_33

    move v0, v1

    .line 1315
    goto :goto_4

    .line 1317
    :cond_27
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    move v0, v1

    .line 1318
    goto :goto_4

    .line 1320
    :cond_33
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_3d

    .line 1321
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_49

    move v0, v1

    .line 1322
    goto :goto_4

    .line 1324
    :cond_3d
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    move v0, v1

    .line 1325
    goto :goto_4

    .line 1327
    :cond_49
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    move v0, v1

    .line 1328
    goto :goto_4

    .line 1330
    :cond_55
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1332
    goto :goto_4
.end method


# virtual methods
.method public computeChangedWindows()V
    .registers 27

    .prologue
    .line 1065
    const/16 v22, 0x0

    .line 1066
    .local v22, "windowsChanged":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v21, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1072
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-nez v23, :cond_24

    .line 1073
    monitor-exit v24

    .line 1233
    :goto_23
    return-void

    .line 1077
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    .line 1084
    .local v5, "currentFocusDisplayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v25, "window"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 1086
    .local v19, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, mTempPoint:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, mTempPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 1089
    .local v13, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTempPoint:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 1091
    .local v12, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, mTempRegion:Landroid/graphics/Region;

    .line 1092
    .local v14, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    .line 1095
    .local v16, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, mTempBinderSet:Ljava/util/Set;

    .line 1098
    .local v2, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1100
    const/4 v7, 0x0

    .line 1102
    .local v7, "focusedWindowAdded":Z
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1103
    .local v15, "visibleWindowCount":I
    add-int/lit8 v8, v15, -0x1

    .local v8, "i":I
    :goto_96
    if-ltz v8, :cond_114

    .line 1104
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1105
    .local v20, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1108
    .local v6, "flags":I
    and-int/lit8 v23, v6, 0x10

    if-eqz v23, :cond_b1

    .line 1103
    :cond_ae
    add-int/lit8 v8, v8, -0x1

    goto :goto_96

    .line 1113
    :cond_b1
    move-object/from16 v0, p0

    iget-object v3, v0, mTempRect:Landroid/graphics/Rect;

    .line 1114
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1117
    invoke-virtual {v14, v3}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v23

    if-nez v23, :cond_ae

    .line 1122
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, isReportedWindowType(I)Z

    move-result v23

    if-eqz v23, :cond_f3

    .line 1124
    move-object/from16 v0, v20

    invoke-static {v0, v3}, obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v17

    .line 1125
    .local v17, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1126
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v23

    if-eqz v23, :cond_f3

    .line 1128
    const/4 v7, 0x1

    .line 1135
    .end local v17    # "window":Landroid/view/WindowInfo;
    :cond_f3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    const/16 v25, 0x7f0

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_10e

    .line 1137
    sget-object v23, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v23

    invoke-virtual {v14, v3, v14, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1142
    :cond_10e
    invoke-virtual {v14}, Landroid/graphics/Region;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1aa

    .line 1154
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_114
    :goto_114
    if-nez v7, :cond_14b

    .line 1155
    add-int/lit8 v8, v15, -0x1

    :goto_118
    if-ltz v8, :cond_14b

    .line 1156
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1157
    .restart local v20    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v23

    if-eqz v23, :cond_1b0

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, mTempRect:Landroid/graphics/Rect;

    .line 1160
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1163
    move-object/from16 v0, v20

    invoke-static {v0, v3}, obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v17

    .line 1165
    .restart local v17    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1166
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v17    # "window":Landroid/view/WindowInfo;
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_14b
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v18

    .line 1174
    .local v18, "windowCount":I
    const/4 v8, 0x0

    :goto_150
    move/from16 v0, v18

    if-ge v8, v0, :cond_1b7

    .line 1175
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowInfo;

    .line 1176
    .restart local v17    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_172

    .line 1177
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1179
    :cond_172
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1b4

    .line 1180
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    .line 1181
    .local v4, "childTokenCount":I
    add-int/lit8 v9, v4, -0x1

    .local v9, "j":I
    :goto_186
    if-ltz v9, :cond_1b4

    .line 1182
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a7

    .line 1183
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1181
    :cond_1a7
    add-int/lit8 v9, v9, -0x1

    goto :goto_186

    .line 1147
    .end local v4    # "childTokenCount":I
    .end local v9    # "j":I
    .end local v17    # "window":Landroid/view/WindowInfo;
    .end local v18    # "windowCount":I
    .restart local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v6    # "flags":I
    .restart local v20    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1aa
    and-int/lit8 v23, v6, 0x28

    if-nez v23, :cond_ae

    goto/16 :goto_114

    .line 1155
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    :cond_1b0
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_118

    .line 1174
    .end local v20    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v17    # "window":Landroid/view/WindowInfo;
    .restart local v18    # "windowCount":I
    :cond_1b4
    add-int/lit8 v8, v8, 0x1

    goto :goto_150

    .line 1190
    .end local v17    # "window":Landroid/view/WindowInfo;
    :cond_1b7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V

    .line 1191
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f1

    .line 1196
    const/16 v22, 0x1

    .line 1214
    :cond_1d3
    :goto_1d3
    if-eqz v22, :cond_1dc

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, cacheWindows(Ljava/util/List;)V

    .line 1217
    :cond_1dc
    monitor-exit v24
    :try_end_1dd
    .catchall {:try_start_14 .. :try_end_1dd} :catchall_22c

    .line 1220
    if-eqz v22, :cond_1ec

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1232
    :cond_1ec
    invoke-static/range {v21 .. v21}, clearAndRecycleWindows(Ljava/util/List;)V

    goto/16 :goto_23

    .line 1197
    :cond_1f1
    :try_start_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_203

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1d3

    .line 1201
    :cond_203
    const/4 v8, 0x0

    :goto_204
    move/from16 v0, v18

    if-ge v8, v0, :cond_1d3

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, mOldWindows:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowInfo;

    .line 1203
    .local v11, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    .line 1207
    .local v10, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v23

    if-eqz v23, :cond_229

    .line 1208
    const/16 v22, 0x1

    .line 1209
    goto :goto_1d3

    .line 1201
    :cond_229
    add-int/lit8 v8, v8, 0x1

    goto :goto_204

    .line 1217
    .end local v2    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v5    # "currentFocusDisplayId":I
    .end local v7    # "focusedWindowAdded":Z
    .end local v8    # "i":I
    .end local v10    # "newWindow":Landroid/view/WindowInfo;
    .end local v11    # "oldWindow":Landroid/view/WindowInfo;
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    .end local v14    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v15    # "visibleWindowCount":I
    .end local v16    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v18    # "windowCount":I
    .end local v19    # "windowManager":Landroid/view/WindowManager;
    :catchall_22c
    move-exception v23

    monitor-exit v24
    :try_end_22e
    .catchall {:try_start_1f1 .. :try_end_22e} :catchall_22c

    throw v23
.end method

.method public performComputeChangedWindowsNotLocked()V
    .registers 3

    .prologue
    .line 1049
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    invoke-virtual {p0}, computeChangedWindows()V

    .line 1051
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1054
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1055
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-wide v2, p0, mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1058
    :cond_10
    return-void
.end method
