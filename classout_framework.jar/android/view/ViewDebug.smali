.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$DumpZ;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_DUMP_Z:Ljava/lang/String; = "DUMPZ"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 353
    sput-object v0, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 354
    sput-object v0, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1199
    instance-of v6, p1, Landroid/view/View;

    if-nez v6, :cond_c

    .line 1200
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1220
    :goto_b
    return-object v6

    :cond_c
    move-object v5, p1

    .line 1203
    check-cast v5, Landroid/view/View;

    .line 1204
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$8;

    invoke-direct {v0, p0, v5}, Landroid/view/ViewDebug$8;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1210
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1212
    .local v2, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1214
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_28

    .line 1215
    new-instance v3, Landroid/os/Handler;

    .end local v3    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1217
    .restart local v3    # "handler":Landroid/os/Handler;
    :cond_28
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    :goto_2b
    const-wide/16 v6, 0xfa0

    :try_start_2d
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_32} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_32} :catch_58
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2d .. :try_end_32} :catch_4f

    move-result-object v6

    goto :goto_b

    .line 1221
    :catch_34
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1223
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v6, v4, Ljava/lang/IllegalAccessException;

    if-eqz v6, :cond_40

    .line 1224
    check-cast v4, Ljava/lang/IllegalAccessException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1226
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_40
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_47

    .line 1227
    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1229
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_47
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1232
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_4f
    move-exception v1

    .line 1233
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected cancellation exception"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1230
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_58
    move-exception v6

    goto :goto_2b
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .registers 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 796
    const/4 v3, 0x0

    invoke-static {p2, v3}, performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 798
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1d

    .line 799
    const-string v3, "View"

    const-string v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 806
    :cond_1d
    const/4 v1, 0x0

    .line 808
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_39

    .line 809
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_26
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 810
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_43

    .line 812
    if-eqz v2, :cond_35

    .line 813
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 815
    :cond_35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 817
    return-void

    .line 812
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_39
    move-exception v3

    :goto_3a
    if-eqz v1, :cond_3f

    .line 813
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 815
    :cond_3f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v3

    .line 812
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_43
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3a
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {p0, p2}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 790
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 791
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2a

    .line 710
    .local v0, "outRect":Landroid/graphics/Rect;
    :try_start_5
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_2f
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    .line 715
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 716
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 718
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 720
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 722
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 724
    return-void

    .line 722
    .end local v0    # "outRect":Landroid/graphics/Rect;
    :catchall_2a
    move-exception v1

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v1

    .line 711
    .restart local v0    # "outRect":Landroid/graphics/Rect;
    :catch_2f
    move-exception v1

    goto :goto_10
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_91

    if-eqz p2, :cond_91

    const/4 v6, 0x1

    .line 731
    .local v6, "localVisible":Z
    :goto_9
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_79

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 733
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2c

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 738
    :cond_2c
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 739
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 740
    if-eqz v6, :cond_94

    const/4 v10, 0x1

    :goto_36
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 742
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 744
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 746
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 747
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 748
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 750
    const/4 v10, 0x1

    invoke-static {p0, v10}, performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 751
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_76

    .line 752
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 754
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 755
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 756
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 758
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_76
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 761
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_79
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_96

    move-object v3, p0

    .line 762
    check-cast v3, Landroid/view/ViewGroup;

    .line 763
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 765
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_85
    if-ge v4, v2, :cond_96

    .line 766
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 765
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 729
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v6    # "localVisible":Z
    :cond_91
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 740
    .restart local v5    # "id":I
    .restart local v6    # "localVisible":Z
    .restart local v7    # "name":Ljava/lang/String;
    :cond_94
    const/4 v10, 0x0

    goto :goto_36

    .line 770
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_96
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_a3

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 772
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 774
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_a3
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 1637
    const-string/jumbo v7, "null"

    .line 1665
    :goto_5
    return-object v7

    .line 1640
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1641
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1643
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1644
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v0, :cond_4a

    .line 1645
    aget-object v1, v3, v4

    .line 1647
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_15
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1649
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    if-eqz v2, :cond_41

    .line 1654
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1655
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .end local v6    # "value":Ljava/lang/String;
    :goto_39
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1644
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1657
    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_41
    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_47} :catch_48

    goto :goto_39

    .line 1660
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_48
    move-exception v7

    goto :goto_3e

    .line 1665
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 1594
    const-string/jumbo v9, "null"

    .line 1632
    :goto_5
    return-object v9

    .line 1597
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1598
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1600
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1601
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_80

    .line 1602
    aget-object v2, v4, v1

    .line 1604
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_16
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1605
    .local v3, "methodValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1607
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1608
    .local v5, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 1610
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1612
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    if-eqz v3, :cond_77

    .line 1617
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1618
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .end local v8    # "value":Ljava/lang/String;
    :goto_6f
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1624
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_75
    move-exception v9

    goto :goto_4c

    .line 1620
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_7d} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_7d} :catch_7e

    goto :goto_6f

    .line 1627
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7e
    move-exception v9

    goto :goto_4c

    .line 1632
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1531
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1532
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1534
    :cond_b
    sget-object v6, mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1536
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1537
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_17

    move-object v3, v2

    .line 1556
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v3, "fields":[Ljava/lang/reflect/Field;
    :goto_16
    return-object v3

    .line 1541
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1544
    array-length v0, v2

    .line 1545
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    if-ge v5, v0, :cond_38

    .line 1546
    aget-object v1, v2, v5

    .line 1547
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1548
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1549
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1553
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1554
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1556
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_16
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1561
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1563
    :cond_b
    sget-object v3, mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1565
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1566
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_17

    move-object v6, v5

    .line 1587
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    :goto_16
    return-object v6

    .line 1570
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1573
    array-length v0, v5

    .line 1574
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v0, :cond_47

    .line 1575
    aget-object v4, v5, v2

    .line 1576
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_44

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_44

    .line 1579
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1580
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1584
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1585
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1587
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_16
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 476
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 477
    invoke-static {p0, v3, v4, p3}, dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 501
    :cond_11
    :goto_11
    return-void

    .line 478
    :cond_12
    const-string v1, "dump_s"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 480
    invoke-static {p0, v3, v4, p3}, dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_11

    .line 481
    :cond_28
    const-string v1, "DUMP_THEME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 482
    invoke-static {p0, p3}, dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 483
    :cond_34
    const-string v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 484
    # invokes: Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V
    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->access$000(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 485
    :cond_40
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 486
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_11

    .line 488
    :cond_51
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "params":[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 490
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    .line 491
    :cond_65
    const-string v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 492
    aget-object v1, v0, v3

    invoke-static {p0, v1}, outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 493
    :cond_73
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 494
    aget-object v1, v0, v3

    invoke-static {p0, v1}, invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 495
    :cond_81
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 496
    aget-object v1, v0, v3

    invoke-static {p0, v1}, requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_11

    .line 497
    :cond_8f
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 498
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 14
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const/4 v8, 0x0

    .line 858
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_35
    .catchall {:try_start_1 .. :try_end_11} :catchall_44

    .line 859
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 860
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 861
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 862
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 865
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_27
    const-string v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_4e
    .catchall {:try_start_11 .. :try_end_2f} :catchall_4c

    .line 870
    if-eqz v3, :cond_34

    .line 871
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 874
    .end local v9    # "view":Landroid/view/View;
    :cond_34
    :goto_34
    return-void

    .line 867
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_35
    move-exception v7

    move-object v3, v8

    .line 868
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    .local v7, "e":Ljava/lang/Exception;
    :goto_37
    :try_start_37
    const-string v1, "View"

    const-string v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4c

    .line 870
    if-eqz v3, :cond_34

    .line 871
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_34

    .line 870
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_44
    move-exception v1

    move-object v3, v8

    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_46
    if-eqz v3, :cond_4b

    .line 871
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_4b
    throw v1

    .line 870
    :catchall_4c
    move-exception v1

    goto :goto_46

    .line 867
    :catch_4e
    move-exception v7

    goto :goto_37
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 1676
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1677
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1678
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v2, ""

    invoke-static {p1, v0, v2}, capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1057
    invoke-static {p0, p1, p2, p3, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1069
    :cond_6
    return-void

    .line 1061
    :cond_7
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1062
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_25

    .line 1063
    check-cast v1, Landroid/view/IGLViewGroup;

    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_f

    .line 1065
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_25
    instance-of v2, v1, Landroid/view/IGLView;

    if-eqz v2, :cond_f

    .line 1066
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_f
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1043
    invoke-static {p0, p1, p2, p3, p4}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1052
    :cond_6
    :goto_6
    return-void

    .line 1047
    :cond_7
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 1048
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_6

    .line 1049
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 1050
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_6
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v3, 0x0

    .line 905
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v6, 0x8000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_73
    .catchall {:try_start_1 .. :try_end_11} :catchall_81

    .line 906
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v5, v6}, getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "attributes":[Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 909
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v5, v0

    if-ge v2, v5, :cond_64

    .line 910
    aget-object v5, v0, v2

    if-eqz v5, :cond_61

    .line 911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 909
    :cond_61
    add-int/lit8 v2, v2, 0x2

    goto :goto_28

    .line 916
    .end local v2    # "i":I
    :cond_64
    const-string v5, "DONE."

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6c} :catch_8b
    .catchall {:try_start_11 .. :try_end_6c} :catchall_88

    .line 921
    if-eqz v4, :cond_8e

    .line 922
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 925
    .end local v0    # "attributes":[Ljava/lang/String;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_72
    :goto_72
    return-void

    .line 918
    :catch_73
    move-exception v1

    .line 919
    .local v1, "e":Ljava/lang/Exception;
    :goto_74
    :try_start_74
    const-string v5, "View"

    const-string v6, "Problem dumping View Theme:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_81

    .line 921
    if-eqz v3, :cond_72

    .line 922
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_72

    .line 921
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v5

    :goto_82
    if-eqz v3, :cond_87

    .line 922
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_87
    throw v5

    .line 921
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_88
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 918
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_8b
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_74

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "attributes":[Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_8e
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_72
.end method

.method private static dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1075
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_b

    .line 1076
    const/16 v3, 0x20

    :try_start_5
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1075
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1078
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "className":Ljava/lang/String;
    const-string v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1080
    const-string v0, "ViewOverlay"

    .line 1082
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1083
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1084
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1085
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1086
    if-eqz p4, :cond_3a

    .line 1087
    invoke-static {p0, p1, p2}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1089
    :cond_3a
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3d} :catch_3f

    .line 1094
    const/4 v3, 0x1

    .end local v0    # "className":Ljava/lang/String;
    :goto_3e
    return v3

    .line 1090
    :catch_3f
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "View"

    const-string v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v3, 0x0

    goto :goto_3e
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .prologue
    .line 1009
    invoke-static {p0, p1, p2, p3, p5}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1038
    .end local p1    # "group":Landroid/view/ViewGroup;
    :cond_6
    :goto_6
    return-void

    .line 1013
    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_7
    if-nez p4, :cond_6

    .line 1017
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1018
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e
    if-ge v7, v6, :cond_4d

    .line 1019
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1020
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    move-object v1, v9

    .line 1021
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1028
    :goto_24
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_37

    .line 1029
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    .line 1030
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 1031
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1018
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1023
    :cond_3a
    instance-of v0, v9, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_47

    move-object v0, v9

    .line 1024
    check-cast v0, Landroid/opengl/GLSurfaceView;

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p5}, dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V

    goto :goto_24

    .line 1026
    :cond_47
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_24

    .line 1035
    .end local v9    # "view":Landroid/view/View;
    :cond_4d
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_6

    .line 1036
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    goto :goto_6
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1183
    if-nez p1, :cond_19

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1194
    :goto_18
    return-void

    .line 1188
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1190
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    invoke-static {p0, p1, p2, v0, p3}, exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1191
    invoke-static {p0, p1, p2, v0, p3}, exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1193
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    goto :goto_18
.end method

.method public static dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .registers 234
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2431
    const/16 v81, 0x0

    .line 2433
    .local v81, "isDebug":Z
    const/16 v164, 0x0

    .line 2436
    .local v164, "out":Ljava/io/BufferedWriter;
    const/16 v184, 0x1

    .line 2437
    .local v184, "screenOn":Z
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v225

    const-string/jumbo v226, "power"

    invoke-virtual/range {v225 .. v226}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/os/PowerManager;

    .line 2438
    .local v173, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v173 .. v173}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v184

    .line 2439
    const/16 v117, 0x0

    .line 2441
    .local v117, "mGLObjectZ":Z
    new-instance v166, Ljava/lang/StringBuilder;

    invoke-direct/range {v166 .. v166}, Ljava/lang/StringBuilder;-><init>()V

    .line 2442
    .local v166, "outString":Ljava/lang/StringBuilder;
    const/16 v155, 0x3

    .line 2444
    .local v155, "newlineReplacement":C
    const/16 v197, 0x0

    .line 2445
    .local v197, "tempString":Ljava/lang/String;
    const/16 v195, 0x0

    .line 2446
    .local v195, "tempResources":Landroid/content/res/Resources;
    const/16 v51, 0x0

    .line 2448
    .local v51, "currentView":Ljava/lang/Object;
    const/16 v47, 0x0

    .line 2449
    .local v47, "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v46, 0x0

    .line 2450
    .local v46, "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v41, 0x0

    .line 2451
    .local v41, "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v45, 0x0

    .line 2452
    .local v45, "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v42, 0x0

    .line 2453
    .local v42, "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v43, 0x0

    .line 2454
    .local v43, "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v44, 0x0

    .line 2456
    .local v44, "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v32, 0x0

    .line 2457
    .local v32, "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v30, 0x0

    .line 2458
    .local v30, "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v28, 0x0

    .line 2459
    .local v28, "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v31, 0x0

    .line 2460
    .local v31, "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v29, 0x0

    .line 2464
    .local v29, "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v37, 0x0

    .line 2465
    .local v37, "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v36, 0x0

    .line 2466
    .local v36, "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v34, 0x0

    .line 2467
    .local v34, "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v33, 0x0

    .line 2468
    .local v33, "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v35, 0x0

    .line 2469
    .local v35, "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v40, 0x0

    .line 2470
    .local v40, "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v102, 0x0

    .line 2472
    .local v102, "mActiveFolderItem":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2473
    .local v6, "HomeFragment":I
    const/4 v5, 0x1

    .line 2474
    .local v5, "AppsFragment":I
    const/4 v8, 0x2

    .line 2477
    .local v8, "WidgetsFragment":I
    const/16 v167, 0x0

    .line 2480
    .local v167, "packageName":Ljava/lang/String;
    const/16 v27, 0x0

    .line 2481
    .local v27, "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v39, 0x0

    .line 2484
    .local v39, "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v133, 0x0

    .line 2485
    .local v133, "mRootWidth":I
    const/16 v108, 0x0

    .line 2486
    .local v108, "mCameraRootWidth":I
    const/16 v107, 0x0

    .line 2488
    .local v107, "mCameraRootHeight":I
    const/16 v58, 0x0

    .line 2491
    .local v58, "field":Ljava/lang/reflect/Field;
    new-instance v188, Ljava/util/ArrayList;

    invoke-direct/range {v188 .. v188}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    .local v188, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v213, Ljava/util/ArrayList;

    invoke-direct/range {v213 .. v213}, Ljava/util/ArrayList;-><init>()V

    .line 2494
    .local v213, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v92, Ljava/util/Hashtable;

    invoke-direct/range {v92 .. v92}, Ljava/util/Hashtable;-><init>()V

    .line 2495
    .local v92, "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v51

    .line 2497
    .local v51, "currentView":Landroid/view/View;
    move-object/from16 v0, v51

    nop

    nop

    move-object/from16 v225, v0

    invoke-virtual/range {v225 .. v225}, Landroid/view/View;->getVisibility()I

    move-result v225

    if-nez v225, :cond_af

    .line 2499
    move-object/from16 v0, v188

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    const/16 v226, 0x0

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    :cond_af
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Stack Size : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    .end local v51    # "currentView":Landroid/view/View;
    .end local v102    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_cb
    :goto_cb
    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v225

    if-lez v225, :cond_20e8

    .line 2506
    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v225

    add-int/lit8 v80, v225, -0x1

    .line 2507
    .local v80, "indexToRemove":I
    move-object/from16 v0, v188

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v51

    .line 2509
    .local v51, "currentView":Ljava/lang/Object;
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v91

    .line 2510
    .local v91, "level":I
    move-object/from16 v0, v213

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    move-object/from16 v0, v51

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v225, v0

    if-eqz v225, :cond_178

    .line 2514
    move-object/from16 v0, v51

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v211, v0

    .line 2515
    .local v211, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v211 .. v211}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v225

    add-int/lit8 v74, v225, -0x1

    .local v74, "i":I
    :goto_125
    if-ltz v74, :cond_cb

    .line 2517
    move-object/from16 v0, v211

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v198

    .line 2518
    .local v198, "tempView":Landroid/view/View;
    invoke-virtual/range {v198 .. v198}, Landroid/view/View;->getVisibility()I

    move-result v225

    if-nez v225, :cond_175

    .line 2520
    const-string v225, "TDK"

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    move-object/from16 v0, v188

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2515
    :cond_175
    add-int/lit8 v74, v74, -0x1

    goto :goto_125

    .line 2528
    .end local v74    # "i":I
    .end local v198    # "tempView":Landroid/view/View;
    .end local v211    # "viewGroup":Landroid/view/ViewGroup;
    :cond_178
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeSurfaceView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_a57

    .line 2529
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Inside Home Surface View "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a8} :catch_360
    .catchall {:try_start_6 .. :try_end_1a8} :catchall_544

    .line 2532
    :try_start_1a8
    const-class v225, Landroid/view/SurfaceView;

    const-string v226, "mCallbacks"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v106

    .line 2533
    .local v106, "mCallBacks":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v106

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2534
    move-object/from16 v0, v106

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v194

    .line 2535
    .local v194, "tempObject":Ljava/lang/Object;
    if-eqz v194, :cond_cb

    .line 2537
    move-object/from16 v0, v194

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v97, v0

    .line 2539
    .local v97, "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {v97 .. v97}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v76

    :cond_1cd
    :goto_1cd
    invoke-interface/range {v76 .. v76}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_cb

    invoke-interface/range {v76 .. v76}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v163

    .line 2542
    .local v163, "object":Ljava/lang/Object;
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1cd

    .line 2544
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mVisibleFragmentId"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v50

    .line 2545
    .local v50, "currentFragmentField":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2546
    move-object/from16 v0, v50

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v143

    .line 2548
    .local v143, "mVisibleFragmentId":I
    if-nez v143, :cond_616

    .line 2550
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mHomeFragment"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v122

    .line 2551
    .local v122, "mHomeFragment":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v122

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2552
    move-object/from16 v0, v122

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    .line 2555
    .local v71, "homeFragmentObj":Ljava/lang/Object;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mPresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v123

    .line 2556
    .local v123, "mHomePresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v123

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2557
    move-object/from16 v0, v123

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_23c} :catch_341
    .catchall {:try_start_1a8 .. :try_end_23c} :catchall_544

    move-result-object v73

    .line 2562
    .local v73, "homePresenterObj":Ljava/lang/Object;
    :try_start_23d
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mFolderPresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v116

    .line 2563
    .local v116, "mFolderPresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v116

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2564
    move-object/from16 v0, v116

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v121

    .line 2567
    .local v121, "mHomeFolderPresenter":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 2569
    .local v26, "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v121 .. v121}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2571
    .local v170, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_25f
    if-eqz v170, :cond_26f

    .line 2573
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "FolderPresenterBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_374

    .line 2575
    move-object/from16 v26, v170

    .line 2581
    :cond_26f
    const-string v225, "getActiveOpenFolderView"

    const/16 v226, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v63

    .line 2582
    .local v63, "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2583
    const/16 v225, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v121

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2584
    .local v10, "activeOpenFolderView":Ljava/lang/Object;
    if-eqz v10, :cond_380

    .line 2585
    const-string v225, "getActiveFolderItem"

    const/16 v226, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v62

    .line 2586
    .local v62, "getActiveFolderItem":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v62

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2587
    const/16 v225, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v121

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v102

    .line 2588
    .restart local v102    # "mActiveFolderItem":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    .line 2589
    if-nez v37, :cond_2d1

    .line 2591
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2593
    :goto_2c1
    if-eqz v170, :cond_2d1

    .line 2595
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_37a

    .line 2597
    move-object/from16 v37, v170

    .line 2605
    :cond_2d1
    if-eqz v37, :cond_1cd

    .line 2607
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2608
    .local v218, "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2610
    move-object/from16 v0, v218

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_1cd

    .line 2611
    move-object/from16 v0, v188

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_320} :catch_322
    .catchall {:try_start_23d .. :try_end_320} :catchall_544

    goto/16 :goto_1cd

    .line 2737
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v102    # "mActiveFolderItem":Ljava/lang/Object;
    .end local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v121    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :catch_322
    move-exception v57

    .line 2738
    .local v57, "ex":Ljava/lang/Exception;
    :try_start_323
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting home fragment items : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_33f} :catch_341
    .catchall {:try_start_323 .. :try_end_33f} :catchall_544

    goto/16 :goto_1cd

    .line 3012
    .end local v50    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v57    # "ex":Ljava/lang/Exception;
    .end local v71    # "homeFragmentObj":Ljava/lang/Object;
    .end local v73    # "homePresenterObj":Ljava/lang/Object;
    .end local v97    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v106    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v122    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v123    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v143    # "mVisibleFragmentId":I
    .end local v163    # "object":Ljava/lang/Object;
    .end local v194    # "tempObject":Ljava/lang/Object;
    :catch_341
    move-exception v57

    .line 3013
    .restart local v57    # "ex":Ljava/lang/Exception;
    :try_start_342
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception in get mCallbacks"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_35e} :catch_360
    .catchall {:try_start_342 .. :try_end_35e} :catchall_544

    goto/16 :goto_cb

    .line 4890
    .end local v5    # "AppsFragment":I
    .end local v6    # "HomeFragment":I
    .end local v8    # "WidgetsFragment":I
    .end local v27    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v40    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v42    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v43    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v45    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v46    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v47    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v51    # "currentView":Ljava/lang/Object;
    .end local v57    # "ex":Ljava/lang/Exception;
    .end local v58    # "field":Ljava/lang/reflect/Field;
    .end local v80    # "indexToRemove":I
    .end local v91    # "level":I
    .end local v92    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v107    # "mCameraRootHeight":I
    .end local v108    # "mCameraRootWidth":I
    .end local v117    # "mGLObjectZ":Z
    .end local v133    # "mRootWidth":I
    .end local v155    # "newlineReplacement":C
    .end local v166    # "outString":Ljava/lang/StringBuilder;
    .end local v167    # "packageName":Ljava/lang/String;
    .end local v173    # "pm":Landroid/os/PowerManager;
    .end local v188    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v195    # "tempResources":Landroid/content/res/Resources;
    .end local v197    # "tempString":Ljava/lang/String;
    .end local v213    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_360
    move-exception v52

    .line 4891
    .local v52, "e":Ljava/lang/Exception;
    :goto_361
    :try_start_361
    const-string v225, "TDK"

    const-string v226, "Problem dumping the view:"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36e
    .catchall {:try_start_361 .. :try_end_36e} :catchall_544

    .line 4893
    if-eqz v164, :cond_373

    .line 4894
    invoke-virtual/range {v164 .. v164}, Ljava/io/BufferedWriter;->close()V

    .line 4897
    .end local v52    # "e":Ljava/lang/Exception;
    :cond_373
    :goto_373
    return-void

    .line 2578
    .restart local v5    # "AppsFragment":I
    .restart local v6    # "HomeFragment":I
    .restart local v8    # "WidgetsFragment":I
    .restart local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v27    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v28    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v29    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v31    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v32    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v33    # "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v35    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v36    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v40    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v41    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v42    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v43    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v44    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v45    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v46    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v47    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v50    # "currentFragmentField":Ljava/lang/reflect/Field;
    .restart local v51    # "currentView":Ljava/lang/Object;
    .restart local v58    # "field":Ljava/lang/reflect/Field;
    .restart local v71    # "homeFragmentObj":Ljava/lang/Object;
    .restart local v73    # "homePresenterObj":Ljava/lang/Object;
    .restart local v80    # "indexToRemove":I
    .restart local v91    # "level":I
    .restart local v92    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v97    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v106    # "mCallBacks":Ljava/lang/reflect/Field;
    .restart local v107    # "mCameraRootHeight":I
    .restart local v108    # "mCameraRootWidth":I
    .restart local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v117    # "mGLObjectZ":Z
    .restart local v121    # "mHomeFolderPresenter":Ljava/lang/Object;
    .restart local v122    # "mHomeFragment":Ljava/lang/reflect/Field;
    .restart local v123    # "mHomePresenter":Ljava/lang/reflect/Field;
    .restart local v133    # "mRootWidth":I
    .restart local v143    # "mVisibleFragmentId":I
    .restart local v155    # "newlineReplacement":C
    .restart local v163    # "object":Ljava/lang/Object;
    .restart local v166    # "outString":Ljava/lang/StringBuilder;
    .restart local v167    # "packageName":Ljava/lang/String;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v173    # "pm":Landroid/os/PowerManager;
    .restart local v188    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v194    # "tempObject":Ljava/lang/Object;
    .restart local v195    # "tempResources":Landroid/content/res/Resources;
    .restart local v197    # "tempString":Ljava/lang/String;
    .restart local v213    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_374
    :try_start_374
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_25f

    .line 2600
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .restart local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .restart local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .restart local v102    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_37a
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_2c1

    .line 2620
    .end local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v102    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_380
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mPagePresenters"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v128

    .line 2621
    .local v128, "mPagePresenters":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v128

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2622
    move-object/from16 v0, v128

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v168

    .line 2625
    .local v168, "pagePresenterList":Ljava/lang/Object;
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTopFivePresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v142

    .line 2626
    .local v142, "mTopFivePresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v142

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2627
    move-object/from16 v0, v142

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v159

    .line 2630
    .local v159, "objTopFivePresenter":Ljava/lang/Object;
    invoke-virtual/range {v159 .. v159}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mAdapter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v192

    .line 2631
    .local v192, "tempField":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v192

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2632
    move-object/from16 v0, v192

    move-object/from16 v1, v159

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d2
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_3d2} :catch_322
    .catchall {:try_start_374 .. :try_end_3d2} :catchall_544

    move-result-object v157

    .line 2634
    .local v157, "objAdapterList":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 2635
    .local v17, "baseItemList":Ljava/lang/Object;
    const/16 v206, 0x0

    .line 2638
    .local v206, "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    :try_start_3d7
    invoke-virtual/range {v157 .. v157}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getItems"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v157

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 2639
    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    move-object/from16 v206, v0
    :try_end_3f5
    .catch Ljava/lang/Exception; {:try_start_3d7 .. :try_end_3f5} :catch_525
    .catchall {:try_start_3d7 .. :try_end_3f5} :catchall_544

    .line 2648
    .end local v17    # "baseItemList":Ljava/lang/Object;
    :goto_3f5
    :try_start_3f5
    move-object/from16 v0, v168

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    .line 2650
    .local v16, "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    const/16 v74, 0x0

    .restart local v74    # "i":I
    :goto_3fd
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v225

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_588

    .line 2651
    const/16 v38, 0x0

    .line 2652
    .local v38, "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v225, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeZeroPagePresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_54b

    .line 2653
    const/16 v225, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_3f5 .. :try_end_434} :catch_322
    .catchall {:try_start_3f5 .. :try_end_434} :catchall_544

    move-result-object v38

    .line 2658
    :goto_435
    :try_start_435
    const-string v225, "getItems"

    const/16 v226, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v150

    .line 2659
    .local v150, "mtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v150

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2660
    move-object/from16 v0, v16

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v150

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v190

    .line 2661
    .local v190, "temp":Ljava/lang/Object;
    move-object/from16 v0, v190

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    .line 2663
    .local v7, "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v36, :cond_483

    .line 2665
    const/16 v225, 0x0

    move/from16 v0, v225

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2667
    :goto_473
    if-eqz v170, :cond_483

    .line 2669
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "Item"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_55b

    .line 2671
    move-object/from16 v36, v170

    .line 2678
    :cond_483
    const/16 v88, 0x0

    .local v88, "j":I
    :goto_485
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v225

    move/from16 v0, v88

    move/from16 v1, v225

    if-ge v0, v1, :cond_584

    .line 2681
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 2682
    .local v64, "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2683
    move/from16 v0, v88

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    .line 2685
    .local v72, "homeItem":Ljava/lang/Object;
    if-nez v37, :cond_4ce

    .line 2687
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2689
    :goto_4be
    if-eqz v170, :cond_4ce

    .line 2691
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_561

    .line 2693
    move-object/from16 v37, v170

    .line 2701
    :cond_4ce
    if-eqz v37, :cond_521

    .line 2704
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2705
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2707
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_521

    .line 2708
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2709
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_435 .. :try_end_521} :catch_567
    .catchall {:try_start_435 .. :try_end_521} :catchall_544

    .line 2678
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_521
    add-int/lit8 v88, v88, 0x1

    goto/16 :goto_485

    .line 2642
    .end local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v16    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .end local v38    # "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v74    # "i":I
    .end local v88    # "j":I
    .end local v150    # "mtd":Ljava/lang/reflect/Method;
    .end local v190    # "temp":Ljava/lang/Object;
    :catch_525
    move-exception v57

    .line 2643
    .restart local v57    # "ex":Ljava/lang/Exception;
    :try_start_526
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception in adapterlist "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_542
    .catch Ljava/lang/Exception; {:try_start_526 .. :try_end_542} :catch_322
    .catchall {:try_start_526 .. :try_end_542} :catchall_544

    goto/16 :goto_3f5

    .line 4893
    .end local v5    # "AppsFragment":I
    .end local v6    # "HomeFragment":I
    .end local v8    # "WidgetsFragment":I
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v40    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v42    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v43    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v45    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v46    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v47    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v50    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v51    # "currentView":Ljava/lang/Object;
    .end local v57    # "ex":Ljava/lang/Exception;
    .end local v58    # "field":Ljava/lang/reflect/Field;
    .end local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v71    # "homeFragmentObj":Ljava/lang/Object;
    .end local v73    # "homePresenterObj":Ljava/lang/Object;
    .end local v80    # "indexToRemove":I
    .end local v91    # "level":I
    .end local v92    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v97    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v106    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v107    # "mCameraRootHeight":I
    .end local v108    # "mCameraRootWidth":I
    .end local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v117    # "mGLObjectZ":Z
    .end local v121    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v122    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v123    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v128    # "mPagePresenters":Ljava/lang/reflect/Field;
    .end local v133    # "mRootWidth":I
    .end local v142    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .end local v143    # "mVisibleFragmentId":I
    .end local v155    # "newlineReplacement":C
    .end local v157    # "objAdapterList":Ljava/lang/Object;
    .end local v159    # "objTopFivePresenter":Ljava/lang/Object;
    .end local v163    # "object":Ljava/lang/Object;
    .end local v166    # "outString":Ljava/lang/StringBuilder;
    .end local v167    # "packageName":Ljava/lang/String;
    .end local v168    # "pagePresenterList":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v173    # "pm":Landroid/os/PowerManager;
    .end local v188    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v192    # "tempField":Ljava/lang/reflect/Field;
    .end local v194    # "tempObject":Ljava/lang/Object;
    .end local v195    # "tempResources":Landroid/content/res/Resources;
    .end local v197    # "tempString":Ljava/lang/String;
    .end local v206    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v213    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_544
    move-exception v225

    :goto_545
    if-eqz v164, :cond_54a

    .line 4894
    invoke-virtual/range {v164 .. v164}, Ljava/io/BufferedWriter;->close()V

    :cond_54a
    throw v225

    .line 2655
    .restart local v5    # "AppsFragment":I
    .restart local v6    # "HomeFragment":I
    .restart local v8    # "WidgetsFragment":I
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .restart local v16    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .restart local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v27    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v28    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v29    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v31    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v32    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v33    # "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v35    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v36    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v38    # "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v40    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v41    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v42    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v43    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v44    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v45    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v46    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v47    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v50    # "currentFragmentField":Ljava/lang/reflect/Field;
    .restart local v51    # "currentView":Ljava/lang/Object;
    .restart local v58    # "field":Ljava/lang/reflect/Field;
    .restart local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .restart local v71    # "homeFragmentObj":Ljava/lang/Object;
    .restart local v73    # "homePresenterObj":Ljava/lang/Object;
    .restart local v74    # "i":I
    .restart local v80    # "indexToRemove":I
    .restart local v91    # "level":I
    .restart local v92    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v97    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v106    # "mCallBacks":Ljava/lang/reflect/Field;
    .restart local v107    # "mCameraRootHeight":I
    .restart local v108    # "mCameraRootWidth":I
    .restart local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v117    # "mGLObjectZ":Z
    .restart local v121    # "mHomeFolderPresenter":Ljava/lang/Object;
    .restart local v122    # "mHomeFragment":Ljava/lang/reflect/Field;
    .restart local v123    # "mHomePresenter":Ljava/lang/reflect/Field;
    .restart local v128    # "mPagePresenters":Ljava/lang/reflect/Field;
    .restart local v133    # "mRootWidth":I
    .restart local v142    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .restart local v143    # "mVisibleFragmentId":I
    .restart local v155    # "newlineReplacement":C
    .restart local v157    # "objAdapterList":Ljava/lang/Object;
    .restart local v159    # "objTopFivePresenter":Ljava/lang/Object;
    .restart local v163    # "object":Ljava/lang/Object;
    .restart local v166    # "outString":Ljava/lang/StringBuilder;
    .restart local v167    # "packageName":Ljava/lang/String;
    .restart local v168    # "pagePresenterList":Ljava/lang/Object;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v173    # "pm":Landroid/os/PowerManager;
    .restart local v188    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v192    # "tempField":Ljava/lang/reflect/Field;
    .restart local v194    # "tempObject":Ljava/lang/Object;
    .restart local v195    # "tempResources":Landroid/content/res/Resources;
    .restart local v197    # "tempString":Ljava/lang/String;
    .restart local v206    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v213    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_54b
    const/16 v225, 0x0

    :try_start_54d
    move-object/from16 v0, v16

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_558
    .catch Ljava/lang/Exception; {:try_start_54d .. :try_end_558} :catch_322
    .catchall {:try_start_54d .. :try_end_558} :catchall_544

    move-result-object v38

    goto/16 :goto_435

    .line 2674
    .restart local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v150    # "mtd":Ljava/lang/reflect/Method;
    .restart local v190    # "temp":Ljava/lang/Object;
    :cond_55b
    :try_start_55b
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_473

    .line 2696
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .restart local v72    # "homeItem":Ljava/lang/Object;
    .restart local v88    # "j":I
    :cond_561
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_55b .. :try_end_564} :catch_567
    .catchall {:try_start_55b .. :try_end_564} :catchall_544

    move-result-object v170

    goto/16 :goto_4be

    .line 2713
    .end local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v88    # "j":I
    .end local v150    # "mtd":Ljava/lang/reflect/Method;
    .end local v190    # "temp":Ljava/lang/Object;
    :catch_567
    move-exception v52

    .line 2714
    .restart local v52    # "e":Ljava/lang/Exception;
    :try_start_568
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception in get mCallbacks"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    .end local v52    # "e":Ljava/lang/Exception;
    :cond_584
    add-int/lit8 v74, v74, 0x1

    goto/16 :goto_3fd

    .line 2719
    .end local v38    # "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_588
    const/16 v88, 0x0

    .restart local v88    # "j":I
    :goto_58a
    invoke-interface/range {v206 .. v206}, Ljava/util/List;->size()I

    move-result v225

    move/from16 v0, v88

    move/from16 v1, v225

    if-ge v0, v1, :cond_1cd

    .line 2720
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 2721
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2722
    move-object/from16 v0, v206

    move/from16 v1, v88

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    .line 2724
    .restart local v72    # "homeItem":Ljava/lang/Object;
    if-eqz v37, :cond_612

    .line 2727
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2728
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2730
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_612

    .line 2731
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_612
    .catch Ljava/lang/Exception; {:try_start_568 .. :try_end_612} :catch_322
    .catchall {:try_start_568 .. :try_end_612} :catchall_544

    .line 2719
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_612
    add-int/lit8 v88, v88, 0x1

    goto/16 :goto_58a

    .line 2742
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v16    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .end local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v71    # "homeFragmentObj":Ljava/lang/Object;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v73    # "homePresenterObj":Ljava/lang/Object;
    .end local v74    # "i":I
    .end local v88    # "j":I
    .end local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v121    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v122    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v123    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v128    # "mPagePresenters":Ljava/lang/reflect/Field;
    .end local v142    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .end local v157    # "objAdapterList":Ljava/lang/Object;
    .end local v159    # "objTopFivePresenter":Ljava/lang/Object;
    .end local v168    # "pagePresenterList":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v192    # "tempField":Ljava/lang/reflect/Field;
    .end local v206    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_616
    const/16 v225, 0x1

    move/from16 v0, v143

    move/from16 v1, v225

    if-ne v0, v1, :cond_92c

    .line 2745
    :try_start_61e
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mAppsFragment"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v104

    .line 2746
    .local v104, "mAppsFragment":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v104

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2747
    move-object/from16 v0, v104

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2751
    .local v14, "appsFragmentObj":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mAppsPresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v105

    .line 2752
    .local v105, "mAppsPresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v105

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2753
    move-object/from16 v0, v105

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_651
    .catch Ljava/lang/Exception; {:try_start_61e .. :try_end_651} :catch_341
    .catchall {:try_start_61e .. :try_end_651} :catchall_544

    move-result-object v12

    .line 2758
    .local v12, "appPresenterObj":Ljava/lang/Object;
    const/16 v60, 0x0

    .line 2759
    .local v60, "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v13, 0x0

    .line 2761
    .local v13, "appsFolderPresenterObj":Ljava/lang/Object;
    :try_start_655
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mFolderPresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v116

    .line 2762
    .restart local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v116

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2763
    move-object/from16 v0, v116

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2765
    const/16 v26, 0x0

    .line 2767
    .restart local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2769
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_675
    if-eqz v170, :cond_685

    .line 2771
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "FolderPresenterBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_753

    .line 2773
    move-object/from16 v26, v170

    .line 2779
    :cond_685
    const-string v225, "getActiveOpenFolderView"

    const/16 v226, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v63

    .line 2780
    .restart local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2781
    const/16 v225, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v225

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2782
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    if-eqz v10, :cond_75f

    .line 2783
    const-string v225, "getActiveFolderItem"

    const/16 v226, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v62

    .line 2784
    .restart local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v62

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2785
    const/16 v225, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v225

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v102

    .line 2786
    .restart local v102    # "mActiveFolderItem":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    .line 2787
    if-nez v37, :cond_6e3

    .line 2789
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2791
    :goto_6d3
    if-eqz v170, :cond_6e3

    .line 2793
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_759

    .line 2795
    move-object/from16 v37, v170

    .line 2803
    :cond_6e3
    if-eqz v37, :cond_1cd

    .line 2807
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2808
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2810
    move-object/from16 v0, v218

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_1cd

    .line 2811
    move-object/from16 v0, v188

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_732
    .catch Ljava/lang/Exception; {:try_start_655 .. :try_end_732} :catch_734
    .catchall {:try_start_655 .. :try_end_732} :catchall_544

    goto/16 :goto_1cd

    .line 2934
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .end local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v102    # "mActiveFolderItem":Ljava/lang/Object;
    .end local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :catch_734
    move-exception v57

    .line 2935
    .restart local v57    # "ex":Ljava/lang/Exception;
    :try_start_735
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, " Exception while getting folder item "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_751
    .catch Ljava/lang/Exception; {:try_start_735 .. :try_end_751} :catch_341
    .catchall {:try_start_735 .. :try_end_751} :catchall_544

    goto/16 :goto_1cd

    .line 2776
    .end local v57    # "ex":Ljava/lang/Exception;
    .restart local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .restart local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_753
    :try_start_753
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_675

    .line 2798
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .restart local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .restart local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .restart local v102    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_759
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_6d3

    .line 2820
    .end local v62    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v102    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_75f
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getFolderItems"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/util/List;

    move-object/from16 v60, v0

    .line 2821
    const-string v225, "TDK"

    const-string v226, " Found folder item list "

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const/16 v74, 0x0

    .restart local v74    # "i":I
    :goto_788
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v225

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_853

    .line 2825
    if-nez v36, :cond_7b0

    .line 2827
    move-object/from16 v0, v60

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2829
    :goto_7a0
    if-eqz v170, :cond_7b0

    .line 2831
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "Item"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_848

    .line 2833
    move-object/from16 v36, v170

    .line 2843
    :cond_7b0
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 2844
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2845
    move-object/from16 v0, v60

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    .line 2847
    .restart local v72    # "homeItem":Ljava/lang/Object;
    if-nez v37, :cond_7f1

    .line 2849
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2851
    :goto_7e1
    if-eqz v170, :cond_7f1

    .line 2853
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_84e

    .line 2855
    move-object/from16 v37, v170

    .line 2862
    :cond_7f1
    if-eqz v37, :cond_844

    .line 2865
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2866
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2868
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_844

    .line 2869
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2823
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_844
    add-int/lit8 v74, v74, 0x1

    goto/16 :goto_788

    .line 2836
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    :cond_848
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_7a0

    .line 2858
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .restart local v72    # "homeItem":Ljava/lang/Object;
    :cond_84e
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto :goto_7e1

    .line 2876
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    :cond_853
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mItemList"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v124

    .line 2877
    .local v124, "mItemList":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v124

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2879
    move-object/from16 v0, v124

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Ljava/util/HashSet;

    .line 2882
    .local v84, "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    invoke-virtual/range {v84 .. v84}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .local v75, "i$":Ljava/util/Iterator;
    :cond_873
    :goto_873
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_1cd

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v187

    .line 2884
    .local v187, "setObj":Ljava/lang/Object;
    if-nez v36, :cond_893

    .line 2886
    invoke-virtual/range {v187 .. v187}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2888
    :goto_883
    if-eqz v170, :cond_893

    .line 2890
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "Item"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_921

    .line 2892
    move-object/from16 v36, v170

    .line 2900
    :cond_893
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 2901
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2902
    const/16 v225, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v187

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    .line 2904
    .restart local v72    # "homeItem":Ljava/lang/Object;
    if-nez v37, :cond_8cc

    .line 2906
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2908
    :goto_8bc
    if-eqz v170, :cond_8cc

    .line 2910
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_927

    .line 2912
    move-object/from16 v37, v170

    .line 2920
    :cond_8cc
    if-eqz v37, :cond_873

    .line 2923
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2924
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2926
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_873

    .line 2927
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2928
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_873

    .line 2895
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_921
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_883

    .line 2915
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .restart local v72    # "homeItem":Ljava/lang/Object;
    :cond_927
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_92a
    .catch Ljava/lang/Exception; {:try_start_753 .. :try_end_92a} :catch_734
    .catchall {:try_start_753 .. :try_end_92a} :catchall_544

    move-result-object v170

    goto :goto_8bc

    .line 2939
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v12    # "appPresenterObj":Ljava/lang/Object;
    .end local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .end local v14    # "appsFragmentObj":Ljava/lang/Object;
    .end local v26    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v63    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v74    # "i":I
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v84    # "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    .end local v104    # "mAppsFragment":Ljava/lang/reflect/Field;
    .end local v105    # "mAppsPresenter":Ljava/lang/reflect/Field;
    .end local v116    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v124    # "mItemList":Ljava/lang/reflect/Field;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v187    # "setObj":Ljava/lang/Object;
    :cond_92c
    const/16 v225, 0x2

    move/from16 v0, v143

    move/from16 v1, v225

    if-ne v0, v1, :cond_1cd

    .line 2941
    :try_start_934
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mWidgetsFragment"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v144

    .line 2942
    .local v144, "mWidgetsFragment":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v144

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2943
    move-object/from16 v0, v144

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v220

    .line 2947
    .local v220, "widgetsFragmentObj":Ljava/lang/Object;
    invoke-virtual/range {v220 .. v220}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mWidgetsPresenter"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v145

    .line 2948
    .local v145, "mWidgetsPresenter":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v145

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2949
    move-object/from16 v0, v145

    move-object/from16 v1, v220

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v221

    .line 2953
    .local v221, "widgetsPresenterObj":Ljava/lang/Object;
    invoke-virtual/range {v221 .. v221}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mWidgetItemList"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v124

    .line 2954
    .restart local v124    # "mItemList":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v124

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2955
    move-object/from16 v0, v124

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Ljava/util/List;

    .line 2956
    .local v85, "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v74, 0x0

    .restart local v74    # "i":I
    :goto_98c
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v225

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_1cd

    .line 2958
    if-nez v36, :cond_9b4

    .line 2960
    move-object/from16 v0, v85

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2962
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9a4
    if-eqz v170, :cond_9b4

    .line 2964
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "Item"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_a4c

    .line 2966
    move-object/from16 v36, v170

    .line 2975
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9b4
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 2976
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2977
    move-object/from16 v0, v85

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    .line 2979
    .restart local v72    # "homeItem":Ljava/lang/Object;
    if-nez v37, :cond_9f5

    .line 2981
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 2983
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9e5
    if-eqz v170, :cond_9f5

    .line 2985
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_a52

    .line 2987
    move-object/from16 v37, v170

    .line 2995
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9f5
    if-eqz v37, :cond_a48

    .line 2998
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 2999
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3001
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_a48

    .line 3002
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3003
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_a48
    add-int/lit8 v74, v74, 0x1

    goto/16 :goto_98c

    .line 2969
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a4c
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_9a4

    .line 2990
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .restart local v72    # "homeItem":Ljava/lang/Object;
    :cond_a52
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_a55
    .catch Ljava/lang/Exception; {:try_start_934 .. :try_end_a55} :catch_341
    .catchall {:try_start_934 .. :try_end_a55} :catchall_544

    move-result-object v170

    goto :goto_9e5

    .line 3017
    .end local v50    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v74    # "i":I
    .end local v85    # "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v97    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v106    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v124    # "mItemList":Ljava/lang/reflect/Field;
    .end local v143    # "mVisibleFragmentId":I
    .end local v144    # "mWidgetsFragment":Ljava/lang/reflect/Field;
    .end local v145    # "mWidgetsPresenter":Ljava/lang/reflect/Field;
    .end local v163    # "object":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v194    # "tempObject":Ljava/lang/Object;
    .end local v220    # "widgetsFragmentObj":Ljava/lang/Object;
    .end local v221    # "widgetsPresenterObj":Ljava/lang/Object;
    :cond_a57
    if-eqz v35, :cond_ca4

    if-eqz v102, :cond_ca4

    :try_start_a5b
    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_a62
    .catch Ljava/lang/Exception; {:try_start_a5b .. :try_end_a62} :catch_360
    .catchall {:try_start_a5b .. :try_end_a62} :catchall_544

    move-result v225

    if-eqz v225, :cond_ca4

    .line 3020
    const/4 v9, 0x0

    .line 3023
    .local v9, "activeFolderTitleView":Ljava/lang/Object;
    :try_start_a66
    const-string/jumbo v225, "mTitleView"

    move-object/from16 v0, v35

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v140

    .line 3024
    .local v140, "mTitleView":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v140

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3025
    move-object/from16 v0, v140

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a81
    .catch Ljava/lang/Exception; {:try_start_a66 .. :try_end_a81} :catch_4d79
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a66 .. :try_end_a81} :catch_c09
    .catchall {:try_start_a66 .. :try_end_a81} :catchall_544

    move-result-object v9

    .line 3032
    .end local v9    # "activeFolderTitleView":Ljava/lang/Object;
    .end local v140    # "mTitleView":Ljava/lang/reflect/Field;
    :goto_a82
    if-eqz v102, :cond_cb

    .line 3034
    const/16 v25, 0x0

    .line 3036
    .local v25, "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_a86
    invoke-virtual/range {v102 .. v102}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3038
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a8a
    if-eqz v170, :cond_a9a

    .line 3040
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "FolderItem"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_bde

    .line 3042
    move-object/from16 v25, v170

    .line 3048
    :cond_a9a
    const-string v225, "getItems"

    const/16 v226, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v102

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/util/List;

    .line 3049
    .local v87, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Folder Item Size : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    if-nez v36, :cond_af2

    .line 3053
    const/16 v225, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v225

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3055
    :goto_ae2
    if-eqz v170, :cond_af2

    .line 3057
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "Item"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_be4

    .line 3059
    move-object/from16 v36, v170

    .line 3067
    :cond_af2
    const/16 v88, 0x0

    .restart local v88    # "j":I
    :goto_af4
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I
    :try_end_af7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a86 .. :try_end_af7} :catch_c09
    .catch Ljava/lang/Exception; {:try_start_a86 .. :try_end_af7} :catch_c85
    .catchall {:try_start_a86 .. :try_end_af7} :catchall_544

    move-result v225

    move/from16 v0, v88

    move/from16 v1, v225

    if-ge v0, v1, :cond_c2e

    .line 3070
    const/16 v72, 0x0

    .line 3072
    .restart local v72    # "homeItem":Ljava/lang/Object;
    :try_start_b00
    const-string v225, "getItemView"

    const/16 v226, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v64

    .line 3073
    .restart local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3074
    invoke-interface/range {v87 .. v88}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b00 .. :try_end_b26} :catch_bea
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b00 .. :try_end_b26} :catch_c09
    .catch Ljava/lang/Exception; {:try_start_b00 .. :try_end_b26} :catch_c85
    .catchall {:try_start_b00 .. :try_end_b26} :catchall_544

    move-result-object v72

    .line 3078
    .end local v64    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v72    # "homeItem":Ljava/lang/Object;
    :goto_b27
    :try_start_b27
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Folder Item Object"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    if-nez v34, :cond_b59

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeItemView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_b59

    .line 3080
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    .line 3082
    :cond_b59
    if-nez v33, :cond_b6f

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeFolderView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_b6f

    .line 3083
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    .line 3086
    :cond_b6f
    if-nez v37, :cond_b85

    .line 3088
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3090
    :goto_b75
    if-eqz v170, :cond_b85

    .line 3092
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "NativeViewBase"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_c28

    .line 3094
    move-object/from16 v37, v170

    .line 3102
    :cond_b85
    if-eqz v37, :cond_bda

    if-eqz v72, :cond_bda

    .line 3105
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 3106
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3108
    move-object/from16 v0, v218

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_bda

    .line 3109
    move-object/from16 v0, v188

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3067
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :cond_bda
    add-int/lit8 v88, v88, 0x1

    goto/16 :goto_af4

    .line 3045
    .end local v87    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v88    # "j":I
    :cond_bde
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_a8a

    .line 3062
    .restart local v87    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_be4
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_ae2

    .line 3075
    .restart local v72    # "homeItem":Ljava/lang/Object;
    .restart local v88    # "j":I
    :catch_bea
    move-exception v57

    .line 3076
    .local v57, "ex":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting ItemView"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c07
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b27 .. :try_end_c07} :catch_c09
    .catch Ljava/lang/Exception; {:try_start_b27 .. :try_end_c07} :catch_c85
    .catchall {:try_start_b27 .. :try_end_c07} :catchall_544

    goto/16 :goto_b27

    .line 3127
    .end local v25    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v57    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v72    # "homeItem":Ljava/lang/Object;
    .end local v87    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v88    # "j":I
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_c09
    move-exception v57

    .line 3128
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_c0a
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such field in Home open folder view"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c26
    .catch Ljava/lang/Exception; {:try_start_c0a .. :try_end_c26} :catch_360
    .catchall {:try_start_c0a .. :try_end_c26} :catchall_544

    goto/16 :goto_cb

    .line 3097
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v25    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v87    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v88    # "j":I
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c28
    :try_start_c28
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_b75

    .line 3115
    :cond_c2e
    if-eqz v37, :cond_cb

    if-eqz v9, :cond_cb

    .line 3116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    .line 3118
    const-string/jumbo v225, "mVisible"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v218

    .line 3119
    .restart local v218    # "visible":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3121
    move-object/from16 v0, v218

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    if-nez v225, :cond_cb

    .line 3122
    move-object/from16 v0, v188

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c83
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c28 .. :try_end_c83} :catch_c09
    .catch Ljava/lang/Exception; {:try_start_c28 .. :try_end_c83} :catch_c85
    .catchall {:try_start_c28 .. :try_end_c83} :catchall_544

    goto/16 :goto_cb

    .line 3129
    .end local v87    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v88    # "j":I
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v218    # "visible":Ljava/lang/reflect/Field;
    :catch_c85
    move-exception v57

    .line 3130
    .local v57, "ex":Ljava/lang/Exception;
    :try_start_c86
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception in Home open folder view"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 3133
    .end local v25    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v57    # "ex":Ljava/lang/Exception;
    :cond_ca4
    if-eqz v34, :cond_cb0

    move-object/from16 v0, v34

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_cb

    .line 3137
    :cond_cb0
    if-eqz v33, :cond_cbc

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_cb

    .line 3141
    :cond_cbc
    if-eqz v40, :cond_cc8

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_cb

    .line 3146
    :cond_cc8
    move-object/from16 v0, v51

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    move/from16 v225, v0
    :try_end_cce
    .catch Ljava/lang/Exception; {:try_start_c86 .. :try_end_cce} :catch_360
    .catchall {:try_start_c86 .. :try_end_cce} :catchall_544

    if-eqz v225, :cond_1744

    .line 3149
    :try_start_cd0
    move-object/from16 v0, v51

    check-cast v0, Landroid/view/View;

    move-object/from16 v225, v0

    invoke-virtual/range {v225 .. v225}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v195

    .line 3152
    const-class v225, Landroid/opengl/GLSurfaceView;

    const-string/jumbo v226, "mRenderer"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3153
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3154
    move-object/from16 v0, v58

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v193

    .line 3156
    .local v193, "tempObj":Ljava/lang/Object;
    const-string v225, "TDK"

    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "com.sec.samsung.gallery.glview.GlRootView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_d21

    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "com.sec.android.gallery3d.glcore.GlRootView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d1e
    .catch Ljava/lang/Exception; {:try_start_cd0 .. :try_end_d1e} :catch_10a2
    .catchall {:try_start_cd0 .. :try_end_d1e} :catchall_544

    move-result v225

    if-eqz v225, :cond_144d

    .line 3161
    :cond_d21
    :try_start_d21
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mContentView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3162
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3163
    move-object/from16 v0, v58

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d3b
    .catch Ljava/lang/Exception; {:try_start_d21 .. :try_end_d3b} :catch_dbb
    .catchall {:try_start_d21 .. :try_end_d3b} :catchall_544

    move-result-object v113

    .line 3167
    :goto_d3c
    if-eqz v113, :cond_dc5

    .line 3169
    :try_start_d3e
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Got mContentView : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ", simple name : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    move-object/from16 v0, v188

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    if-nez v27, :cond_cb

    .line 3175
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3176
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_da9
    if-eqz v170, :cond_cb

    .line 3178
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_dc0

    .line 3180
    move-object/from16 v27, v170

    .line 3181
    goto/16 :goto_cb

    .line 3164
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_dbb
    move-exception v52

    .line 3165
    .restart local v52    # "e":Ljava/lang/Exception;
    const/16 v113, 0x0

    .local v113, "mContentView":Ljava/lang/Object;
    goto/16 :goto_d3c

    .line 3183
    .end local v52    # "e":Ljava/lang/Exception;
    .end local v113    # "mContentView":Ljava/lang/Object;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_dc0
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_dc3
    .catch Ljava/lang/Exception; {:try_start_d3e .. :try_end_dc3} :catch_10a2
    .catchall {:try_start_d3e .. :try_end_dc3} :catchall_544

    move-result-object v170

    goto :goto_da9

    .line 3191
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_dc5
    :try_start_dc5
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mGLObjectZ"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3192
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3193
    const/16 v117, 0x1

    .line 3194
    move-object/from16 v0, v58

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v194

    .line 3195
    .restart local v194    # "tempObject":Ljava/lang/Object;
    if-eqz v194, :cond_1079

    .line 3197
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "What: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v194 .. v194}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    move-object/from16 v0, v194

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v99, v0

    .line 3200
    .local v99, "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {v99 .. v99}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .restart local v75    # "i$":Ljava/util/Iterator;
    :cond_e0f
    :goto_e0f
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_ec3

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v163

    .line 3202
    .restart local v163    # "object":Ljava/lang/Object;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Array: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    if-nez v30, :cond_e4f

    .line 3206
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3207
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e3f
    if-eqz v170, :cond_e4f

    .line 3209
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1073

    .line 3211
    move-object/from16 v30, v170

    .line 3218
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e4f
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_e0f

    .line 3219
    move-object/from16 v0, v188

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3220
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ea4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dc5 .. :try_end_ea4} :catch_ea6
    .catch Ljava/lang/SecurityException; {:try_start_dc5 .. :try_end_ea4} :catch_1083
    .catch Ljava/lang/Exception; {:try_start_dc5 .. :try_end_ea4} :catch_10a2
    .catchall {:try_start_dc5 .. :try_end_ea4} :catchall_544

    goto/16 :goto_e0f

    .line 3228
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v99    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v163    # "object":Ljava/lang/Object;
    .end local v194    # "tempObject":Ljava/lang/Object;
    :catch_ea6
    move-exception v52

    .line 3230
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_ea7
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, " No such field"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_ec3
    :goto_ec3
    if-nez v117, :cond_cb

    .line 3239
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mRootObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3240
    move-object/from16 v0, v58

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v194

    .line 3242
    .restart local v194    # "tempObject":Ljava/lang/Object;
    if-eqz v194, :cond_cb

    .line 3244
    invoke-virtual/range {v194 .. v194}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mChildCount"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3245
    move-object/from16 v0, v58

    move-object/from16 v1, v194

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v24

    .line 3247
    .local v24, "childcount":I
    invoke-virtual/range {v194 .. v194}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mChild"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3248
    move-object/from16 v0, v58

    move-object/from16 v1, v194

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, [Ljava/lang/Object;

    move-object/from16 v0, v225

    nop

    nop

    move-object/from16 v98, v0

    .line 3249
    .local v98, "listObjectZ":[Ljava/lang/Object;
    add-int/lit8 v74, v24, -0x1

    .restart local v74    # "i":I
    :goto_f08
    if-ltz v74, :cond_cb

    .line 3251
    aget-object v163, v98, v74

    .line 3252
    .restart local v163    # "object":Ljava/lang/Object;
    if-eqz v163, :cond_106f

    .line 3254
    if-nez v30, :cond_f24

    .line 3256
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3257
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_f14
    if-eqz v170, :cond_f24

    .line 3259
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_10b2

    .line 3261
    move-object/from16 v30, v170

    .line 3267
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f24
    const-string/jumbo v225, "mState"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3268
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v189

    .line 3270
    .local v189, "state":I
    const/16 v225, 0x1

    move/from16 v0, v189

    move/from16 v1, v225

    if-ne v0, v1, :cond_106f

    .line 3272
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_106f

    .line 3273
    move-object/from16 v0, v188

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3274
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "GlObject class name "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlThumbObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_fd4

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlReorderObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_10b8

    .line 3278
    :cond_fd4
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v28

    .line 3279
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "GlObject super class name "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const-string v225, "getChildTextObject"

    const/16 v226, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v110

    .line 3281
    .local v110, "mChildTextObj":Ljava/lang/Object;
    if-eqz v110, :cond_106f

    .line 3283
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "GlObject >> Text obj class name >> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    move-object/from16 v0, v188

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v110 .. v110}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_106f
    .catch Ljava/lang/Exception; {:try_start_ea7 .. :try_end_106f} :catch_10a2
    .catchall {:try_start_ea7 .. :try_end_106f} :catchall_544

    .line 3249
    .end local v110    # "mChildTextObj":Ljava/lang/Object;
    .end local v189    # "state":I
    :cond_106f
    add-int/lit8 v74, v74, -0x1

    goto/16 :goto_f08

    .line 3214
    .end local v24    # "childcount":I
    .end local v74    # "i":I
    .end local v98    # "listObjectZ":[Ljava/lang/Object;
    .restart local v75    # "i$":Ljava/util/Iterator;
    .restart local v99    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1073
    :try_start_1073
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_e3f

    .line 3226
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v99    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v163    # "object":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1079
    const-string v225, "TDK"

    const-string/jumbo v226, "mGLObjectZ is null"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1081
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1073 .. :try_end_1081} :catch_ea6
    .catch Ljava/lang/SecurityException; {:try_start_1073 .. :try_end_1081} :catch_1083
    .catch Ljava/lang/Exception; {:try_start_1073 .. :try_end_1081} :catch_10a2
    .catchall {:try_start_1073 .. :try_end_1081} :catchall_544

    goto/16 :goto_ec3

    .line 3231
    .end local v194    # "tempObject":Ljava/lang/Object;
    :catch_1083
    move-exception v52

    .line 3233
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_1084
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, " No such field"

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a0
    .catch Ljava/lang/Exception; {:try_start_1084 .. :try_end_10a0} :catch_10a2
    .catchall {:try_start_1084 .. :try_end_10a0} :catchall_544

    goto/16 :goto_ec3

    .line 3544
    .end local v52    # "e":Ljava/lang/SecurityException;
    .end local v193    # "tempObj":Ljava/lang/Object;
    :catch_10a2
    move-exception v52

    .line 3545
    .local v52, "e":Ljava/lang/Exception;
    :try_start_10a3
    const-string v225, "TDK"

    const-string v226, "Problem: "

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b0
    .catch Ljava/lang/Exception; {:try_start_10a3 .. :try_end_10b0} :catch_360
    .catchall {:try_start_10a3 .. :try_end_10b0} :catchall_544

    goto/16 :goto_cb

    .line 3264
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v24    # "childcount":I
    .restart local v74    # "i":I
    .restart local v98    # "listObjectZ":[Ljava/lang/Object;
    .restart local v163    # "object":Ljava/lang/Object;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v193    # "tempObj":Ljava/lang/Object;
    .restart local v194    # "tempObject":Ljava/lang/Object;
    :cond_10b2
    :try_start_10b2
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_f14

    .line 3289
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v189    # "state":I
    :cond_10b8
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlComposeObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_106f

    .line 3291
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mChild"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3292
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, [Ljava/lang/Object;

    move-object/from16 v0, v225

    nop

    nop

    move-object/from16 v95, v0

    .line 3294
    .local v95, "listComposeObjChild":[Ljava/lang/Object;
    move-object/from16 v0, v95

    array-length v0, v0

    move/from16 v225, v0

    add-int/lit8 v89, v225, -0x1

    .local v89, "k":I
    :goto_10ed
    if-ltz v89, :cond_106f

    .line 3296
    aget-object v23, v95, v89

    .line 3297
    .local v23, "childObj":Ljava/lang/Object;
    if-eqz v23, :cond_1449

    .line 3298
    const-string/jumbo v225, "mState"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3299
    move-object/from16 v0, v58

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v189

    .line 3301
    const/16 v225, 0x1

    move/from16 v0, v189

    move/from16 v1, v225

    if-ne v0, v1, :cond_1449

    .line 3303
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v23

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_1449

    .line 3304
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GroupObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1449

    .line 3305
    const-string v225, "mChild"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3306
    move-object/from16 v0, v58

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, [Ljava/lang/Object;

    move-object/from16 v0, v225

    nop

    nop

    move-object/from16 v100, v0

    .line 3307
    .local v100, "listThumbObj":[Ljava/lang/Object;
    move-object/from16 v0, v100

    array-length v0, v0

    move/from16 v225, v0

    add-int/lit8 v88, v225, -0x1

    .restart local v88    # "j":I
    :goto_1161
    if-ltz v88, :cond_1449

    .line 3309
    aget-object v201, v100, v88

    .line 3310
    .local v201, "thumbObj":Ljava/lang/Object;
    if-eqz v201, :cond_13cc

    .line 3312
    const-string/jumbo v225, "mState"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3313
    move-object/from16 v0, v58

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v189

    .line 3315
    const/16 v225, 0x1

    move/from16 v0, v189

    move/from16 v1, v225

    if-ne v0, v1, :cond_13cc

    .line 3317
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v201

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_11d7

    .line 3318
    move-object/from16 v0, v188

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3319
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3321
    :cond_11d7
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "ThumbObject"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11e4
    .catch Ljava/lang/Exception; {:try_start_10b2 .. :try_end_11e4} :catch_10a2
    .catchall {:try_start_10b2 .. :try_end_11e4} :catchall_544

    move-result v225

    if-eqz v225, :cond_13cc

    .line 3323
    const/16 v204, 0x0

    .line 3325
    .local v204, "titleObj":Ljava/lang/Object;
    if-eqz v81, :cond_129e

    .line 3326
    :try_start_11eb
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v59

    .line 3328
    .local v59, "fields":[Ljava/lang/reflect/Field;
    const/16 v219, 0x0

    .local v219, "vv":I
    :goto_11f5
    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v219

    move/from16 v1, v225

    if-ge v0, v1, :cond_1248

    .line 3329
    aget-object v225, v59, v219

    const/16 v226, 0x1

    invoke-virtual/range {v225 .. v226}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3330
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> thumbObj field >> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, " "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, " "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    add-int/lit8 v219, v219, 0x1

    goto :goto_11f5

    .line 3332
    :cond_1248
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v59

    .line 3333
    const/16 v219, 0x0

    :goto_1252
    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v219

    move/from16 v1, v225

    if-ge v0, v1, :cond_129e

    .line 3335
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> thumbObj field >> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, " "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, " "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v59, v219

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    add-int/lit8 v219, v219, 0x1

    goto :goto_1252

    .line 3338
    .end local v59    # "fields":[Ljava/lang/reflect/Field;
    .end local v219    # "vv":I
    :cond_129e
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTitleObj"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3339
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3340
    move-object/from16 v0, v58

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v204

    .line 3341
    if-eqz v204, :cond_1331

    .line 3342
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> Got title object >> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v204

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_1331

    .line 3344
    move-object/from16 v0, v188

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3345
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1331
    .catch Ljava/lang/Exception; {:try_start_11eb .. :try_end_1331} :catch_13d0
    .catchall {:try_start_11eb .. :try_end_1331} :catchall_544

    .line 3353
    .end local v204    # "titleObj":Ljava/lang/Object;
    :cond_1331
    :goto_1331
    if-nez v204, :cond_13cc

    .line 3356
    :try_start_1333
    const-string v225, "TDK"

    const-string v226, "Checking for album title"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mAlbumTitleObj"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3370
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3371
    move-object/from16 v0, v58

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v204

    .line 3372
    .restart local v204    # "titleObj":Ljava/lang/Object;
    if-eqz v204, :cond_13cc

    .line 3373
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> Got title object >> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v204

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v225

    if-eqz v225, :cond_13cc

    .line 3376
    move-object/from16 v0, v188

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3377
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13cc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1333 .. :try_end_13cc} :catch_13ef
    .catch Ljava/lang/SecurityException; {:try_start_1333 .. :try_end_13cc} :catch_140d
    .catch Ljava/lang/Exception; {:try_start_1333 .. :try_end_13cc} :catch_142b
    .catchall {:try_start_1333 .. :try_end_13cc} :catchall_544

    .line 3307
    .end local v204    # "titleObj":Ljava/lang/Object;
    :cond_13cc
    :goto_13cc
    add-int/lit8 v88, v88, -0x1

    goto/16 :goto_1161

    .line 3349
    :catch_13d0
    move-exception v52

    .line 3350
    .restart local v52    # "e":Ljava/lang/Exception;
    :try_start_13d1
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception in getting mTitleObj "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1331

    .line 3382
    .end local v52    # "e":Ljava/lang/Exception;
    :catch_13ef
    move-exception v57

    .line 3383
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No mTitle field "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13cc

    .line 3385
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_140d
    move-exception v57

    .line 3386
    .local v57, "ex":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No mTitle field "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13cc

    .line 3387
    .end local v57    # "ex":Ljava/lang/SecurityException;
    :catch_142b
    move-exception v52

    .line 3388
    .restart local v52    # "e":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception for text title>> "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13cc

    .line 3294
    .end local v52    # "e":Ljava/lang/Exception;
    .end local v88    # "j":I
    .end local v100    # "listThumbObj":[Ljava/lang/Object;
    .end local v201    # "thumbObj":Ljava/lang/Object;
    :cond_1449
    add-int/lit8 v89, v89, -0x1

    goto/16 :goto_10ed

    .line 3412
    .end local v23    # "childObj":Ljava/lang/Object;
    .end local v24    # "childcount":I
    .end local v74    # "i":I
    .end local v89    # "k":I
    .end local v95    # "listComposeObjChild":[Ljava/lang/Object;
    .end local v98    # "listObjectZ":[Ljava/lang/Object;
    .end local v163    # "object":Ljava/lang/Object;
    .end local v189    # "state":I
    .end local v194    # "tempObject":Ljava/lang/Object;
    :cond_144d
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLContext"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_169e

    .line 3415
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mRootView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3416
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3417
    move-object/from16 v0, v58

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v132

    .line 3419
    .local v132, "mRootView":Ljava/lang/Object;
    invoke-virtual/range {v132 .. v132}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    .line 3420
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1480
    .catch Ljava/lang/Exception; {:try_start_13d1 .. :try_end_1480} :catch_10a2
    .catchall {:try_start_13d1 .. :try_end_1480} :catchall_544

    move-result-object v46

    .line 3423
    :try_start_1481
    const-string v225, "mClipRect"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3424
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3425
    move-object/from16 v0, v58

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/graphics/Rect;

    .line 3426
    .local v111, "mClipRect":Landroid/graphics/Rect;
    if-eqz v111, :cond_14be

    .line 3428
    if-nez v108, :cond_14be

    .line 3430
    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v225, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v226, v0

    sub-int v108, v225, v226

    .line 3431
    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v225, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v226, v0
    :try_end_14bc
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1481 .. :try_end_14bc} :catch_1660
    .catch Ljava/lang/SecurityException; {:try_start_1481 .. :try_end_14bc} :catch_167f
    .catch Ljava/lang/Exception; {:try_start_1481 .. :try_end_14bc} :catch_10a2
    .catchall {:try_start_1481 .. :try_end_14bc} :catchall_544

    sub-int v107, v225, v226

    .line 3440
    .end local v111    # "mClipRect":Landroid/graphics/Rect;
    :cond_14be
    :goto_14be
    :try_start_14be
    move-object/from16 v0, v188

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3441
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v132 .. v132}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v132 .. v132}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v225

    add-int/lit8 v196, v225, -0x1

    .line 3445
    .local v196, "tempStackCutLine":I
    :cond_14f7
    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v225

    move/from16 v0, v225

    move/from16 v1, v196

    if-le v0, v1, :cond_cb

    .line 3446
    invoke-virtual/range {v188 .. v188}, Ljava/util/ArrayList;->size()I

    move-result v225

    add-int/lit8 v80, v225, -0x1

    .line 3447
    move-object/from16 v0, v188

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v51

    .line 3449
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v93

    .line 3450
    .local v93, "levelOfGL":I
    move-object/from16 v0, v213

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3452
    if-eqz v47, :cond_14f7

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_14f7

    .line 3454
    const-string/jumbo v225, "mGLViews"

    move-object/from16 v0, v47

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3455
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3456
    move-object/from16 v0, v58

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Ljava/util/List;

    .line 3457
    .local v96, "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/List;->size()I

    move-result v225

    add-int/lit8 v74, v225, -0x1

    .restart local v74    # "i":I
    :goto_1571
    if-ltz v74, :cond_14f7

    .line 3459
    move-object/from16 v0, v96

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v198

    .line 3460
    .local v198, "tempView":Ljava/lang/Object;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "class Name*** "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    if-nez v41, :cond_15b1

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLButton"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_15b1

    .line 3464
    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v41

    .line 3466
    :cond_15b1
    if-nez v45, :cond_15c7

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLText"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_15c7

    .line 3467
    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    .line 3469
    :cond_15c7
    if-nez v42, :cond_15dd

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLItem"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_15dd

    .line 3470
    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    .line 3472
    :cond_15dd
    if-nez v43, :cond_15f3

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLItemDataCheckbox"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_15f3

    .line 3473
    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    .line 3475
    :cond_15f3
    if-nez v44, :cond_1609

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLModeSwitchButton"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_1609

    .line 3476
    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    .line 3479
    :cond_1609
    const-string/jumbo v225, "mVisibility"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3480
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3482
    move-object/from16 v0, v58

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v225

    and-int/lit8 v225, v225, 0xc

    if-nez v225, :cond_165c

    .line 3484
    move-object/from16 v0, v188

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3485
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v93, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    :cond_165c
    add-int/lit8 v74, v74, -0x1

    goto/16 :goto_1571

    .line 3434
    .end local v74    # "i":I
    .end local v93    # "levelOfGL":I
    .end local v96    # "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v196    # "tempStackCutLine":I
    .end local v198    # "tempView":Ljava/lang/Object;
    :catch_1660
    move-exception v57

    .line 3435
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such field mClipRect "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14be

    .line 3436
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_167f
    move-exception v57

    .line 3437
    .local v57, "ex":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such field mClipRect "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14be

    .line 3515
    .end local v57    # "ex":Ljava/lang/SecurityException;
    .end local v132    # "mRootView":Ljava/lang/Object;
    :cond_169e
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "com.sec.android.gallery3d.ui.GLRootView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1722

    .line 3517
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mContentView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 3518
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3519
    move-object/from16 v0, v58

    move-object/from16 v1, v193

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    .line 3520
    .restart local v113    # "mContentView":Ljava/lang/Object;
    if-eqz v113, :cond_1705

    .line 3522
    const-string v225, "TDK"

    const-string v226, ">> In second test inside gallery 3D: "

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    move-object/from16 v0, v188

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3527
    :cond_1705
    if-nez v27, :cond_cb

    .line 3529
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3530
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_170b
    if-eqz v170, :cond_cb

    .line 3532
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_171d

    .line 3534
    move-object/from16 v27, v170

    .line 3535
    goto/16 :goto_cb

    .line 3537
    :cond_171d
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto :goto_170b

    .line 3542
    .end local v113    # "mContentView":Ljava/lang/Object;
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1722
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> Unknown class in GLSurfaceView: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1742
    .catch Ljava/lang/Exception; {:try_start_14be .. :try_end_1742} :catch_10a2
    .catchall {:try_start_14be .. :try_end_1742} :catchall_544

    goto/16 :goto_cb

    .line 3548
    .end local v193    # "tempObj":Ljava/lang/Object;
    :cond_1744
    :try_start_1744
    move-object/from16 v0, v51

    instance-of v0, v0, Landroid/view/View;

    move/from16 v225, v0

    if-nez v225, :cond_cb

    .line 3553
    if-eqz v30, :cond_1825

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1825

    .line 3554
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "instance of GlObject : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const-string v225, "getView"

    const/16 v226, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v51

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v119

    .line 3556
    .local v119, "mGlView":Ljava/lang/Object;
    if-eqz v119, :cond_181c

    .line 3557
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "got GlView: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v119 .. v119}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    move-object/from16 v0, v188

    move-object/from16 v1, v119

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3559
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v119 .. v119}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v119 .. v119}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    if-nez v32, :cond_17f9

    .line 3563
    invoke-virtual/range {v119 .. v119}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3564
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_17e9
    if-eqz v170, :cond_17f9

    .line 3566
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1817

    .line 3568
    move-object/from16 v32, v170

    .line 3574
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17f9
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "got classGlView: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 3571
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1817
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto :goto_17e9

    .line 3577
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_181c
    const-string v225, "TDK"

    const-string v226, "got GlView: mGlView is null"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 3582
    .end local v119    # "mGlView":Ljava/lang/Object;
    :cond_1825
    if-eqz v32, :cond_195b

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_195b

    .line 3583
    if-nez v31, :cond_1863

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlTextView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1863

    .line 3584
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    .line 3585
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Got ClassGlTextView : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_1863
    if-nez v29, :cond_1895

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GlImageView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1895

    .line 3588
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 3589
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Got classGlImageView : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_1895
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "instance of GlView : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    const-string v225, "getChildCount"

    const/16 v226, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v51

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 3594
    .local v22, "childCount":I
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Child Count :  "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    add-int/lit8 v74, v22, -0x1

    .restart local v74    # "i":I
    :goto_18ef
    if-ltz v74, :cond_cb

    .line 3596
    const-string v225, "getChild"

    const/16 v226, 0x1

    move/from16 v0, v226

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v226, v0

    const/16 v227, 0x0

    sget-object v228, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v228, v226, v227

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x1

    move/from16 v0, v226

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v226, v0

    const/16 v227, 0x0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v228

    aput-object v228, v226, v227

    move-object/from16 v0, v225

    move-object/from16 v1, v51

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 3597
    .local v21, "child":Ljava/lang/Object;
    move-object/from16 v0, v188

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3598
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    add-int/lit8 v74, v74, -0x1

    goto :goto_18ef

    .line 3601
    .end local v21    # "child":Ljava/lang/Object;
    .end local v22    # "childCount":I
    .end local v74    # "i":I
    :cond_195b
    if-eqz v27, :cond_20be

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_20be

    .line 3603
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "FilmStripView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1974
    .catch Ljava/lang/Exception; {:try_start_1744 .. :try_end_1974} :catch_360
    .catchall {:try_start_1744 .. :try_end_1974} :catchall_544

    move-result v225

    if-eqz v225, :cond_19e7

    .line 3605
    :try_start_1977
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mAlbumView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 3606
    .local v103, "mAlbumView":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v103

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3607
    move-object/from16 v0, v103

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 3608
    .local v11, "albumView":Ljava/lang/Object;
    if-eqz v11, :cond_cb

    .line 3609
    move-object/from16 v0, v188

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19c5
    .catch Ljava/lang/SecurityException; {:try_start_1977 .. :try_end_19c5} :catch_19c7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1977 .. :try_end_19c5} :catch_19d7
    .catch Ljava/lang/Exception; {:try_start_1977 .. :try_end_19c5} :catch_360
    .catchall {:try_start_1977 .. :try_end_19c5} :catchall_544

    goto/16 :goto_cb

    .line 3612
    .end local v11    # "albumView":Ljava/lang/Object;
    .end local v103    # "mAlbumView":Ljava/lang/reflect/Field;
    :catch_19c7
    move-exception v52

    .line 3613
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_19c8
    const-string v225, "TDK"

    const-string v226, "No field: mAlbumView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cb

    .line 3614
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_19d7
    move-exception v52

    .line 3615
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No field: mAlbumView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cb

    .line 3618
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_19e7
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "AlbumView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_1a07

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "AlbumSetView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1fd3

    .line 3623
    :cond_1a07
    if-nez v39, :cond_1a1d

    .line 3625
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v170

    .line 3626
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a0d
    if-eqz v170, :cond_1a1d

    .line 3628
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "SlotView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_1b0b

    .line 3630
    move-object/from16 v39, v170

    .line 3637
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a1d
    if-eqz v39, :cond_cb

    .line 3641
    new-instance v203, Ljava/util/HashMap;

    invoke-direct/range {v203 .. v203}, Ljava/util/HashMap;-><init>()V

    .line 3643
    .local v203, "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v225, "mItems"

    move-object/from16 v0, v39

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v125

    .line 3644
    .local v125, "mItems":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v125

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3645
    move-object/from16 v0, v125

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Ljava/util/HashMap;

    .line 3647
    .local v86, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual/range {v86 .. v86}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v56

    .line 3648
    .local v56, "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v56 .. v56}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v82

    .line 3649
    .local v82, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1a4a
    :goto_1a4a
    invoke-interface/range {v82 .. v82}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_1b25

    .line 3650
    invoke-interface/range {v82 .. v82}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    .line 3651
    .local v83, "itemEnty":Ljava/lang/Object;
    invoke-virtual/range {v83 .. v83}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v191

    .line 3652
    .local v191, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v191 .. v191}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .local v15, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v15

    move/from16 v90, v0

    .local v90, "len$":I
    const/16 v75, 0x0

    .local v75, "i$":I
    :goto_1a61
    move/from16 v0, v75

    move/from16 v1, v90

    if-ge v0, v1, :cond_1a4a

    aget-object v200, v15, v75

    .line 3653
    .local v200, "tfield":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v200

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3654
    move-object/from16 v0, v200

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v205

    .line 3657
    .local v205, "tobject":Ljava/lang/Object;
    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "LabelDisplayItem"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a87
    .catch Ljava/lang/Exception; {:try_start_19c8 .. :try_end_1a87} :catch_360
    .catchall {:try_start_19c8 .. :try_end_1a87} :catchall_544

    move-result v225

    if-eqz v225, :cond_1b21

    .line 3659
    :try_start_1a8a
    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTitle"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v139

    .line 3660
    .local v139, "mTitle":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v139

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3661
    move-object/from16 v0, v139

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Ljava/lang/String;

    .line 3663
    .local v202, "title":Ljava/lang/String;
    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mSlotIndex"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v136

    .line 3664
    .local v136, "mSlotIndex":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v136

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3665
    move-object/from16 v0, v136

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v79

    .line 3667
    .local v79, "index":I
    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "mCount"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v114

    .line 3668
    .local v114, "mCount":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v114

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3669
    move-object/from16 v0, v114

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 3673
    .local v49, "count":Ljava/lang/String;
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v225

    new-instance v226, Landroid/util/Pair;

    move-object/from16 v0, v226

    move-object/from16 v1, v202

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v203

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1af9
    .catch Ljava/lang/SecurityException; {:try_start_1a8a .. :try_end_1af9} :catch_1afb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a8a .. :try_end_1af9} :catch_1b11
    .catch Ljava/lang/Exception; {:try_start_1a8a .. :try_end_1af9} :catch_360
    .catchall {:try_start_1a8a .. :try_end_1af9} :catchall_544

    goto/16 :goto_1a4a

    .line 3674
    .end local v49    # "count":Ljava/lang/String;
    .end local v79    # "index":I
    .end local v114    # "mCount":Ljava/lang/reflect/Field;
    .end local v136    # "mSlotIndex":Ljava/lang/reflect/Field;
    .end local v139    # "mTitle":Ljava/lang/reflect/Field;
    .end local v202    # "title":Ljava/lang/String;
    :catch_1afb
    move-exception v52

    .line 3675
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_1afc
    const-string v225, "TDK"

    const-string v226, "No field: mTitle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a4a

    .line 3633
    .end local v15    # "arr$":[Ljava/lang/reflect/Field;
    .end local v52    # "e":Ljava/lang/SecurityException;
    .end local v56    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v75    # "i$":I
    .end local v82    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v83    # "itemEnty":Ljava/lang/Object;
    .end local v86    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v90    # "len$":I
    .end local v125    # "mItems":Ljava/lang/reflect/Field;
    .end local v191    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v200    # "tfield":Ljava/lang/reflect/Field;
    .end local v203    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v205    # "tobject":Ljava/lang/Object;
    .restart local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b0b
    invoke-virtual/range {v170 .. v170}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v170

    goto/16 :goto_1a0d

    .line 3676
    .end local v170    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v56    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v75    # "i$":I
    .restart local v82    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v83    # "itemEnty":Ljava/lang/Object;
    .restart local v86    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .restart local v90    # "len$":I
    .restart local v125    # "mItems":Ljava/lang/reflect/Field;
    .restart local v191    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v200    # "tfield":Ljava/lang/reflect/Field;
    .restart local v203    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v205    # "tobject":Ljava/lang/Object;
    :catch_1b11
    move-exception v52

    .line 3677
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No field: mTitle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b1f
    .catch Ljava/lang/Exception; {:try_start_1afc .. :try_end_1b1f} :catch_360
    .catchall {:try_start_1afc .. :try_end_1b1f} :catchall_544

    goto/16 :goto_1a4a

    .line 3652
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1b21
    add-int/lit8 v75, v75, 0x1

    goto/16 :goto_1a61

    .line 3686
    .end local v15    # "arr$":[Ljava/lang/reflect/Field;
    .end local v75    # "i$":I
    .end local v83    # "itemEnty":Ljava/lang/Object;
    .end local v90    # "len$":I
    .end local v191    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v200    # "tfield":Ljava/lang/reflect/Field;
    .end local v205    # "tobject":Ljava/lang/Object;
    :cond_1b25
    const/16 v185, 0x0

    .line 3687
    .local v185, "scrollX":I
    const/16 v186, 0x0

    .line 3690
    .local v186, "scrollY":I
    :try_start_1b29
    const-string/jumbo v225, "mScrollX"

    move-object/from16 v0, v27

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v134

    .line 3691
    .local v134, "mScrollX":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v134

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3692
    move-object/from16 v0, v134

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v185

    .line 3693
    const-string/jumbo v225, "mScrollY"

    move-object/from16 v0, v27

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v135

    .line 3694
    .local v135, "mScrollY":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v135

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3695
    move-object/from16 v0, v135

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1b60
    .catch Ljava/lang/SecurityException; {:try_start_1b29 .. :try_end_1b60} :catch_1f93
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b29 .. :try_end_1b60} :catch_1fa3
    .catch Ljava/lang/Exception; {:try_start_1b29 .. :try_end_1b60} :catch_360
    .catchall {:try_start_1b29 .. :try_end_1b60} :catchall_544

    move-result v186

    .line 3702
    .end local v134    # "mScrollX":Ljava/lang/reflect/Field;
    .end local v135    # "mScrollY":Ljava/lang/reflect/Field;
    :goto_1b61
    :try_start_1b61
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v227, "mScrollX/mScrollY: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move/from16 v1, v185

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ", "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move/from16 v1, v186

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8c
    .catch Ljava/lang/Exception; {:try_start_1b61 .. :try_end_1b8c} :catch_360
    .catchall {:try_start_1b61 .. :try_end_1b8c} :catchall_544

    .line 3706
    :try_start_1b8c
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getVisibleStart"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    .line 3707
    .local v68, "getVisibleStart":Ljava/lang/reflect/Method;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getVisibleEnd"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v67

    .line 3708
    .local v67, "getVisibleEnd":Ljava/lang/reflect/Method;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getSlotRect"

    const/16 v227, 0x1

    move/from16 v0, v227

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v227, v0

    const/16 v228, 0x0

    sget-object v229, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v229, v227, v228

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v65

    .line 3710
    .local v65, "getSlotRect":Ljava/lang/reflect/Method;
    const/16 v225, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v51

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v153

    .line 3711
    .local v153, "nStart":I
    const/16 v225, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v51

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v152

    .line 3713
    .local v152, "nEnd":I
    add-int/lit8 v74, v152, -0x1

    .restart local v74    # "i":I
    :goto_1be2
    move/from16 v0, v74

    move/from16 v1, v153

    if-lt v0, v1, :cond_cb

    .line 3714
    const/16 v225, 0x1

    move/from16 v0, v225

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v225, v0

    const/16 v226, 0x0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v227

    aput-object v227, v225, v226

    move-object/from16 v0, v65

    move-object/from16 v1, v51

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/graphics/Rect;

    .line 3715
    .local v180, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v225, v0

    sub-int v225, v225, v185

    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v226, v0

    sub-int v226, v226, v186

    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v227, v0

    sub-int v227, v227, v185

    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v228, v0

    sub-int v228, v228, v186

    move-object/from16 v0, v180

    move/from16 v1, v225

    move/from16 v2, v226

    move/from16 v3, v227

    move/from16 v4, v228

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3717
    new-instance v154, Ljava/lang/StringBuilder;

    invoke-direct/range {v154 .. v154}, Ljava/lang/StringBuilder;-><init>()V

    .line 3718
    .local v154, "newSlot":Ljava/lang/StringBuilder;
    const-string v197, "Slot"

    .line 3719
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->hashCode()I

    move-result v225

    add-int v225, v225, v74

    add-int/lit8 v225, v225, 0x1

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 3722
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    const-string/jumbo v197, "true"

    .line 3725
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3727
    const-string/jumbo v197, "true"

    .line 3728
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "pos_relative="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v223, v0

    .line 3731
    .local v223, "x":I
    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v224, v0

    .line 3732
    .local v224, "y":I
    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->width()I

    move-result v222

    .line 3733
    .local v222, "width":I
    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->height()I

    move-result v70

    .line 3735
    .local v70, "height":I
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3738
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3740
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v225

    move-object/from16 v0, v203

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_1eed

    .line 3741
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v225

    move-object/from16 v0, v203

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v169

    check-cast v169, Landroid/util/Pair;

    .line 3743
    .local v169, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v169

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v225, v0

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 3744
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3746
    move-object/from16 v0, v169

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v225, v0

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 3747
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    .end local v169    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1eed
    const-string/jumbo v197, "true"

    .line 3751
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "clickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3753
    const-string/jumbo v197, "true"

    .line 3754
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "touchable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v154

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3756
    invoke-virtual/range {v154 .. v154}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 3758
    move-object/from16 v0, v188

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3759
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v197 .. v197}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f8f
    .catch Ljava/lang/SecurityException; {:try_start_1b8c .. :try_end_1f8f} :catch_1fb3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b8c .. :try_end_1f8f} :catch_1fc3
    .catch Ljava/lang/Exception; {:try_start_1b8c .. :try_end_1f8f} :catch_360
    .catchall {:try_start_1b8c .. :try_end_1f8f} :catchall_544

    .line 3713
    add-int/lit8 v74, v74, -0x1

    goto/16 :goto_1be2

    .line 3696
    .end local v65    # "getSlotRect":Ljava/lang/reflect/Method;
    .end local v67    # "getVisibleEnd":Ljava/lang/reflect/Method;
    .end local v68    # "getVisibleStart":Ljava/lang/reflect/Method;
    .end local v70    # "height":I
    .end local v74    # "i":I
    .end local v152    # "nEnd":I
    .end local v153    # "nStart":I
    .end local v154    # "newSlot":Ljava/lang/StringBuilder;
    .end local v180    # "rect":Landroid/graphics/Rect;
    .end local v222    # "width":I
    .end local v223    # "x":I
    .end local v224    # "y":I
    :catch_1f93
    move-exception v52

    .line 3697
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_1f94
    const-string v225, "TDK"

    const-string v226, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b61

    .line 3698
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_1fa3
    move-exception v52

    .line 3699
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b61

    .line 3761
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1fb3
    move-exception v52

    .line 3762
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No field: mAlbumView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cb

    .line 3763
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_1fc3
    move-exception v52

    .line 3764
    .local v52, "e":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    const-string v226, "No field: mAlbumView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fd1
    .catch Ljava/lang/Exception; {:try_start_1f94 .. :try_end_1fd1} :catch_360
    .catchall {:try_start_1f94 .. :try_end_1fd1} :catchall_544

    goto/16 :goto_cb

    .line 3791
    .end local v52    # "e":Ljava/lang/NoSuchMethodException;
    .end local v56    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v82    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v86    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v125    # "mItems":Ljava/lang/reflect/Field;
    .end local v185    # "scrollX":I
    .end local v186    # "scrollY":I
    .end local v203    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1fd3
    :try_start_1fd3
    const-string v225, "mComponents"

    move-object/from16 v0, v27

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v112

    .line 3792
    .local v112, "mComponents":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v112

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3793
    move-object/from16 v0, v112

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Ljava/util/ArrayList;
    :try_end_1ff0
    .catch Ljava/lang/SecurityException; {:try_start_1fd3 .. :try_end_1ff0} :catch_2038
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1fd3 .. :try_end_1ff0} :catch_20ae
    .catch Ljava/lang/Exception; {:try_start_1fd3 .. :try_end_1ff0} :catch_360
    .catchall {:try_start_1fd3 .. :try_end_1ff0} :catchall_544

    .line 3794
    .local v94, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v94, :cond_cb

    .line 3796
    :try_start_1ff2
    const-string v225, "getVisibility"

    const/16 v226, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v66

    .line 3797
    .local v66, "getVisibility":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v66

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3799
    new-instance v182, Ljava/util/ArrayList;

    invoke-direct/range {v182 .. v182}, Ljava/util/ArrayList;-><init>()V

    .line 3800
    .local v182, "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual/range {v94 .. v94}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .local v75, "i$":Ljava/util/Iterator;
    :goto_2012
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_2048

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v156

    .line 3801
    .local v156, "obj":Ljava/lang/Object;
    const/16 v225, 0x0

    move-object/from16 v0, v182

    move/from16 v1, v225

    move-object/from16 v2, v156

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2027
    .catch Ljava/lang/SecurityException; {:try_start_1ff2 .. :try_end_2027} :catch_2028
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1ff2 .. :try_end_2027} :catch_209e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1ff2 .. :try_end_2027} :catch_20ae
    .catch Ljava/lang/Exception; {:try_start_1ff2 .. :try_end_2027} :catch_360
    .catchall {:try_start_1ff2 .. :try_end_2027} :catchall_544

    goto :goto_2012

    .line 3811
    .end local v66    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v156    # "obj":Ljava/lang/Object;
    .end local v182    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_2028
    move-exception v52

    .line 3812
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_2029
    const-string v225, "TDK"

    const-string v226, "No method: getVisibility"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2036
    .catch Ljava/lang/SecurityException; {:try_start_2029 .. :try_end_2036} :catch_2038
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2029 .. :try_end_2036} :catch_20ae
    .catch Ljava/lang/Exception; {:try_start_2029 .. :try_end_2036} :catch_360
    .catchall {:try_start_2029 .. :try_end_2036} :catchall_544

    goto/16 :goto_cb

    .line 3817
    .end local v52    # "e":Ljava/lang/SecurityException;
    .end local v94    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v112    # "mComponents":Ljava/lang/reflect/Field;
    :catch_2038
    move-exception v52

    .line 3818
    .restart local v52    # "e":Ljava/lang/SecurityException;
    :try_start_2039
    const-string v225, "TDK"

    const-string v226, "No field: mComponents"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2046
    .catch Ljava/lang/Exception; {:try_start_2039 .. :try_end_2046} :catch_360
    .catchall {:try_start_2039 .. :try_end_2046} :catchall_544

    goto/16 :goto_cb

    .line 3804
    .end local v52    # "e":Ljava/lang/SecurityException;
    .restart local v66    # "getVisibility":Ljava/lang/reflect/Method;
    .restart local v75    # "i$":Ljava/util/Iterator;
    .restart local v94    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v112    # "mComponents":Ljava/lang/reflect/Field;
    .restart local v182    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2048
    :try_start_2048
    invoke-virtual/range {v182 .. v182}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v75

    :cond_204c
    :goto_204c
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_cb

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v156

    .line 3805
    .restart local v156    # "obj":Ljava/lang/Object;
    const/16 v225, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v156

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v217

    .line 3806
    .local v217, "visibility":I
    if-nez v217, :cond_204c

    .line 3807
    move-object/from16 v0, v188

    move-object/from16 v1, v156

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v156 .. v156}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v156 .. v156}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    add-int/lit8 v226, v91, 0x1

    invoke-static/range {v226 .. v226}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_209d
    .catch Ljava/lang/SecurityException; {:try_start_2048 .. :try_end_209d} :catch_2028
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2048 .. :try_end_209d} :catch_209e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2048 .. :try_end_209d} :catch_20ae
    .catch Ljava/lang/Exception; {:try_start_2048 .. :try_end_209d} :catch_360
    .catchall {:try_start_2048 .. :try_end_209d} :catchall_544

    goto :goto_204c

    .line 3813
    .end local v66    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v156    # "obj":Ljava/lang/Object;
    .end local v182    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v217    # "visibility":I
    :catch_209e
    move-exception v52

    .line 3814
    .local v52, "e":Ljava/lang/NoSuchMethodException;
    :try_start_209f
    const-string v225, "TDK"

    const-string v226, "No method: getVisibility"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20ac
    .catch Ljava/lang/SecurityException; {:try_start_209f .. :try_end_20ac} :catch_2038
    .catch Ljava/lang/NoSuchFieldException; {:try_start_209f .. :try_end_20ac} :catch_20ae
    .catch Ljava/lang/Exception; {:try_start_209f .. :try_end_20ac} :catch_360
    .catchall {:try_start_209f .. :try_end_20ac} :catchall_544

    goto/16 :goto_cb

    .line 3819
    .end local v52    # "e":Ljava/lang/NoSuchMethodException;
    .end local v94    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v112    # "mComponents":Ljava/lang/reflect/Field;
    :catch_20ae
    move-exception v52

    .line 3820
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_20af
    const-string v225, "TDK"

    const-string v226, "No field: mComponents"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cb

    .line 3824
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_20be
    move-object/from16 v0, v51

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v225, v0

    if-nez v225, :cond_cb

    .line 3828
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "!!!!!!!!!! In while Unknown classes: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 3832
    .end local v51    # "currentView":Ljava/lang/Object;
    .end local v80    # "indexToRemove":I
    .end local v91    # "level":I
    :cond_20e8
    const-string v225, "TDK"

    const-string v226, ">> Start traversing the viewList!"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    const/16 v207, 0x0

    .line 3841
    .local v207, "unknownObject":Z
    const/16 v174, -0x1

    .line 3842
    .local v174, "preLevel":I
    const/16 v175, -0x1

    .line 3844
    .local v175, "previousLevel":I
    invoke-virtual/range {v213 .. v213}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v75

    .restart local v75    # "i$":Ljava/util/Iterator;
    :cond_20f9
    :goto_20f9
    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->hasNext()Z

    move-result v225

    if-eqz v225, :cond_4d35

    invoke-interface/range {v75 .. v75}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v163

    .line 3846
    .restart local v163    # "object":Ljava/lang/Object;
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v92

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v91

    .line 3849
    .restart local v91    # "level":I
    const/16 v225, 0x1

    move/from16 v0, v207

    move/from16 v1, v225

    if-ne v0, v1, :cond_2140

    .line 3851
    const/16 v207, 0x0

    .line 3852
    move/from16 v0, v91

    move/from16 v1, v174

    if-le v0, v1, :cond_2140

    .line 3854
    move/from16 v91, v174

    .line 3859
    :cond_2140
    move/from16 v0, v91

    move/from16 v1, v175

    if-le v0, v1, :cond_2152

    sub-int v225, v91, v175

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-le v0, v1, :cond_2152

    .line 3860
    add-int/lit8 v91, v175, 0x1

    .line 3863
    :cond_2152
    const/16 v74, 0x0

    .restart local v74    # "i":I
    :goto_2154
    move/from16 v0, v74

    move/from16 v1, v91

    if-ge v0, v1, :cond_2166

    .line 3865
    const/16 v225, 0x20

    move-object/from16 v0, v166

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3863
    add-int/lit8 v74, v74, 0x1

    goto :goto_2154

    .line 3867
    :cond_2166
    move/from16 v175, v91

    .line 3869
    if-nez v91, :cond_222f

    .line 3871
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v210

    .line 3874
    .local v210, "viewContext":Landroid/content/Context;
    invoke-virtual/range {v210 .. v210}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v197

    .line 3875
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "package="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    move-object/from16 v167, v197

    .line 3882
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 3883
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "activity="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3885
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v225

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 3886
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "screenon="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v133

    .line 3892
    .end local v210    # "viewContext":Landroid/content/Context;
    :cond_222f
    move-object/from16 v0, v163

    instance-of v0, v0, Landroid/view/View;

    move/from16 v225, v0

    if-eqz v225, :cond_2e52

    .line 3893
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (View) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 3896
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3898
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 3899
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3901
    move-object/from16 v0, v163

    check-cast v0, Landroid/view/View;

    move-object/from16 v209, v0

    .line 3903
    .local v209, "view":Landroid/view/View;
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getId()I

    move-result v77

    .line 3904
    .local v77, "id":I
    if-ltz v77, :cond_2364

    .line 3906
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    :try_end_22da
    .catch Ljava/lang/Exception; {:try_start_20af .. :try_end_22da} :catch_360
    .catchall {:try_start_20af .. :try_end_22da} :catchall_544

    move-result-object v195

    .line 3908
    :try_start_22db
    move-object/from16 v0, v195

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v197

    .line 3909
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_2332

    .line 3910
    :goto_22f5
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_2316

    .line 3911
    const/16 v225, 0xa

    const/16 v226, 0x3

    move-object/from16 v0, v197

    move/from16 v1, v225

    move/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v197

    goto :goto_22f5

    .line 3913
    :cond_2316
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    :cond_2332
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "id="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2364
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22db .. :try_end_2364} :catch_4d76
    .catch Ljava/lang/Exception; {:try_start_22db .. :try_end_2364} :catch_360
    .catchall {:try_start_22db .. :try_end_2364} :catchall_544

    .line 3923
    :cond_2364
    :goto_2364
    const/16 v225, 0x2

    :try_start_2366
    move/from16 v0, v225

    new-array v0, v0, [I

    move-object/from16 v101, v0

    .line 3924
    .local v101, "location":[I
    move-object/from16 v0, v209

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3925
    const/16 v225, 0x0

    aget v225, v101, v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 3926
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3927
    const/16 v225, 0x1

    aget v225, v101, v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 3928
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3931
    if-eqz v108, :cond_2ae7

    move/from16 v0, v108

    move/from16 v1, v133

    if-le v0, v1, :cond_2ae7

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "GLSurfaceView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v225

    if-eqz v225, :cond_2ae7

    .line 3932
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v225

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 3933
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3934
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v225

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 3935
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3950
    :goto_24a0
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v225

    if-eqz v225, :cond_251c

    .line 3952
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v225

    invoke-interface/range {v225 .. v225}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v197

    .line 3953
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_24ea

    .line 3954
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 3955
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> getContentDescription - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :cond_24ea
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "contentdesc="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_251c
    .catch Ljava/lang/Exception; {:try_start_2366 .. :try_end_251c} :catch_360
    .catchall {:try_start_2366 .. :try_end_251c} :catchall_544

    .line 3962
    :cond_251c
    const/16 v225, -0x1

    :try_start_251e
    move-object/from16 v0, v209

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v225

    if-nez v225, :cond_2534

    const/16 v225, 0x1

    move-object/from16 v0, v209

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v225

    if-eqz v225, :cond_256a

    .line 3964
    :cond_2534
    const-string/jumbo v197, "true"

    .line 3965
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "vertical_draggable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    :cond_256a
    const/16 v225, -0x1

    move-object/from16 v0, v209

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v225

    if-nez v225, :cond_2582

    const/16 v225, 0x1

    move-object/from16 v0, v209

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v225

    if-eqz v225, :cond_25b7

    .line 3970
    :cond_2582
    const-string/jumbo v197, "true"

    .line 3971
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "horizontal_draggable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25b7
    .catch Ljava/lang/Exception; {:try_start_251e .. :try_end_25b7} :catch_2b5e
    .catchall {:try_start_251e .. :try_end_25b7} :catchall_544

    .line 3977
    :cond_25b7
    :goto_25b7
    :try_start_25b7
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isEnabled()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_2b7d

    .line 3978
    const-string/jumbo v197, "true"

    .line 3979
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3987
    :goto_25f8
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isLongClickable()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_2639

    .line 3989
    const-string/jumbo v197, "true"

    .line 3990
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "longclickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    :cond_2639
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isClickable()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_267a

    .line 3995
    const-string/jumbo v197, "true"

    .line 3996
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "clickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    :cond_267a
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isEnabled()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_26d4

    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isLongClickable()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_269e

    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isClickable()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_26d4

    .line 4001
    :cond_269e
    const-string/jumbo v197, "true"

    .line 4002
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "touchable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    :cond_26d4
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isFocusable()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_2715

    .line 4007
    const-string/jumbo v197, "true"

    .line 4008
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hasfocus="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    :cond_2715
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->isSelected()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_2756

    .line 4013
    const-string/jumbo v197, "true"

    .line 4014
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "isselected="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4049
    :cond_2756
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v225, v0

    if-eqz v225, :cond_2793

    .line 4051
    const-string/jumbo v197, "true"

    .line 4052
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "adapter="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    :cond_2793
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v225, v0

    if-eqz v225, :cond_28cf

    .line 4062
    move-object/from16 v0, v209

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v198, v0

    .line 4063
    .local v198, "tempView":Landroid/widget/TextView;
    invoke-virtual/range {v198 .. v198}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v225

    invoke-interface/range {v225 .. v225}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4064
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_27e5

    .line 4065
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4066
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :cond_27e5
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> textview - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    invoke-virtual/range {v198 .. v198}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v225

    if-eqz v225, :cond_286f

    .line 4073
    const-string/jumbo v197, "true"

    .line 4074
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "editable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4077
    :cond_286f
    invoke-virtual/range {v198 .. v198}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_2872
    .catch Ljava/lang/Exception; {:try_start_25b7 .. :try_end_2872} :catch_360
    .catchall {:try_start_25b7 .. :try_end_2872} :catchall_544

    move-result-object v225

    if-eqz v225, :cond_28cf

    .line 4080
    :try_start_2875
    const-class v225, Landroid/widget/TextView;

    const-string/jumbo v226, "mResource"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4081
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4082
    move-object/from16 v0, v58

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_288e
    .catch Ljava/lang/SecurityException; {:try_start_2875 .. :try_end_288e} :catch_2bc3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2875 .. :try_end_288e} :catch_2c39
    .catch Ljava/lang/Exception; {:try_start_2875 .. :try_end_288e} :catch_360
    .catchall {:try_start_2875 .. :try_end_288e} :catchall_544

    move-result v181

    .line 4083
    .local v181, "resource":I
    if-eqz v181, :cond_2bd3

    .line 4086
    :try_start_2891
    invoke-virtual/range {v198 .. v198}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v197

    .line 4087
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "background="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28cf
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2891 .. :try_end_28cf} :catch_2bb3
    .catch Ljava/lang/SecurityException; {:try_start_2891 .. :try_end_28cf} :catch_2bc3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2891 .. :try_end_28cf} :catch_2c39
    .catch Ljava/lang/Exception; {:try_start_2891 .. :try_end_28cf} :catch_360
    .catchall {:try_start_2891 .. :try_end_28cf} :catchall_544

    .line 4130
    .end local v181    # "resource":I
    .end local v198    # "tempView":Landroid/widget/TextView;
    :cond_28cf
    :goto_28cf
    :try_start_28cf
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v225, v0

    if-eqz v225, :cond_291e

    .line 4132
    move-object/from16 v0, v209

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v20, v0

    .line 4133
    .local v20, "checkable":Landroid/widget/Checkable;
    invoke-interface/range {v20 .. v20}, Landroid/widget/Checkable;->isChecked()Z

    move-result v225

    const/16 v226, 0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-ne v0, v1, :cond_2cc5

    .line 4134
    const-string/jumbo v197, "true"

    .line 4138
    :goto_28ec
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "checked="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    .end local v20    # "checkable":Landroid/widget/Checkable;
    :cond_291e
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v225, v0

    if-eqz v225, :cond_2a18

    .line 4143
    const-string/jumbo v197, "true"

    .line 4144
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "progressbar="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4146
    move-object/from16 v0, v209

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v177, v0

    .line 4147
    .local v177, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v177 .. v177}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v225

    if-nez v225, :cond_2d09

    .line 4149
    invoke-virtual/range {v177 .. v177}, Landroid/widget/ProgressBar;->getMax()I
    :try_end_296b
    .catch Ljava/lang/Exception; {:try_start_28cf .. :try_end_296b} :catch_360
    .catchall {:try_start_28cf .. :try_end_296b} :catchall_544

    move-result v147

    .line 4150
    .local v147, "max":I
    if-eqz v147, :cond_2a18

    .line 4156
    :try_start_296e
    const-class v225, Landroid/widget/ProgressBar;

    const-string/jumbo v226, "mProgress"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4157
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4158
    move-object/from16 v0, v58

    move-object/from16 v1, v177

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v176

    .line 4159
    .local v176, "progress":I
    mul-int/lit8 v225, v176, 0x64

    div-int v225, v225, v147

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 4160
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "progress="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29c3
    .catch Ljava/lang/SecurityException; {:try_start_296e .. :try_end_29c3} :catch_2cc9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_296e .. :try_end_29c3} :catch_2cd9
    .catch Ljava/lang/Exception; {:try_start_296e .. :try_end_29c3} :catch_360
    .catchall {:try_start_296e .. :try_end_29c3} :catchall_544

    .line 4168
    .end local v176    # "progress":I
    :goto_29c3
    :try_start_29c3
    const-class v225, Landroid/widget/ProgressBar;

    const-string/jumbo v226, "mSecondaryProgress"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4169
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4170
    move-object/from16 v0, v58

    move-object/from16 v1, v177

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v176

    .line 4171
    .restart local v176    # "progress":I
    mul-int/lit8 v225, v176, 0x64

    div-int v225, v225, v147

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 4172
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "progress2="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a18
    .catch Ljava/lang/SecurityException; {:try_start_29c3 .. :try_end_2a18} :catch_2ce9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29c3 .. :try_end_2a18} :catch_2cf9
    .catch Ljava/lang/Exception; {:try_start_29c3 .. :try_end_2a18} :catch_360
    .catchall {:try_start_29c3 .. :try_end_2a18} :catchall_544

    .line 4187
    .end local v147    # "max":I
    .end local v176    # "progress":I
    .end local v177    # "progressBar":Landroid/widget/ProgressBar;
    :cond_2a18
    :goto_2a18
    :try_start_2a18
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v225, v0

    if-eqz v225, :cond_2a80

    .line 4189
    move-object/from16 v0, v209

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v78, v0
    :try_end_2a26
    .catch Ljava/lang/Exception; {:try_start_2a18 .. :try_end_2a26} :catch_360
    .catchall {:try_start_2a18 .. :try_end_2a26} :catchall_544

    .line 4191
    .local v78, "imageView":Landroid/widget/ImageView;
    :try_start_2a26
    const-class v225, Landroid/widget/ImageView;

    const-string/jumbo v226, "mResource"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4192
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4193
    move-object/from16 v0, v58

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2a3f
    .catch Ljava/lang/SecurityException; {:try_start_2a26 .. :try_end_2a3f} :catch_2d50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a26 .. :try_end_2a3f} :catch_2dc6
    .catch Ljava/lang/Exception; {:try_start_2a26 .. :try_end_2a3f} :catch_360
    .catchall {:try_start_2a26 .. :try_end_2a3f} :catchall_544

    move-result v181

    .line 4194
    .restart local v181    # "resource":I
    if-eqz v181, :cond_2d60

    .line 4197
    :try_start_2a42
    invoke-virtual/range {v78 .. v78}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v197

    .line 4198
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a80
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a42 .. :try_end_2a80} :catch_2d40
    .catch Ljava/lang/SecurityException; {:try_start_2a42 .. :try_end_2a80} :catch_2d50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a42 .. :try_end_2a80} :catch_2dc6
    .catch Ljava/lang/Exception; {:try_start_2a42 .. :try_end_2a80} :catch_360
    .catchall {:try_start_2a42 .. :try_end_2a80} :catchall_544

    .line 4240
    .end local v78    # "imageView":Landroid/widget/ImageView;
    .end local v181    # "resource":I
    :cond_2a80
    :goto_2a80
    :try_start_2a80
    move-object/from16 v0, v209

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v225, v0

    if-eqz v225, :cond_2adc

    .line 4242
    move-object/from16 v0, v209

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v53, v0

    .line 4243
    .local v53, "editText":Landroid/widget/EditText;
    invoke-virtual/range {v53 .. v53}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v225

    if-eqz v225, :cond_2ad5

    .line 4244
    const-string v225, "TDK"

    const-string v226, "editText: editText1"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    invoke-virtual/range {v53 .. v53}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v225

    invoke-interface/range {v225 .. v225}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4246
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hint="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    :cond_2ad5
    const-string v225, "TDK"

    const-string v226, "editText: editText2"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    .end local v53    # "editText":Landroid/widget/EditText;
    .end local v77    # "id":I
    .end local v101    # "location":[I
    .end local v163    # "object":Ljava/lang/Object;
    .end local v209    # "view":Landroid/view/View;
    :cond_2adc
    :goto_2adc
    const/16 v225, 0xa

    move-object/from16 v0, v166

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_20f9

    .line 3938
    .restart local v77    # "id":I
    .restart local v101    # "location":[I
    .restart local v163    # "object":Ljava/lang/Object;
    .restart local v209    # "view":Landroid/view/View;
    :cond_2ae7
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getWidth()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 3939
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    invoke-virtual/range {v209 .. v209}, Landroid/view/View;->getHeight()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v197

    .line 3942
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24a0

    .line 3973
    :catch_2b5e
    move-exception v57

    .line 3974
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Failed to get scrolling information: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25b7

    .line 3983
    .end local v57    # "ex":Ljava/lang/Exception;
    :cond_2b7d
    const-string v197, "false"

    .line 3984
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2bb1
    .catch Ljava/lang/Exception; {:try_start_2a80 .. :try_end_2bb1} :catch_360
    .catchall {:try_start_2a80 .. :try_end_2bb1} :catchall_544

    goto/16 :goto_25f8

    .line 4088
    .restart local v181    # "resource":I
    .restart local v198    # "tempView":Landroid/widget/TextView;
    :catch_2bb3
    move-exception v52

    .line 4089
    .local v52, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2bb4
    const-string v225, "TDK"

    const-string v226, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2bc1
    .catch Ljava/lang/SecurityException; {:try_start_2bb4 .. :try_end_2bc1} :catch_2bc3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2bb4 .. :try_end_2bc1} :catch_2c39
    .catch Ljava/lang/Exception; {:try_start_2bb4 .. :try_end_2bc1} :catch_360
    .catchall {:try_start_2bb4 .. :try_end_2bc1} :catchall_544

    goto/16 :goto_28cf

    .line 4122
    .end local v52    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v181    # "resource":I
    :catch_2bc3
    move-exception v52

    .line 4123
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_2bc4
    const-string v225, "TDK"

    const-string v226, "No mResource for entry of ImageView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2bd1
    .catch Ljava/lang/Exception; {:try_start_2bc4 .. :try_end_2bd1} :catch_360
    .catchall {:try_start_2bc4 .. :try_end_2bd1} :catchall_544

    goto/16 :goto_28cf

    .line 4094
    .end local v52    # "e":Ljava/lang/SecurityException;
    .restart local v181    # "resource":I
    :cond_2bd3
    :try_start_2bd3
    const-class v225, Landroid/widget/ImageView;

    const-string/jumbo v226, "mUri"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4095
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4096
    move-object/from16 v0, v58

    move-object/from16 v1, v198

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/net/Uri;

    .line 4097
    .local v208, "uri":Landroid/net/Uri;
    if-eqz v208, :cond_28cf

    .line 4099
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v183

    .line 4100
    .local v183, "scheme":Ljava/lang/String;
    const-string v225, "android.resource"

    move-object/from16 v0, v225

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_2c49

    .line 4106
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4107
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "background="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c37
    .catch Ljava/lang/SecurityException; {:try_start_2bd3 .. :try_end_2c37} :catch_2bc3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2bd3 .. :try_end_2c37} :catch_2c39
    .catch Ljava/lang/Exception; {:try_start_2bd3 .. :try_end_2c37} :catch_360
    .catchall {:try_start_2bd3 .. :try_end_2c37} :catchall_544

    goto/16 :goto_28cf

    .line 4124
    .end local v181    # "resource":I
    .end local v183    # "scheme":Ljava/lang/String;
    .end local v208    # "uri":Landroid/net/Uri;
    :catch_2c39
    move-exception v52

    .line 4125
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2c3a
    const-string v225, "TDK"

    const-string v226, "No mResource for entry of ImageView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c47
    .catch Ljava/lang/Exception; {:try_start_2c3a .. :try_end_2c47} :catch_360
    .catchall {:try_start_2c3a .. :try_end_2c47} :catchall_544

    goto/16 :goto_28cf

    .line 4108
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v181    # "resource":I
    .restart local v183    # "scheme":Ljava/lang/String;
    .restart local v208    # "uri":Landroid/net/Uri;
    :cond_2c49
    :try_start_2c49
    const-string v225, "content"

    move-object/from16 v0, v225

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_2c8d

    .line 4114
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4115
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "background="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_28cf

    .line 4117
    :cond_2c8d
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4118
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "background="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2cc3
    .catch Ljava/lang/SecurityException; {:try_start_2c49 .. :try_end_2cc3} :catch_2bc3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2c49 .. :try_end_2cc3} :catch_2c39
    .catch Ljava/lang/Exception; {:try_start_2c49 .. :try_end_2cc3} :catch_360
    .catchall {:try_start_2c49 .. :try_end_2cc3} :catchall_544

    goto/16 :goto_28cf

    .line 4136
    .end local v181    # "resource":I
    .end local v183    # "scheme":Ljava/lang/String;
    .end local v198    # "tempView":Landroid/widget/TextView;
    .end local v208    # "uri":Landroid/net/Uri;
    .restart local v20    # "checkable":Landroid/widget/Checkable;
    :cond_2cc5
    :try_start_2cc5
    const-string v197, "false"

    goto/16 :goto_28ec

    .line 4161
    .end local v20    # "checkable":Landroid/widget/Checkable;
    .restart local v147    # "max":I
    .restart local v177    # "progressBar":Landroid/widget/ProgressBar;
    :catch_2cc9
    move-exception v52

    .line 4162
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29c3

    .line 4163
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_2cd9
    move-exception v52

    .line 4164
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29c3

    .line 4173
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2ce9
    move-exception v52

    .line 4174
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a18

    .line 4175
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_2cf9
    move-exception v52

    .line 4176
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a18

    .line 4182
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .end local v147    # "max":I
    :cond_2d09
    const-string/jumbo v197, "true"

    .line 4183
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "indeterminate="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d3e
    .catch Ljava/lang/Exception; {:try_start_2cc5 .. :try_end_2d3e} :catch_360
    .catchall {:try_start_2cc5 .. :try_end_2d3e} :catchall_544

    goto/16 :goto_2a18

    .line 4199
    .end local v177    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v78    # "imageView":Landroid/widget/ImageView;
    .restart local v181    # "resource":I
    :catch_2d40
    move-exception v52

    .line 4200
    .local v52, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2d41
    const-string v225, "TDK"

    const-string v226, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d4e
    .catch Ljava/lang/SecurityException; {:try_start_2d41 .. :try_end_2d4e} :catch_2d50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d41 .. :try_end_2d4e} :catch_2dc6
    .catch Ljava/lang/Exception; {:try_start_2d41 .. :try_end_2d4e} :catch_360
    .catchall {:try_start_2d41 .. :try_end_2d4e} :catchall_544

    goto/16 :goto_2a80

    .line 4233
    .end local v52    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v181    # "resource":I
    :catch_2d50
    move-exception v52

    .line 4234
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_2d51
    const-string v225, "TDK"

    const-string v226, "No mResource for entry of ImageView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d5e
    .catch Ljava/lang/Exception; {:try_start_2d51 .. :try_end_2d5e} :catch_360
    .catchall {:try_start_2d51 .. :try_end_2d5e} :catchall_544

    goto/16 :goto_2a80

    .line 4205
    .end local v52    # "e":Ljava/lang/SecurityException;
    .restart local v181    # "resource":I
    :cond_2d60
    :try_start_2d60
    const-class v225, Landroid/widget/ImageView;

    const-string/jumbo v226, "mUri"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4206
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4207
    move-object/from16 v0, v58

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    check-cast v208, Landroid/net/Uri;

    .line 4208
    .restart local v208    # "uri":Landroid/net/Uri;
    if-eqz v208, :cond_2a80

    .line 4210
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v183

    .line 4211
    .restart local v183    # "scheme":Ljava/lang/String;
    const-string v225, "android.resource"

    move-object/from16 v0, v225

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_2dd6

    .line 4217
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4218
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2dc4
    .catch Ljava/lang/SecurityException; {:try_start_2d60 .. :try_end_2dc4} :catch_2d50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d60 .. :try_end_2dc4} :catch_2dc6
    .catch Ljava/lang/Exception; {:try_start_2d60 .. :try_end_2dc4} :catch_360
    .catchall {:try_start_2d60 .. :try_end_2dc4} :catchall_544

    goto/16 :goto_2a80

    .line 4235
    .end local v181    # "resource":I
    .end local v183    # "scheme":Ljava/lang/String;
    .end local v208    # "uri":Landroid/net/Uri;
    :catch_2dc6
    move-exception v52

    .line 4236
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2dc7
    const-string v225, "TDK"

    const-string v226, "No mResource for entry of ImageView"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2dd4
    .catch Ljava/lang/Exception; {:try_start_2dc7 .. :try_end_2dd4} :catch_360
    .catchall {:try_start_2dc7 .. :try_end_2dd4} :catchall_544

    goto/16 :goto_2a80

    .line 4219
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v181    # "resource":I
    .restart local v183    # "scheme":Ljava/lang/String;
    .restart local v208    # "uri":Landroid/net/Uri;
    :cond_2dd6
    :try_start_2dd6
    const-string v225, "content"

    move-object/from16 v0, v225

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_2e1a

    .line 4225
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4226
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2a80

    .line 4228
    :cond_2e1a
    invoke-virtual/range {v208 .. v208}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4229
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e50
    .catch Ljava/lang/SecurityException; {:try_start_2dd6 .. :try_end_2e50} :catch_2d50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2dd6 .. :try_end_2e50} :catch_2dc6
    .catch Ljava/lang/Exception; {:try_start_2dd6 .. :try_end_2e50} :catch_360
    .catchall {:try_start_2dd6 .. :try_end_2e50} :catchall_544

    goto/16 :goto_2a80

    .line 4253
    .end local v77    # "id":I
    .end local v78    # "imageView":Landroid/widget/ImageView;
    .end local v101    # "location":[I
    .end local v181    # "resource":I
    .end local v183    # "scheme":Ljava/lang/String;
    .end local v208    # "uri":Landroid/net/Uri;
    .end local v209    # "view":Landroid/view/View;
    :cond_2e52
    if-eqz v37, :cond_35f6

    :try_start_2e54
    move-object/from16 v0, v37

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_35f6

    .line 4254
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (NativeViewBase) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 4257
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 4260
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2ef2
    .catch Ljava/lang/Exception; {:try_start_2e54 .. :try_end_2ef2} :catch_360
    .catchall {:try_start_2e54 .. :try_end_2ef2} :catchall_544

    .line 4264
    :try_start_2ef2
    const-string v225, "getScreenBoundingRect"

    const/16 v226, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/graphics/Rect;

    .line 4267
    .restart local v180    # "rect":Landroid/graphics/Rect;
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4268
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4270
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4271
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4273
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->width()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4274
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4276
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->height()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4277
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3039
    .catch Ljava/lang/Exception; {:try_start_2ef2 .. :try_end_3039} :catch_31dd
    .catchall {:try_start_2ef2 .. :try_end_3039} :catchall_544

    .line 4284
    .end local v180    # "rect":Landroid/graphics/Rect;
    :goto_3039
    const/16 v48, 0x0

    .line 4286
    .local v48, "clickable":Z
    :try_start_303b
    const-string v225, "isClickable"

    const/16 v226, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    .line 4287
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v197

    .line 4288
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "clickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3091
    .catch Ljava/lang/NoSuchMethodException; {:try_start_303b .. :try_end_3091} :catch_31fc
    .catch Ljava/lang/Exception; {:try_start_303b .. :try_end_3091} :catch_321b
    .catchall {:try_start_303b .. :try_end_3091} :catchall_544

    .line 4296
    :goto_3091
    const/16 v55, 0x0

    .line 4298
    .local v55, "enabled":Z
    :try_start_3093
    const-string v225, "isEnabled"

    const/16 v226, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Boolean;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v55

    .line 4299
    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v197

    .line 4300
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30e9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3093 .. :try_end_30e9} :catch_323a
    .catch Ljava/lang/Exception; {:try_start_3093 .. :try_end_30e9} :catch_3259
    .catchall {:try_start_3093 .. :try_end_30e9} :catchall_544

    .line 4308
    :goto_30e9
    const/16 v149, 0x0

    .line 4310
    .local v149, "mlongclickable":Z
    :try_start_30eb
    const-string/jumbo v225, "mLongClickable"

    move-object/from16 v0, v37

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v127

    .line 4311
    .local v127, "mLongClickable":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v127

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4312
    move-object/from16 v0, v127

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v149

    .line 4313
    invoke-static/range {v149 .. v149}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v197

    .line 4314
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "longclickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_313d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_30eb .. :try_end_313d} :catch_3278
    .catch Ljava/lang/Exception; {:try_start_30eb .. :try_end_313d} :catch_3297
    .catchall {:try_start_30eb .. :try_end_313d} :catchall_544

    .line 4321
    .end local v127    # "mLongClickable":Ljava/lang/reflect/Field;
    :goto_313d
    if-eqz v55, :cond_3179

    if-nez v48, :cond_3143

    if-eqz v149, :cond_3179

    .line 4322
    :cond_3143
    :try_start_3143
    const-string/jumbo v197, "true"

    .line 4323
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "touchable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4327
    :cond_3179
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeItemView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3186
    .catch Ljava/lang/Exception; {:try_start_3143 .. :try_end_3186} :catch_360
    .catchall {:try_start_3143 .. :try_end_3186} :catchall_544

    move-result v225

    if-eqz v225, :cond_3379

    .line 4330
    :try_start_3189
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTitle"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v151

    .line 4331
    .local v151, "mtitle":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v151

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4332
    move-object/from16 v0, v151

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    .line 4333
    .local v199, "textView":Ljava/lang/Object;
    if-eqz v81, :cond_32ec

    .line 4334
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v148

    .line 4335
    .local v148, "methods":[Ljava/lang/reflect/Method;
    const/16 v74, 0x0

    :goto_31b1
    move-object/from16 v0, v148

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_32b6

    .line 4336
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> txt methods - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v148, v74

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31da
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3189 .. :try_end_31da} :catch_3496
    .catch Ljava/lang/Exception; {:try_start_3189 .. :try_end_31da} :catch_34b5
    .catchall {:try_start_3189 .. :try_end_31da} :catchall_544

    .line 4335
    add-int/lit8 v74, v74, 0x1

    goto :goto_31b1

    .line 4279
    .end local v48    # "clickable":Z
    .end local v55    # "enabled":Z
    .end local v148    # "methods":[Ljava/lang/reflect/Method;
    .end local v149    # "mlongclickable":Z
    .end local v151    # "mtitle":Ljava/lang/reflect/Field;
    .end local v199    # "textView":Ljava/lang/Object;
    :catch_31dd
    move-exception v52

    .line 4280
    .local v52, "e":Ljava/lang/Exception;
    :try_start_31de
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, " Exception while getting screen bound : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3039

    .line 4289
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v48    # "clickable":Z
    :catch_31fc
    move-exception v57

    .line 4290
    .local v57, "ex":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such method Exception while getting clickable for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3091

    .line 4291
    .end local v57    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_321b
    move-exception v57

    .line 4292
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting clickable for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3091

    .line 4301
    .end local v57    # "ex":Ljava/lang/Exception;
    .restart local v55    # "enabled":Z
    :catch_323a
    move-exception v57

    .line 4302
    .local v57, "ex":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such method Exception while getting isEnabled for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30e9

    .line 4303
    .end local v57    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3259
    move-exception v57

    .line 4304
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting isEnabled for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30e9

    .line 4315
    .end local v57    # "ex":Ljava/lang/Exception;
    .restart local v149    # "mlongclickable":Z
    :catch_3278
    move-exception v57

    .line 4316
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such field Exception while getting long clickable for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_313d

    .line 4317
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_3297
    move-exception v57

    .line 4318
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting clickable for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32b4
    .catch Ljava/lang/Exception; {:try_start_31de .. :try_end_32b4} :catch_360
    .catchall {:try_start_31de .. :try_end_32b4} :catchall_544

    goto/16 :goto_313d

    .line 4338
    .end local v57    # "ex":Ljava/lang/Exception;
    .restart local v148    # "methods":[Ljava/lang/reflect/Method;
    .restart local v151    # "mtitle":Ljava/lang/reflect/Field;
    .restart local v199    # "textView":Ljava/lang/Object;
    :cond_32b6
    :try_start_32b6
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v148

    .line 4339
    const/16 v74, 0x0

    :goto_32c0
    move-object/from16 v0, v148

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_32ec

    .line 4340
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> private txt methods - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v148, v74

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    add-int/lit8 v74, v74, 0x1

    goto :goto_32c0

    .line 4344
    .end local v148    # "methods":[Ljava/lang/reflect/Method;
    :cond_32ec
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getText"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v199

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4345
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_3346

    .line 4346
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4347
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :cond_3346
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3379
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32b6 .. :try_end_3379} :catch_3496
    .catch Ljava/lang/Exception; {:try_start_32b6 .. :try_end_3379} :catch_34b5
    .catchall {:try_start_32b6 .. :try_end_3379} :catchall_544

    .line 4359
    .end local v151    # "mtitle":Ljava/lang/reflect/Field;
    .end local v199    # "textView":Ljava/lang/Object;
    :cond_3379
    :goto_3379
    :try_start_3379
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "TextView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3386
    .catch Ljava/lang/Exception; {:try_start_3379 .. :try_end_3386} :catch_360
    .catchall {:try_start_3379 .. :try_end_3386} :catchall_544

    move-result v225

    if-eqz v225, :cond_3432

    .line 4363
    :try_start_3389
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getText"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v163

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4364
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Get FolderViewtitle: "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_33ff

    .line 4366
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4367
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    :cond_33ff
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3432
    .catch Ljava/lang/Exception; {:try_start_3389 .. :try_end_3432} :catch_34d4
    .catchall {:try_start_3389 .. :try_end_3432} :catchall_544

    .line 4376
    :cond_3432
    :goto_3432
    :try_start_3432
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v225

    const-string v226, "HomeFolderView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_343f
    .catch Ljava/lang/Exception; {:try_start_3432 .. :try_end_343f} :catch_360
    .catchall {:try_start_3432 .. :try_end_343f} :catchall_544

    move-result v225

    if-eqz v225, :cond_2adc

    .line 4379
    :try_start_3442
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTitleView"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v151

    .line 4380
    .restart local v151    # "mtitle":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v151

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4381
    move-object/from16 v0, v151

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    .line 4382
    .restart local v199    # "textView":Ljava/lang/Object;
    if-eqz v81, :cond_3529

    .line 4383
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v148

    .line 4384
    .restart local v148    # "methods":[Ljava/lang/reflect/Method;
    const/16 v74, 0x0

    :goto_346a
    move-object/from16 v0, v148

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_34f3

    .line 4385
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> txt methods - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v148, v74

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3493
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3442 .. :try_end_3493} :catch_35b8
    .catch Ljava/lang/Exception; {:try_start_3442 .. :try_end_3493} :catch_35d7
    .catchall {:try_start_3442 .. :try_end_3493} :catchall_544

    .line 4384
    add-int/lit8 v74, v74, 0x1

    goto :goto_346a

    .line 4351
    .end local v148    # "methods":[Ljava/lang/reflect/Method;
    .end local v151    # "mtitle":Ljava/lang/reflect/Field;
    .end local v199    # "textView":Ljava/lang/Object;
    :catch_3496
    move-exception v57

    .line 4352
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_3497
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such method Exception while getting title for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3379

    .line 4353
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_34b5
    move-exception v57

    .line 4354
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting title for homeitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3379

    .line 4370
    .end local v57    # "ex":Ljava/lang/Exception;
    :catch_34d4
    move-exception v52

    .line 4371
    .restart local v52    # "e":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting title for openFolderView : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34f1
    .catch Ljava/lang/Exception; {:try_start_3497 .. :try_end_34f1} :catch_360
    .catchall {:try_start_3497 .. :try_end_34f1} :catchall_544

    goto/16 :goto_3432

    .line 4387
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v148    # "methods":[Ljava/lang/reflect/Method;
    .restart local v151    # "mtitle":Ljava/lang/reflect/Field;
    .restart local v199    # "textView":Ljava/lang/Object;
    :cond_34f3
    :try_start_34f3
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v148

    .line 4388
    const/16 v74, 0x0

    :goto_34fd
    move-object/from16 v0, v148

    array-length v0, v0

    move/from16 v225, v0

    move/from16 v0, v74

    move/from16 v1, v225

    if-ge v0, v1, :cond_3529

    .line 4389
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> private txt methods - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    aget-object v227, v148, v74

    invoke-virtual/range {v227 .. v227}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    add-int/lit8 v74, v74, 0x1

    goto :goto_34fd

    .line 4393
    .end local v148    # "methods":[Ljava/lang/reflect/Method;
    :cond_3529
    invoke-virtual/range {v199 .. v199}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string v226, "getText"

    const/16 v227, 0x0

    invoke-virtual/range {v225 .. v227}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v199

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4394
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_3583

    .line 4395
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4396
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    :cond_3583
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35b6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_34f3 .. :try_end_35b6} :catch_35b8
    .catch Ljava/lang/Exception; {:try_start_34f3 .. :try_end_35b6} :catch_35d7
    .catchall {:try_start_34f3 .. :try_end_35b6} :catchall_544

    goto/16 :goto_2adc

    .line 4400
    .end local v151    # "mtitle":Ljava/lang/reflect/Field;
    .end local v199    # "textView":Ljava/lang/Object;
    :catch_35b8
    move-exception v57

    .line 4401
    .local v57, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_35b9
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "No such method Exception while getting title for homefolderitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2adc

    .line 4402
    .end local v57    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_35d7
    move-exception v57

    .line 4403
    .local v57, "ex":Ljava/lang/Exception;
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "Exception while getting title for homefolderitem : "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2adc

    .line 4409
    .end local v48    # "clickable":Z
    .end local v55    # "enabled":Z
    .end local v57    # "ex":Ljava/lang/Exception;
    .end local v149    # "mlongclickable":Z
    :cond_35f6
    if-eqz v46, :cond_40b3

    move-object/from16 v0, v46

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_40b3

    .line 4410
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (TwGLView) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    move-object/from16 v61, v163

    .line 4414
    .local v61, "gLView":Ljava/lang/Object;
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 4415
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4417
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 4418
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3698
    .catch Ljava/lang/Exception; {:try_start_35b9 .. :try_end_3698} :catch_360
    .catchall {:try_start_35b9 .. :try_end_3698} :catchall_544

    .line 4421
    const/16 v54, 0x0

    .line 4430
    .local v54, "enable":Z
    :try_start_369a
    const-string/jumbo v225, "mOnClickListener"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_36a4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_369a .. :try_end_36a4} :catch_3be2
    .catch Ljava/lang/SecurityException; {:try_start_369a .. :try_end_36a4} :catch_3bf6
    .catch Ljava/lang/Exception; {:try_start_369a .. :try_end_36a4} :catch_360
    .catchall {:try_start_369a .. :try_end_36a4} :catchall_544

    move-result-object v58

    .line 4437
    :goto_36a5
    const/16 v225, 0x1

    :try_start_36a7
    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4438
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    if-eqz v225, :cond_3759

    .line 4439
    const/16 v54, 0x1

    .line 4440
    const-string/jumbo v197, "true"

    .line 4441
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "clickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4442
    const-string v197, "false"

    .line 4443
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "longclickable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    const-string/jumbo v197, "true"

    .line 4445
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "touchable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3759
    .catch Ljava/lang/SecurityException; {:try_start_36a7 .. :try_end_3759} :catch_3bf6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36a7 .. :try_end_3759} :catch_3c06
    .catch Ljava/lang/Exception; {:try_start_36a7 .. :try_end_3759} :catch_360
    .catchall {:try_start_36a7 .. :try_end_3759} :catchall_544

    .line 4452
    :cond_3759
    :goto_3759
    const/16 v225, 0x1

    move/from16 v0, v54

    move/from16 v1, v225

    if-ne v0, v1, :cond_3c16

    :try_start_3761
    const-string/jumbo v197, "true"

    .line 4453
    :goto_3764
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3796
    .catch Ljava/lang/Exception; {:try_start_3761 .. :try_end_3796} :catch_360
    .catchall {:try_start_3761 .. :try_end_3796} :catchall_544

    .line 4457
    :try_start_3796
    const-string/jumbo v225, "mTitle"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4458
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4459
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4460
    if-eqz v197, :cond_3828

    .line 4461
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_37f6

    .line 4462
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4463
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    :cond_37f6
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "id="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3828
    .catch Ljava/lang/SecurityException; {:try_start_3796 .. :try_end_3828} :catch_3c1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3796 .. :try_end_3828} :catch_3c2a
    .catch Ljava/lang/Exception; {:try_start_3796 .. :try_end_3828} :catch_360
    .catchall {:try_start_3796 .. :try_end_3828} :catchall_544

    .line 4475
    :cond_3828
    :goto_3828
    :try_start_3828
    const-string v225, "mClipRect"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4476
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4477
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/graphics/Rect;

    .line 4478
    .restart local v111    # "mClipRect":Landroid/graphics/Rect;
    if-eqz v111, :cond_3d8b

    .line 4480
    if-eqz v108, :cond_3c3a

    move/from16 v0, v108

    move/from16 v1, v133

    if-le v0, v1, :cond_3c3a

    .line 4481
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v226, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v227, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v228, v0

    sub-int v227, v227, v228

    add-int v226, v226, v227

    sub-int v226, v133, v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4482
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4484
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4485
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4487
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v226, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v227, v0

    sub-int v226, v226, v227

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4488
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v226, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v227, v0

    sub-int v226, v226, v227

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4491
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39a0
    .catch Ljava/lang/SecurityException; {:try_start_3828 .. :try_end_39a0} :catch_3d7b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3828 .. :try_end_39a0} :catch_3efc
    .catch Ljava/lang/Exception; {:try_start_3828 .. :try_end_39a0} :catch_360
    .catchall {:try_start_3828 .. :try_end_39a0} :catchall_544

    .line 4530
    .end local v111    # "mClipRect":Landroid/graphics/Rect;
    :goto_39a0
    const/16 v58, 0x0

    .line 4531
    if-eqz v41, :cond_3f2e

    :try_start_39a4
    move-object/from16 v0, v41

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_39ab
    .catch Ljava/lang/Exception; {:try_start_39a4 .. :try_end_39ab} :catch_360
    .catchall {:try_start_39a4 .. :try_end_39ab} :catchall_544

    move-result v225

    if-eqz v225, :cond_3f2e

    .line 4533
    :try_start_39ae
    const-string/jumbo v225, "mText"

    move-object/from16 v0, v41

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4534
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_39c2
    .catch Ljava/lang/SecurityException; {:try_start_39ae .. :try_end_39c2} :catch_3f0c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_39ae .. :try_end_39c2} :catch_3f1e
    .catch Ljava/lang/Exception; {:try_start_39ae .. :try_end_39c2} :catch_360
    .catchall {:try_start_39ae .. :try_end_39c2} :catchall_544

    .line 4553
    :cond_39c2
    :goto_39c2
    if-eqz v58, :cond_3f92

    if-eqz v45, :cond_3f92

    .line 4554
    :try_start_39c6
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39cd
    .catch Ljava/lang/Exception; {:try_start_39c6 .. :try_end_39cd} :catch_360
    .catchall {:try_start_39c6 .. :try_end_39cd} :catchall_544

    move-result-object v138

    .line 4555
    .local v138, "mText":Ljava/lang/Object;
    if-eqz v138, :cond_3a63

    .line 4557
    :try_start_39d0
    const-string/jumbo v225, "mText"

    move-object/from16 v0, v45

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4558
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4559
    move-object/from16 v0, v58

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4560
    if-eqz v197, :cond_3a63

    .line 4561
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_3a30

    .line 4562
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4563
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    :cond_3a30
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a63
    .catch Ljava/lang/SecurityException; {:try_start_39d0 .. :try_end_3a63} :catch_3f72
    .catch Ljava/lang/NoSuchFieldException; {:try_start_39d0 .. :try_end_3a63} :catch_3f82
    .catch Ljava/lang/Exception; {:try_start_39d0 .. :try_end_3a63} :catch_360
    .catchall {:try_start_39d0 .. :try_end_3a63} :catchall_544

    .line 4594
    .end local v138    # "mText":Ljava/lang/Object;
    :cond_3a63
    :goto_3a63
    if-eqz v45, :cond_3b02

    :try_start_3a65
    move-object/from16 v0, v45

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3a6c
    .catch Ljava/lang/Exception; {:try_start_3a65 .. :try_end_3a6c} :catch_360
    .catchall {:try_start_3a65 .. :try_end_3a6c} :catchall_544

    move-result v225

    if-eqz v225, :cond_3b02

    .line 4596
    :try_start_3a6f
    const-string/jumbo v225, "mText"

    move-object/from16 v0, v45

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4597
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4598
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4599
    if-eqz v197, :cond_3b02

    .line 4600
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_3acf

    .line 4601
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4602
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    :cond_3acf
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b02
    .catch Ljava/lang/SecurityException; {:try_start_3a6f .. :try_end_3b02} :catch_405f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3a6f .. :try_end_3b02} :catch_406f
    .catch Ljava/lang/Exception; {:try_start_3a6f .. :try_end_3b02} :catch_360
    .catchall {:try_start_3a6f .. :try_end_3b02} :catchall_544

    .line 4614
    :cond_3b02
    :goto_3b02
    if-eqz v43, :cond_3b72

    :try_start_3b04
    move-object/from16 v0, v43

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3b0b
    .catch Ljava/lang/Exception; {:try_start_3b04 .. :try_end_3b0b} :catch_360
    .catchall {:try_start_3b04 .. :try_end_3b0b} :catchall_544

    move-result v225

    if-eqz v225, :cond_3b72

    .line 4616
    :try_start_3b0e
    const-string v225, "mChecked"

    move-object/from16 v0, v43

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4617
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4618
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v109

    .line 4619
    .local v109, "mChecked":Z
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v225

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4620
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "checked="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b72
    .catch Ljava/lang/SecurityException; {:try_start_3b0e .. :try_end_3b72} :catch_407f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3b0e .. :try_end_3b72} :catch_408f
    .catch Ljava/lang/Exception; {:try_start_3b0e .. :try_end_3b72} :catch_360
    .catchall {:try_start_3b0e .. :try_end_3b72} :catchall_544

    .line 4629
    .end local v109    # "mChecked":Z
    :cond_3b72
    :goto_3b72
    if-eqz v44, :cond_2adc

    :try_start_3b74
    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3b7b
    .catch Ljava/lang/Exception; {:try_start_3b74 .. :try_end_3b7b} :catch_360
    .catchall {:try_start_3b74 .. :try_end_3b7b} :catchall_544

    move-result v225

    if-eqz v225, :cond_2adc

    .line 4631
    :try_start_3b7e
    const-string/jumbo v225, "mSwitchBallPosition"

    move-object/from16 v0, v44

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4632
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4633
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v137

    .line 4634
    .local v137, "mSwitchBallPosition":I
    if-nez v137, :cond_409f

    .line 4635
    const-string v197, "Camera"

    .line 4639
    :goto_3b9e
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3bd0
    .catch Ljava/lang/SecurityException; {:try_start_3b7e .. :try_end_3bd0} :catch_3bd2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3b7e .. :try_end_3bd0} :catch_40a3
    .catch Ljava/lang/Exception; {:try_start_3b7e .. :try_end_3bd0} :catch_360
    .catchall {:try_start_3b7e .. :try_end_3bd0} :catchall_544

    goto/16 :goto_2adc

    .line 4640
    .end local v137    # "mSwitchBallPosition":I
    :catch_3bd2
    move-exception v52

    .line 4641
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_3bd3
    const-string v225, "TDK"

    const-string v226, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3be0
    .catch Ljava/lang/Exception; {:try_start_3bd3 .. :try_end_3be0} :catch_360
    .catchall {:try_start_3bd3 .. :try_end_3be0} :catchall_544

    goto/16 :goto_2adc

    .line 4432
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3be2
    move-exception v52

    .line 4433
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_3be3
    const-string v225, "TDK"

    const-string v226, "No mOnClickListener for touch"

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    const-string v225, "mClickListener"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3bf3
    .catch Ljava/lang/SecurityException; {:try_start_3be3 .. :try_end_3bf3} :catch_3bf6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3be3 .. :try_end_3bf3} :catch_3c06
    .catch Ljava/lang/Exception; {:try_start_3be3 .. :try_end_3bf3} :catch_360
    .catchall {:try_start_3be3 .. :try_end_3bf3} :catchall_544

    move-result-object v58

    goto/16 :goto_36a5

    .line 4447
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3bf6
    move-exception v52

    .line 4448
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_3bf7
    const-string v225, "TDK"

    const-string v226, "No mClickListener for touch"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3759

    .line 4449
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3c06
    move-exception v52

    .line 4450
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mClickListener for touch"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3759

    .line 4452
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3c16
    const-string v197, "false"

    goto/16 :goto_3764

    .line 4467
    :catch_3c1a
    move-exception v52

    .line 4468
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No mTile for ID"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3828

    .line 4469
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3c2a
    move-exception v52

    .line 4470
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mTile for ID"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c38
    .catch Ljava/lang/Exception; {:try_start_3bf7 .. :try_end_3c38} :catch_360
    .catchall {:try_start_3bf7 .. :try_end_3c38} :catchall_544

    goto/16 :goto_3828

    .line 4494
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v111    # "mClipRect":Landroid/graphics/Rect;
    :cond_3c3a
    :try_start_3c3a
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4495
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4497
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4498
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v226, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v227, v0

    sub-int v226, v226, v227

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4501
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4503
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v226, v0

    move-object/from16 v0, v111

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v227, v0

    sub-int v226, v226, v227

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4504
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d79
    .catch Ljava/lang/SecurityException; {:try_start_3c3a .. :try_end_3d79} :catch_3d7b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3c3a .. :try_end_3d79} :catch_3efc
    .catch Ljava/lang/Exception; {:try_start_3c3a .. :try_end_3d79} :catch_360
    .catchall {:try_start_3c3a .. :try_end_3d79} :catchall_544

    goto/16 :goto_39a0

    .line 4523
    .end local v111    # "mClipRect":Landroid/graphics/Rect;
    :catch_3d7b
    move-exception v52

    .line 4524
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_3d7c
    const-string v225, "TDK"

    const-string v226, "Failed to get a rectangle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d89
    .catch Ljava/lang/Exception; {:try_start_3d7c .. :try_end_3d89} :catch_360
    .catchall {:try_start_3d7c .. :try_end_3d89} :catchall_544

    goto/16 :goto_39a0

    .line 4509
    .end local v52    # "e":Ljava/lang/SecurityException;
    .restart local v111    # "mClipRect":Landroid/graphics/Rect;
    :cond_3d8b
    :try_start_3d8b
    const-string v225, "getCurrentArea"

    const/16 v226, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v61

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/graphics/RectF;

    .line 4511
    .local v115, "mCurrentArea":Landroid/graphics/RectF;
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v226, v0

    move/from16 v0, v226

    float-to-int v0, v0

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4512
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v226, v0

    move/from16 v0, v226

    float-to-int v0, v0

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4515
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4517
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v226, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v227, v0

    sub-float v226, v226, v227

    move/from16 v0, v226

    float-to-int v0, v0

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4518
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4520
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v226, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v227, v0

    sub-float v226, v226, v227

    move/from16 v0, v226

    float-to-int v0, v0

    move/from16 v226, v0

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4521
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3efa
    .catch Ljava/lang/SecurityException; {:try_start_3d8b .. :try_end_3efa} :catch_3d7b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3d8b .. :try_end_3efa} :catch_3efc
    .catch Ljava/lang/Exception; {:try_start_3d8b .. :try_end_3efa} :catch_360
    .catchall {:try_start_3d8b .. :try_end_3efa} :catchall_544

    goto/16 :goto_39a0

    .line 4525
    .end local v111    # "mClipRect":Landroid/graphics/Rect;
    .end local v115    # "mCurrentArea":Landroid/graphics/RectF;
    :catch_3efc
    move-exception v52

    .line 4526
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_3efd
    const-string v225, "TDK"

    const-string v226, "Failed to get a rectangle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39a0

    .line 4535
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3f0c
    move-exception v52

    .line 4536
    .local v52, "e":Ljava/lang/SecurityException;
    const/16 v58, 0x0

    .line 4537
    const-string v225, "TDK"

    const-string v226, "No mText to get TwGLText"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39c2

    .line 4538
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3f1e
    move-exception v52

    .line 4539
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mText to get TwGLText"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39c2

    .line 4542
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3f2e
    if-eqz v42, :cond_39c2

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3f37
    .catch Ljava/lang/Exception; {:try_start_3efd .. :try_end_3f37} :catch_360
    .catchall {:try_start_3efd .. :try_end_3f37} :catchall_544

    move-result v225

    if-eqz v225, :cond_39c2

    .line 4544
    :try_start_3f3a
    const-string/jumbo v225, "mText"

    move-object/from16 v0, v42

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4545
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3f4e
    .catch Ljava/lang/SecurityException; {:try_start_3f3a .. :try_end_3f4e} :catch_3f50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3f3a .. :try_end_3f4e} :catch_3f62
    .catch Ljava/lang/Exception; {:try_start_3f3a .. :try_end_3f4e} :catch_360
    .catchall {:try_start_3f3a .. :try_end_3f4e} :catchall_544

    goto/16 :goto_39c2

    .line 4546
    :catch_3f50
    move-exception v52

    .line 4547
    .local v52, "e":Ljava/lang/SecurityException;
    const/16 v58, 0x0

    .line 4548
    :try_start_3f53
    const-string v225, "TDK"

    const-string v226, "No mText to get TwGLText"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39c2

    .line 4549
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3f62
    move-exception v52

    .line 4550
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mText to get TwGLText"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39c2

    .line 4567
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v138    # "mText":Ljava/lang/Object;
    :catch_3f72
    move-exception v52

    .line 4568
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a63

    .line 4569
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_3f82
    move-exception v52

    .line 4570
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a63

    .line 4574
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .end local v138    # "mText":Ljava/lang/Object;
    :cond_3f92
    if-eqz v41, :cond_3f9e

    move-object/from16 v0, v41

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-nez v225, :cond_3faa

    :cond_3f9e
    if-eqz v42, :cond_3a63

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3fa7
    .catch Ljava/lang/Exception; {:try_start_3f53 .. :try_end_3fa7} :catch_360
    .catchall {:try_start_3f53 .. :try_end_3fa7} :catchall_544

    move-result v225

    if-eqz v225, :cond_3a63

    .line 4576
    :cond_3faa
    :try_start_3faa
    const-string/jumbo v225, "mTitle"

    move-object/from16 v0, v46

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4577
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4578
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    move-object/from16 v0, v225

    check-cast v0, Ljava/lang/String;

    move-object/from16 v197, v0

    .line 4579
    if-eqz v197, :cond_3a63

    .line 4580
    const/16 v225, 0xa

    move-object/from16 v0, v197

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v225

    const/16 v226, -0x1

    move/from16 v0, v225

    move/from16 v1, v226

    if-eq v0, v1, :cond_400a

    .line 4581
    const-string v225, "(\n|\r\n)"

    const-string v226, "\u0003"

    move-object/from16 v0, v197

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 4582
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, ">> newlineReplacement - "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    move-object/from16 v0, v226

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_400a
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_403d
    .catch Ljava/lang/SecurityException; {:try_start_3faa .. :try_end_403d} :catch_403f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3faa .. :try_end_403d} :catch_404f
    .catch Ljava/lang/Exception; {:try_start_3faa .. :try_end_403d} :catch_360
    .catchall {:try_start_3faa .. :try_end_403d} :catchall_544

    goto/16 :goto_3a63

    .line 4586
    :catch_403f
    move-exception v52

    .line 4587
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_4040
    const-string v225, "TDK"

    const-string v226, "No mTile for Text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a63

    .line 4588
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_404f
    move-exception v52

    .line 4589
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mTile for Text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a63

    .line 4606
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_405f
    move-exception v52

    .line 4607
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b02

    .line 4608
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_406f
    move-exception v52

    .line 4609
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b02

    .line 4621
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :catch_407f
    move-exception v52

    .line 4622
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No mChecked for check"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b72

    .line 4623
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_408f
    move-exception v52

    .line 4624
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mChecked for check"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_409d
    .catch Ljava/lang/Exception; {:try_start_4040 .. :try_end_409d} :catch_360
    .catchall {:try_start_4040 .. :try_end_409d} :catchall_544

    goto/16 :goto_3b72

    .line 4637
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v137    # "mSwitchBallPosition":I
    :cond_409f
    :try_start_409f
    const-string v197, "Camcorder"
    :try_end_40a1
    .catch Ljava/lang/SecurityException; {:try_start_409f .. :try_end_40a1} :catch_3bd2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_409f .. :try_end_40a1} :catch_40a3
    .catch Ljava/lang/Exception; {:try_start_409f .. :try_end_40a1} :catch_360
    .catchall {:try_start_409f .. :try_end_40a1} :catchall_544

    goto/16 :goto_3b9e

    .line 4642
    .end local v137    # "mSwitchBallPosition":I
    :catch_40a3
    move-exception v52

    .line 4643
    .restart local v52    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_40a4
    const-string v225, "TDK"

    const-string v226, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2adc

    .line 4647
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .end local v54    # "enable":Z
    .end local v61    # "gLView":Ljava/lang/Object;
    :cond_40b3
    if-eqz v32, :cond_475d

    move-object/from16 v0, v32

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_475d

    .line 4649
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (GlView-Sec) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 4652
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 4655
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    if-eqz v29, :cond_41b9

    move-object/from16 v0, v29

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_415c
    .catch Ljava/lang/Exception; {:try_start_40a4 .. :try_end_415c} :catch_360
    .catchall {:try_start_40a4 .. :try_end_415c} :catchall_544

    move-result v225

    if-eqz v225, :cond_41b9

    .line 4659
    :try_start_415f
    const-string/jumbo v225, "mResourceID"

    move-object/from16 v0, v29

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4660
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4661
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_417a
    .catch Ljava/lang/SecurityException; {:try_start_415f .. :try_end_417a} :catch_46cd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_415f .. :try_end_417a} :catch_46dd
    .catch Ljava/lang/Exception; {:try_start_415f .. :try_end_417a} :catch_360
    .catchall {:try_start_415f .. :try_end_417a} :catchall_544

    move-result v131

    .line 4662
    .local v131, "mResourceID":I
    if-eqz v131, :cond_41b9

    if-eqz v195, :cond_41b9

    .line 4664
    :try_start_417f
    move-object/from16 v0, v195

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v197

    .line 4665
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "entry="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41b9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_417f .. :try_end_41b9} :catch_46bd
    .catch Ljava/lang/SecurityException; {:try_start_417f .. :try_end_41b9} :catch_46cd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_417f .. :try_end_41b9} :catch_46dd
    .catch Ljava/lang/Exception; {:try_start_417f .. :try_end_41b9} :catch_360
    .catchall {:try_start_417f .. :try_end_41b9} :catchall_544

    .line 4677
    .end local v131    # "mResourceID":I
    :cond_41b9
    :goto_41b9
    const/16 v118, 0x0

    .line 4680
    .local v118, "mGlObject":Ljava/lang/Object;
    :try_start_41bb
    const-string/jumbo v225, "mRect"

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v130

    .line 4681
    .local v130, "mRect":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v130

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4682
    move-object/from16 v0, v130

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v69

    .line 4684
    .local v69, "glRect":Ljava/lang/Object;
    const-string/jumbo v225, "mGlObject"

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4685
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4686
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41f2
    .catch Ljava/lang/SecurityException; {:try_start_41bb .. :try_end_41f2} :catch_46fd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_41bb .. :try_end_41f2} :catch_471d
    .catch Ljava/lang/Exception; {:try_start_41bb .. :try_end_41f2} :catch_360
    .catchall {:try_start_41bb .. :try_end_41f2} :catchall_544

    move-result-object v118

    .line 4690
    :try_start_41f3
    const-string v225, "checkPosIn"

    const/16 v226, 0x2

    move/from16 v0, v226

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v226, v0

    const/16 v227, 0x0

    sget-object v228, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v228, v226, v227

    const/16 v227, 0x1

    sget-object v228, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v228, v226, v227

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4691
    .local v19, "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4692
    const/16 v225, 0x2

    move/from16 v0, v225

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v225, v0

    const/16 v226, 0x0

    const/16 v227, 0x0

    invoke-static/range {v227 .. v227}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v227

    aput-object v227, v225, v226

    const/16 v226, 0x1

    const/16 v227, 0x0

    invoke-static/range {v227 .. v227}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v227

    aput-object v227, v225, v226

    move-object/from16 v0, v19

    move-object/from16 v1, v118

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4241
    .catch Ljava/lang/SecurityException; {:try_start_41f3 .. :try_end_4241} :catch_46ed
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41f3 .. :try_end_4241} :catch_470d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_41f3 .. :try_end_4241} :catch_471d
    .catch Ljava/lang/Exception; {:try_start_41f3 .. :try_end_4241} :catch_360
    .catchall {:try_start_41f3 .. :try_end_4241} :catchall_544

    .line 4699
    .end local v19    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_4241
    :try_start_4241
    const-string/jumbo v225, "mXlt"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4700
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4701
    move-object/from16 v0, v58

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v161

    .line 4702
    .local v161, "objX":F
    const-string/jumbo v225, "mYlt"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4703
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4704
    move-object/from16 v0, v58

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v162

    .line 4706
    .local v162, "objY":F
    const-string/jumbo v225, "mXrb"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4707
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4708
    move-object/from16 v0, v58

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    sub-float v160, v225, v161

    .line 4709
    .local v160, "objWidth":F
    const-string/jumbo v225, "mYrb"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4710
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4711
    move-object/from16 v0, v58

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    sub-float v158, v225, v162

    .line 4714
    .local v158, "objHeight":F
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x2="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4715
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y2="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width2="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v160

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v160

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4717
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height2="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v158

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v158

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4719
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mLeft"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v126

    .line 4720
    .local v126, "mLeft":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v126

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4721
    move-object/from16 v0, v126

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v223

    .line 4722
    .restart local v223    # "x":I
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mTop"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v141

    .line 4723
    .local v141, "mTop":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v141

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4724
    move-object/from16 v0, v141

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v224

    .line 4726
    .restart local v224    # "y":I
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mWidth"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v146

    .line 4727
    .local v146, "mWidth":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v146

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4728
    move-object/from16 v0, v146

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v222

    .line 4729
    .restart local v222    # "width":I
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    const-string/jumbo v226, "mHeight"

    invoke-virtual/range {v225 .. v226}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v120

    .line 4730
    .local v120, "mHeight":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v120

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4731
    move-object/from16 v0, v120

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v70

    .line 4736
    .restart local v70    # "height":I
    const-string/jumbo v225, "mParent"

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4737
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4738
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v129

    .line 4739
    .local v129, "mParent":Ljava/lang/Object;
    if-eqz v129, :cond_472d

    .line 4740
    const-string v225, "getWidth"

    const/16 v226, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v129

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v172

    .line 4741
    .local v172, "parentWidth":I
    const-string v225, "getHeight"

    const/16 v226, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v225

    const/16 v226, 0x0

    move-object/from16 v0, v225

    move-object/from16 v1, v129

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v225

    check-cast v225, Ljava/lang/Integer;

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Integer;->intValue()I

    move-result v171

    .line 4742
    .local v171, "parentHeight":I
    move/from16 v0, v172

    int-to-float v0, v0

    move/from16 v225, v0

    div-float v178, v160, v225

    .line 4743
    .local v178, "rateX":F
    move/from16 v0, v171

    int-to-float v0, v0

    move/from16 v225, v0

    div-float v179, v158, v225

    .line 4749
    .end local v171    # "parentHeight":I
    .end local v172    # "parentWidth":I
    .local v179, "rateY":F
    :goto_44b8
    move/from16 v0, v223

    int-to-float v0, v0

    move/from16 v225, v0

    mul-float v225, v225, v178

    add-float v225, v225, v161

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v215, v0

    .line 4750
    .local v215, "viewX":I
    move/from16 v0, v224

    int-to-float v0, v0

    move/from16 v225, v0

    mul-float v225, v225, v179

    add-float v225, v225, v162

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v216, v0

    .line 4751
    .local v216, "viewY":I
    move/from16 v0, v222

    int-to-float v0, v0

    move/from16 v225, v0

    mul-float v225, v225, v178

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v214, v0

    .line 4752
    .local v214, "viewWidth":I
    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v225, v0

    mul-float v225, v225, v179

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v212, v0

    .line 4754
    .local v212, "viewHeight":I
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v215

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v215

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4755
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4756
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4757
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v212

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v212

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4613
    .catch Ljava/lang/SecurityException; {:try_start_4241 .. :try_end_4613} :catch_46fd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4241 .. :try_end_4613} :catch_471d
    .catch Ljava/lang/Exception; {:try_start_4241 .. :try_end_4613} :catch_360
    .catchall {:try_start_4241 .. :try_end_4613} :catchall_544

    .line 4765
    .end local v69    # "glRect":Ljava/lang/Object;
    .end local v70    # "height":I
    .end local v118    # "mGlObject":Ljava/lang/Object;
    .end local v120    # "mHeight":Ljava/lang/reflect/Field;
    .end local v126    # "mLeft":Ljava/lang/reflect/Field;
    .end local v129    # "mParent":Ljava/lang/Object;
    .end local v130    # "mRect":Ljava/lang/reflect/Field;
    .end local v141    # "mTop":Ljava/lang/reflect/Field;
    .end local v146    # "mWidth":Ljava/lang/reflect/Field;
    .end local v158    # "objHeight":F
    .end local v160    # "objWidth":F
    .end local v161    # "objX":F
    .end local v162    # "objY":F
    .end local v178    # "rateX":F
    .end local v179    # "rateY":F
    .end local v212    # "viewHeight":I
    .end local v214    # "viewWidth":I
    .end local v215    # "viewX":I
    .end local v216    # "viewY":I
    .end local v222    # "width":I
    .end local v223    # "x":I
    .end local v224    # "y":I
    :goto_4613
    if-eqz v31, :cond_4670

    :try_start_4615
    move-object/from16 v0, v31

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_461c
    .catch Ljava/lang/Exception; {:try_start_4615 .. :try_end_461c} :catch_360
    .catchall {:try_start_4615 .. :try_end_461c} :catchall_544

    move-result v225

    if-eqz v225, :cond_4670

    .line 4767
    :try_start_461f
    const-string/jumbo v225, "mText"

    move-object/from16 v0, v31

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v58

    .line 4768
    const/16 v225, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4769
    move-object/from16 v0, v58

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Ljava/lang/String;

    .line 4770
    .local v138, "mText":Ljava/lang/String;
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "text="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v138 .. v138}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4670
    .catch Ljava/lang/SecurityException; {:try_start_461f .. :try_end_4670} :catch_473d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_461f .. :try_end_4670} :catch_474d
    .catch Ljava/lang/Exception; {:try_start_461f .. :try_end_4670} :catch_360
    .catchall {:try_start_461f .. :try_end_4670} :catchall_544

    .line 4778
    .end local v138    # "mText":Ljava/lang/String;
    :cond_4670
    :goto_4670
    const/16 v54, 0x1

    .line 4779
    .restart local v54    # "enable":Z
    :try_start_4672
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v225

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ""

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v197

    .line 4780
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46bb
    .catch Ljava/lang/Exception; {:try_start_4672 .. :try_end_46bb} :catch_360
    .catchall {:try_start_4672 .. :try_end_46bb} :catchall_544

    goto/16 :goto_2adc

    .line 4666
    .end local v54    # "enable":Z
    .restart local v131    # "mResourceID":I
    :catch_46bd
    move-exception v52

    .line 4667
    .local v52, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_46be
    const-string v225, "TDK"

    const-string v226, "Failed to get Resource entry name"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46cb
    .catch Ljava/lang/SecurityException; {:try_start_46be .. :try_end_46cb} :catch_46cd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46be .. :try_end_46cb} :catch_46dd
    .catch Ljava/lang/Exception; {:try_start_46be .. :try_end_46cb} :catch_360
    .catchall {:try_start_46be .. :try_end_46cb} :catchall_544

    goto/16 :goto_41b9

    .line 4670
    .end local v52    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v131    # "mResourceID":I
    :catch_46cd
    move-exception v52

    .line 4671
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_46ce
    const-string v225, "TDK"

    const-string v226, "No mResourceID for entry"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41b9

    .line 4672
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_46dd
    move-exception v52

    .line 4673
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mResourceID for entry"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46eb
    .catch Ljava/lang/Exception; {:try_start_46ce .. :try_end_46eb} :catch_360
    .catchall {:try_start_46ce .. :try_end_46eb} :catchall_544

    goto/16 :goto_41b9

    .line 4693
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v69    # "glRect":Ljava/lang/Object;
    .restart local v118    # "mGlObject":Ljava/lang/Object;
    .restart local v130    # "mRect":Ljava/lang/reflect/Field;
    :catch_46ed
    move-exception v52

    .line 4694
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_46ee
    const-string v225, "TDK"

    const-string v226, "No method: checkPosIn"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46fb
    .catch Ljava/lang/SecurityException; {:try_start_46ee .. :try_end_46fb} :catch_46fd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46ee .. :try_end_46fb} :catch_471d
    .catch Ljava/lang/Exception; {:try_start_46ee .. :try_end_46fb} :catch_360
    .catchall {:try_start_46ee .. :try_end_46fb} :catchall_544

    goto/16 :goto_4241

    .line 4759
    .end local v52    # "e":Ljava/lang/SecurityException;
    .end local v69    # "glRect":Ljava/lang/Object;
    .end local v118    # "mGlObject":Ljava/lang/Object;
    .end local v130    # "mRect":Ljava/lang/reflect/Field;
    :catch_46fd
    move-exception v52

    .line 4760
    .restart local v52    # "e":Ljava/lang/SecurityException;
    :try_start_46fe
    const-string v225, "TDK"

    const-string v226, "Failed to get a rectangle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_470b
    .catch Ljava/lang/Exception; {:try_start_46fe .. :try_end_470b} :catch_360
    .catchall {:try_start_46fe .. :try_end_470b} :catchall_544

    goto/16 :goto_4613

    .line 4695
    .end local v52    # "e":Ljava/lang/SecurityException;
    .restart local v69    # "glRect":Ljava/lang/Object;
    .restart local v118    # "mGlObject":Ljava/lang/Object;
    .restart local v130    # "mRect":Ljava/lang/reflect/Field;
    :catch_470d
    move-exception v52

    .line 4696
    .local v52, "e":Ljava/lang/NoSuchMethodException;
    :try_start_470e
    const-string v225, "TDK"

    const-string v226, "No method: checkPosIn"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_471b
    .catch Ljava/lang/SecurityException; {:try_start_470e .. :try_end_471b} :catch_46fd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_470e .. :try_end_471b} :catch_471d
    .catch Ljava/lang/Exception; {:try_start_470e .. :try_end_471b} :catch_360
    .catchall {:try_start_470e .. :try_end_471b} :catchall_544

    goto/16 :goto_4241

    .line 4761
    .end local v52    # "e":Ljava/lang/NoSuchMethodException;
    .end local v69    # "glRect":Ljava/lang/Object;
    .end local v118    # "mGlObject":Ljava/lang/Object;
    .end local v130    # "mRect":Ljava/lang/reflect/Field;
    :catch_471d
    move-exception v52

    .line 4762
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    :try_start_471e
    const-string v225, "TDK"

    const-string v226, "Failed to get a rectangle"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4613

    .line 4745
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v69    # "glRect":Ljava/lang/Object;
    .restart local v70    # "height":I
    .restart local v118    # "mGlObject":Ljava/lang/Object;
    .restart local v120    # "mHeight":Ljava/lang/reflect/Field;
    .restart local v126    # "mLeft":Ljava/lang/reflect/Field;
    .restart local v129    # "mParent":Ljava/lang/Object;
    .restart local v130    # "mRect":Ljava/lang/reflect/Field;
    .restart local v141    # "mTop":Ljava/lang/reflect/Field;
    .restart local v146    # "mWidth":Ljava/lang/reflect/Field;
    .restart local v158    # "objHeight":F
    .restart local v160    # "objWidth":F
    .restart local v161    # "objX":F
    .restart local v162    # "objY":F
    .restart local v222    # "width":I
    .restart local v223    # "x":I
    .restart local v224    # "y":I
    :cond_472d
    move/from16 v0, v222

    int-to-float v0, v0

    move/from16 v225, v0

    div-float v178, v160, v225

    .line 4746
    .restart local v178    # "rateX":F
    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v225, v0

    div-float v179, v158, v225

    .restart local v179    # "rateY":F
    goto/16 :goto_44b8

    .line 4771
    .end local v69    # "glRect":Ljava/lang/Object;
    .end local v70    # "height":I
    .end local v118    # "mGlObject":Ljava/lang/Object;
    .end local v120    # "mHeight":Ljava/lang/reflect/Field;
    .end local v126    # "mLeft":Ljava/lang/reflect/Field;
    .end local v129    # "mParent":Ljava/lang/Object;
    .end local v130    # "mRect":Ljava/lang/reflect/Field;
    .end local v141    # "mTop":Ljava/lang/reflect/Field;
    .end local v146    # "mWidth":Ljava/lang/reflect/Field;
    .end local v158    # "objHeight":F
    .end local v160    # "objWidth":F
    .end local v161    # "objX":F
    .end local v162    # "objY":F
    .end local v178    # "rateX":F
    .end local v179    # "rateY":F
    .end local v222    # "width":I
    .end local v223    # "x":I
    .end local v224    # "y":I
    :catch_473d
    move-exception v52

    .line 4772
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4670

    .line 4773
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_474d
    move-exception v52

    .line 4774
    .local v52, "e":Ljava/lang/NoSuchFieldException;
    const-string v225, "TDK"

    const-string v226, "No mText for text"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4670

    .line 4782
    .end local v52    # "e":Ljava/lang/NoSuchFieldException;
    :cond_475d
    if-eqz v30, :cond_4a51

    move-object/from16 v0, v30

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_4a51

    .line 4784
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (GlObject-Sec) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 4787
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4789
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 4790
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4792
    const-string/jumbo v197, "true"

    .line 4793
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4832
    .catch Ljava/lang/Exception; {:try_start_471e .. :try_end_4832} :catch_360
    .catchall {:try_start_471e .. :try_end_4832} :catchall_544

    .line 4797
    :try_start_4832
    const-string v225, "checkPosIn"

    const/16 v226, 0x2

    move/from16 v0, v226

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v226, v0

    const/16 v227, 0x0

    sget-object v228, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v228, v226, v227

    const/16 v227, 0x1

    sget-object v228, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v228, v226, v227

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4798
    .restart local v19    # "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4799
    const/16 v225, 0x2

    move/from16 v0, v225

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v225, v0

    const/16 v226, 0x0

    const/16 v227, 0x0

    invoke-static/range {v227 .. v227}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v227

    aput-object v227, v225, v226

    const/16 v226, 0x1

    const/16 v227, 0x0

    invoke-static/range {v227 .. v227}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v227

    aput-object v227, v225, v226

    move-object/from16 v0, v19

    move-object/from16 v1, v163

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4880
    .catch Ljava/lang/SecurityException; {:try_start_4832 .. :try_end_4880} :catch_4a31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4832 .. :try_end_4880} :catch_4a41
    .catch Ljava/lang/Exception; {:try_start_4832 .. :try_end_4880} :catch_360
    .catchall {:try_start_4832 .. :try_end_4880} :catchall_544

    .line 4806
    .end local v19    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_4880
    :try_start_4880
    const-string/jumbo v225, "mXlt"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v126

    .line 4807
    .restart local v126    # "mLeft":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v126

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4808
    move-object/from16 v0, v126

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v223, v0

    .line 4809
    .restart local v223    # "x":I
    const-string/jumbo v225, "mYlt"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v141

    .line 4810
    .restart local v141    # "mTop":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v141

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4811
    move-object/from16 v0, v141

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v224, v0

    .line 4813
    .restart local v224    # "y":I
    const-string/jumbo v225, "mXrb"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v146

    .line 4814
    .restart local v146    # "mWidth":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v146

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4815
    move-object/from16 v0, v146

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v225, v0

    sub-int v222, v225, v223

    .line 4816
    .restart local v222    # "width":I
    const-string/jumbo v225, "mYrb"

    move-object/from16 v0, v30

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v120

    .line 4817
    .restart local v120    # "mHeight":Ljava/lang/reflect/Field;
    const/16 v225, 0x1

    move-object/from16 v0, v120

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4818
    move-object/from16 v0, v120

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v225

    move/from16 v0, v225

    float-to-int v0, v0

    move/from16 v225, v0

    sub-int v70, v225, v224

    .line 4820
    .restart local v70    # "height":I
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4821
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4822
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2adc

    .line 4800
    .end local v70    # "height":I
    .end local v120    # "mHeight":Ljava/lang/reflect/Field;
    .end local v126    # "mLeft":Ljava/lang/reflect/Field;
    .end local v141    # "mTop":Ljava/lang/reflect/Field;
    .end local v146    # "mWidth":Ljava/lang/reflect/Field;
    .end local v222    # "width":I
    .end local v223    # "x":I
    .end local v224    # "y":I
    :catch_4a31
    move-exception v52

    .line 4801
    .local v52, "e":Ljava/lang/SecurityException;
    const-string v225, "TDK"

    const-string v226, "No method: checkPosIn"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4880

    .line 4802
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_4a41
    move-exception v52

    .line 4803
    .local v52, "e":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    const-string v226, "No method: checkPosIn"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4880

    .line 4826
    .end local v52    # "e":Ljava/lang/NoSuchMethodException;
    :cond_4a51
    if-eqz v27, :cond_4ce6

    move-object/from16 v0, v27

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v225

    if-eqz v225, :cond_4ce6

    .line 4827
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (GLView-Sec) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v197

    .line 4830
    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->isEmpty()Z

    move-result v225

    if-eqz v225, :cond_4a8d

    .line 4831
    const-string v197, "$"

    .line 4833
    :cond_4a8d
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "class="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4835
    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->hashCode()I

    move-result v225

    invoke-static/range {v225 .. v225}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v197

    .line 4836
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "hash="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    const-string/jumbo v197, "true"

    .line 4839
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "enable="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b2e
    .catch Ljava/lang/Exception; {:try_start_4880 .. :try_end_4b2e} :catch_360
    .catchall {:try_start_4880 .. :try_end_4b2e} :catchall_544

    .line 4842
    :try_start_4b2e
    const-string v225, "bounds"

    const/16 v226, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v225

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 4843
    .local v18, "bounds":Ljava/lang/reflect/Method;
    const/16 v225, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4845
    const/16 v225, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v163

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/graphics/Rect;

    .line 4846
    .restart local v180    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v223, v0

    .line 4847
    .restart local v223    # "x":I
    move-object/from16 v0, v180

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v224, v0

    .line 4848
    .restart local v224    # "y":I
    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->width()I

    move-result v222

    .line 4849
    .restart local v222    # "width":I
    invoke-virtual/range {v180 .. v180}, Landroid/graphics/Rect;->height()I

    move-result v70

    .line 4851
    .restart local v70    # "height":I
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "x="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4852
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "y="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4853
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "width="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v222

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4854
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string v226, "height="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v226

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v226

    const-string v227, ""

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4856
    const-string/jumbo v197, "true"

    .line 4857
    new-instance v225, Ljava/lang/StringBuilder;

    invoke-direct/range {v225 .. v225}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v226, "pos_relative="

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v226

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, ","

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    move-object/from16 v0, v225

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    const-string v226, " "

    invoke-virtual/range {v225 .. v226}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v225

    invoke-virtual/range {v225 .. v225}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v166

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4cc4
    .catch Ljava/lang/SecurityException; {:try_start_4b2e .. :try_end_4cc4} :catch_4cc6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4b2e .. :try_end_4cc4} :catch_4cd6
    .catch Ljava/lang/Exception; {:try_start_4b2e .. :try_end_4cc4} :catch_360
    .catchall {:try_start_4b2e .. :try_end_4cc4} :catchall_544

    goto/16 :goto_2adc

    .line 4858
    .end local v18    # "bounds":Ljava/lang/reflect/Method;
    .end local v70    # "height":I
    .end local v180    # "rect":Landroid/graphics/Rect;
    .end local v222    # "width":I
    .end local v223    # "x":I
    .end local v224    # "y":I
    :catch_4cc6
    move-exception v52

    .line 4859
    .local v52, "e":Ljava/lang/SecurityException;
    :try_start_4cc7
    const-string v225, "TDK"

    const-string v226, "Failed to get a boundary"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2adc

    .line 4862
    .end local v52    # "e":Ljava/lang/SecurityException;
    :catch_4cd6
    move-exception v52

    .line 4863
    .local v52, "e":Ljava/lang/NoSuchMethodException;
    const-string v225, "TDK"

    const-string v226, "Failed to get a boundary"

    move-object/from16 v0, v225

    move-object/from16 v1, v226

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2adc

    .line 4866
    .end local v52    # "e":Ljava/lang/NoSuchMethodException;
    :cond_4ce6
    move-object/from16 v0, v163

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v225, v0

    if-eqz v225, :cond_4cf9

    .line 4867
    check-cast v163, Ljava/lang/String;

    .end local v163    # "object":Ljava/lang/Object;
    move-object/from16 v0, v166

    move-object/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2adc

    .line 4872
    .restart local v163    # "object":Ljava/lang/Object;
    :cond_4cf9
    const-string v225, "TDK"

    new-instance v226, Ljava/lang/StringBuilder;

    invoke-direct/range {v226 .. v226}, Ljava/lang/StringBuilder;-><init>()V

    const-string v227, "ViewList: (Unknown) "

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v163 .. v163}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v227

    invoke-virtual/range {v227 .. v227}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v227

    invoke-virtual/range {v226 .. v227}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v226

    invoke-virtual/range {v226 .. v226}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v226

    invoke-static/range {v225 .. v226}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    const/16 v207, 0x1

    .line 4875
    move/from16 v174, v91

    .line 4877
    const/16 v74, 0x0

    :goto_4d1f
    move/from16 v0, v74

    move/from16 v1, v91

    if-ge v0, v1, :cond_20f9

    .line 4878
    invoke-virtual/range {v166 .. v166}, Ljava/lang/StringBuilder;->length()I

    move-result v225

    add-int/lit8 v225, v225, -0x1

    move-object/from16 v0, v166

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4877
    add-int/lit8 v74, v74, 0x1

    goto :goto_4d1f

    .line 4886
    .end local v74    # "i":I
    .end local v91    # "level":I
    .end local v163    # "object":Ljava/lang/Object;
    :cond_4d35
    new-instance v165, Ljava/io/BufferedWriter;

    new-instance v225, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v225

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v226, 0x8000

    move-object/from16 v0, v165

    move-object/from16 v1, v225

    move/from16 v2, v226

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_4d4c
    .catch Ljava/lang/Exception; {:try_start_4cc7 .. :try_end_4d4c} :catch_360
    .catchall {:try_start_4cc7 .. :try_end_4d4c} :catchall_544

    .line 4887
    .end local v164    # "out":Ljava/io/BufferedWriter;
    .local v165, "out":Ljava/io/BufferedWriter;
    :try_start_4d4c
    invoke-virtual/range {v166 .. v166}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v225

    move-object/from16 v0, v165

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4888
    const-string v225, "DONE."

    move-object/from16 v0, v165

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4889
    invoke-virtual/range {v165 .. v165}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4d63
    .catch Ljava/lang/Exception; {:try_start_4d4c .. :try_end_4d63} :catch_4d71
    .catchall {:try_start_4d4c .. :try_end_4d63} :catchall_4d6c

    .line 4893
    if-eqz v165, :cond_4d7c

    .line 4894
    invoke-virtual/range {v165 .. v165}, Ljava/io/BufferedWriter;->close()V

    move-object/from16 v164, v165

    .end local v165    # "out":Ljava/io/BufferedWriter;
    .restart local v164    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_373

    .line 4893
    .end local v164    # "out":Ljava/io/BufferedWriter;
    .restart local v165    # "out":Ljava/io/BufferedWriter;
    :catchall_4d6c
    move-exception v225

    move-object/from16 v164, v165

    .end local v165    # "out":Ljava/io/BufferedWriter;
    .restart local v164    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_545

    .line 4890
    .end local v164    # "out":Ljava/io/BufferedWriter;
    .restart local v165    # "out":Ljava/io/BufferedWriter;
    :catch_4d71
    move-exception v52

    move-object/from16 v164, v165

    .end local v165    # "out":Ljava/io/BufferedWriter;
    .restart local v164    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_361

    .line 3916
    .restart local v74    # "i":I
    .restart local v77    # "id":I
    .restart local v91    # "level":I
    .restart local v163    # "object":Ljava/lang/Object;
    .restart local v209    # "view":Landroid/view/View;
    :catch_4d76
    move-exception v225

    goto/16 :goto_2364

    .line 3027
    .end local v74    # "i":I
    .end local v75    # "i$":Ljava/util/Iterator;
    .end local v77    # "id":I
    .end local v163    # "object":Ljava/lang/Object;
    .end local v174    # "preLevel":I
    .end local v175    # "previousLevel":I
    .end local v207    # "unknownObject":Z
    .end local v209    # "view":Landroid/view/View;
    .restart local v9    # "activeFolderTitleView":Ljava/lang/Object;
    .restart local v51    # "currentView":Ljava/lang/Object;
    .restart local v80    # "indexToRemove":I
    :catch_4d79
    move-exception v225

    goto/16 :goto_a82

    .end local v9    # "activeFolderTitleView":Ljava/lang/Object;
    .end local v51    # "currentView":Ljava/lang/Object;
    .end local v80    # "indexToRemove":I
    .end local v91    # "level":I
    .end local v164    # "out":Ljava/io/BufferedWriter;
    .restart local v75    # "i$":Ljava/util/Iterator;
    .restart local v165    # "out":Ljava/io/BufferedWriter;
    .restart local v174    # "preLevel":I
    .restart local v175    # "previousLevel":I
    .restart local v207    # "unknownObject":Z
    :cond_4d7c
    move-object/from16 v164, v165

    .end local v165    # "out":Ljava/io/BufferedWriter;
    .restart local v164    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_373
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 884
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 886
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$7;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewDebug$7;-><init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 894
    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 895
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 896
    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1330
    .local v12, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1331
    .local v9, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v9, :cond_1f9

    .line 1332
    aget-object v10, v12, v14

    .line 1336
    .local v10, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1337
    .local v11, "fieldValue":Ljava/lang/Object;
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1338
    .local v22, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1339
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_81

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1342
    .local v8, "categoryPrefix":Ljava/lang/String;
    :goto_38
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_44

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_130

    .line 1343
    :cond_44
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_84

    if-eqz p0, :cond_84

    .line 1344
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1345
    .local v15, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1409
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "id":I
    :cond_58
    :goto_58
    if-nez v11, :cond_60

    .line 1410
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1413
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1331
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7e
    :goto_7e
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1339
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_81
    const-string v8, ""

    goto :goto_38

    .line 1347
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    :cond_84
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1348
    .local v13, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_b9

    .line 1349
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1350
    .local v16, "intValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1352
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1355
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v16    # "intValue":I
    :cond_b9
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1356
    .local v19, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_e9

    .line 1357
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1358
    .restart local v16    # "intValue":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1359
    .local v20, "mappingCount":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_cf
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e3

    .line 1360
    aget-object v18, v19, v17

    .line 1361
    .local v18, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_107

    .line 1362
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1367
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_e3
    if-nez v11, :cond_e9

    .line 1368
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1372
    .end local v16    # "intValue":I
    .end local v17    # "j":I
    .end local v20    # "mappingCount":I
    :cond_e9
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1373
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1374
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_10a

    .line 1375
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "fieldValue":Ljava/lang/String;
    goto/16 :goto_58

    .line 1359
    .local v11, "fieldValue":Ljava/lang/Object;
    .restart local v16    # "intValue":I
    .restart local v17    # "j":I
    .restart local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v20    # "mappingCount":I
    :cond_107
    add-int/lit8 v17, v17, 0x1

    goto :goto_cf

    .line 1376
    .end local v16    # "intValue":I
    .end local v17    # "j":I
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v20    # "mappingCount":I
    :cond_10a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_58

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v11, Ljava/lang/Byte;

    .end local v11    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "fieldValue":Ljava/lang/String;
    goto/16 :goto_58

    .line 1381
    .end local v13    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v19    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .local v11, "fieldValue":Ljava/lang/Object;
    :cond_130
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_173

    .line 1382
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1383
    .local v5, "array":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1384
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string v21, ""

    .line 1386
    .local v21, "suffix":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    .line 1414
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v21    # "suffix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_170
    move-exception v2

    goto/16 :goto_7e

    .line 1389
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_173
    const-class v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_1c7

    .line 1390
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1391
    .local v5, "array":[Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v2

    if-eqz v2, :cond_7e

    if-eqz v5, :cond_7e

    .line 1392
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_18f
    array-length v2, v5

    move/from16 v0, v17

    if-ge v0, v2, :cond_7e

    .line 1393
    aget-object v2, v5, v17

    if-eqz v2, :cond_1bf

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v7, v5, v17

    const-string v23, ""

    add-int/lit8 v2, v17, 0x1

    aget-object v2, v5, v2

    if-nez v2, :cond_1c2

    const-string/jumbo v2, "null"

    :goto_1b8
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v3, v7, v1, v2}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1392
    :cond_1bf
    add-int/lit8 v17, v17, 0x2

    goto :goto_18f

    .line 1394
    :cond_1c2
    add-int/lit8 v2, v17, 0x1

    aget-object v2, v5, v2

    goto :goto_1b8

    .line 1401
    .end local v5    # "array":[Ljava/lang/String;
    .end local v17    # "j":I
    :cond_1c7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_58

    .line 1402
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1403
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1f7} :catch_170

    goto/16 :goto_7e

    .line 1417
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f9
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1245
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1246
    .local v22, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1247
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v10, :cond_1ab

    .line 1248
    aget-object v20, v22, v12

    .line 1251
    .local v20, "method":Ljava/lang/reflect/Method;
    :try_start_c
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1252
    .local v21, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1253
    .local v23, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1254
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1257
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_43
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_f0

    .line 1258
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_83

    if-eqz p0, :cond_83

    .line 1259
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1260
    .local v13, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1317
    .end local v13    # "id":I
    :cond_5d
    :goto_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7d
    :goto_7d
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1254
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_80
    const-string v9, ""

    goto :goto_43

    .line 1262
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    :cond_83
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1263
    .local v11, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_b9

    .line 1264
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1265
    .local v14, "intValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1267
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1270
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v14    # "intValue":I
    :cond_b9
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1271
    .local v18, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_5d

    .line 1272
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1273
    .restart local v14    # "intValue":I
    const/16 v16, 0x0

    .line 1274
    .local v16, "mapped":Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1275
    .local v19, "mappingCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_d3
    move/from16 v0, v19

    if-ge v15, v0, :cond_e5

    .line 1276
    aget-object v17, v18, v15

    .line 1277
    .local v17, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_ed

    .line 1278
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1279
    .local v21, "methodValue":Ljava/lang/String;
    const/16 v16, 0x1

    .line 1284
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v21    # "methodValue":Ljava/lang/String;
    :cond_e5
    if-nez v16, :cond_5d

    .line 1285
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "methodValue":Ljava/lang/Integer;
    goto/16 :goto_5d

    .line 1275
    .restart local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .local v21, "methodValue":Ljava/lang/Object;
    :cond_ed
    add-int/lit8 v15, v15, 0x1

    goto :goto_d3

    .line 1289
    .end local v11    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v14    # "intValue":I
    .end local v15    # "j":I
    .end local v16    # "mapped":Z
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v18    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v19    # "mappingCount":I
    :cond_f0
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_12e

    .line 1290
    check-cast v21, [I

    .end local v21    # "methodValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1291
    .local v6, "array":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1292
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string v24, "()"

    .line 1294
    .local v24, "suffix":Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 1318
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "suffix":Ljava/lang/String;
    :catch_12b
    move-exception v3

    goto/16 :goto_7d

    .line 1297
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12e
    const-class v3, [Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_17a

    .line 1298
    check-cast v21, [Ljava/lang/String;

    .end local v21    # "methodValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 1299
    .local v6, "array":[Ljava/lang/String;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_7d

    if-eqz v6, :cond_7d

    .line 1300
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_144
    array-length v3, v6

    if-ge v15, v3, :cond_7d

    .line 1301
    aget-object v3, v6, v15

    if-eqz v3, :cond_172

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v8, v6, v15

    const-string v25, "()"

    add-int/lit8 v3, v15, 0x1

    aget-object v3, v6, v3

    if-nez v3, :cond_175

    const-string/jumbo v3, "null"

    :goto_16b
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v4, v8, v1, v3}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1300
    :cond_172
    add-int/lit8 v15, v15, 0x2

    goto :goto_144

    .line 1302
    :cond_175
    add-int/lit8 v3, v15, 0x1

    aget-object v3, v6, v3

    goto :goto_16b

    .line 1310
    .end local v6    # "array":[Ljava/lang/String;
    .end local v15    # "j":I
    .restart local v21    # "methodValue":Ljava/lang/Object;
    :cond_17a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1311
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_1a6
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1a6} :catch_12b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1a6} :catch_1a8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_1a6} :catch_1ac

    goto/16 :goto_7d

    .line 1319
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v21    # "methodValue":Ljava/lang/Object;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1a8
    move-exception v3

    goto/16 :goto_7d

    .line 1323
    .end local v20    # "method":Ljava/lang/reflect/Method;
    :cond_1ab
    return-void

    .line 1320
    .restart local v20    # "method":Ljava/lang/reflect/Method;
    :catch_1ac
    move-exception v3

    goto/16 :goto_7d
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1452
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_6a

    const/4 v3, 0x1

    .line 1454
    .local v3, "hasIndexMapping":Z
    :goto_a
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1455
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_6c

    const/4 v4, 0x1

    .line 1457
    .local v4, "hasMapping":Z
    :goto_14
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_6e

    if-eqz p0, :cond_6e

    const/4 v13, 0x1

    .line 1458
    .local v13, "resolveId":Z
    :goto_1d
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1460
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_21
    if-ge v7, v15, :cond_7b

    .line 1462
    const/4 v14, 0x0

    .line 1464
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    .line 1466
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1467
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_3e

    .line 1468
    array-length v11, v5

    .line 1469
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2e
    if-ge v8, v11, :cond_3e

    .line 1470
    aget-object v9, v5, v8

    .line 1471
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_70

    .line 1472
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1478
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_3e
    if-eqz v4, :cond_52

    .line 1479
    array-length v11, v10

    .line 1480
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_42
    if-ge v8, v11, :cond_52

    .line 1481
    aget-object v9, v10, v8

    .line 1482
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_73

    .line 1483
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1489
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_52
    if-eqz v13, :cond_76

    .line 1490
    if-nez v14, :cond_5e

    move-object/from16 v0, p0

    invoke-static {v0, v6}, resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "value":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1495
    .restart local v14    # "value":Ljava/lang/String;
    :cond_5e
    :goto_5e
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1460
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 1452
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "valuesCount":I
    :cond_6a
    const/4 v3, 0x0

    goto :goto_a

    .line 1455
    .restart local v3    # "hasIndexMapping":Z
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_6c
    const/4 v4, 0x0

    goto :goto_14

    .line 1457
    .restart local v4    # "hasMapping":Z
    :cond_6e
    const/4 v13, 0x0

    goto :goto_1d

    .line 1469
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "resolveId":Z
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 1480
    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 1492
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_76
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_5e

    .line 1497
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_7b
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .registers 13
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1433
    array-length v0, p1

    .line 1434
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_31

    .line 1435
    aget-object v1, p1, v3

    .line 1436
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1437
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1438
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_2f

    const/4 v6, 0x1

    .line 1439
    .local v6, "test":Z
    :goto_17
    if-eqz v6, :cond_1b

    if-nez v2, :cond_1f

    :cond_1b
    if-nez v6, :cond_2c

    if-nez v2, :cond_2c

    .line 1440
    :cond_1f
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1441
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1442
    .local v7, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1434
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1438
    .end local v6    # "test":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_17

    .line 1445
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    :cond_31
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 506
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2c

    .line 507
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 509
    .local v0, "className":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 511
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 512
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2b

    .line 513
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 521
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-object v5

    .line 517
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 518
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2b
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .registers 8
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 962
    invoke-static {p0, p1, p2}, isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, p0

    .line 992
    :cond_7
    :goto_7
    return-object v1

    .line 966
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 967
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_45

    .line 968
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 969
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3d

    move-object v4, v3

    .line 970
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 971
    .local v1, "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 977
    .end local v1    # "found":Landroid/view/View;
    :cond_20
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_2e

    .line 978
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 980
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 984
    .end local v1    # "found":Landroid/view/View;
    :cond_2e
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_3a

    .line 985
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 987
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_7

    .line 967
    .end local v1    # "found":Landroid/view/View;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 974
    .restart local v3    # "view":Landroid/view/View;
    :cond_3d
    invoke-static {v3, p1, p2}, isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v1, v3

    .line 975
    goto :goto_7

    .line 992
    .end local v3    # "view":Landroid/view/View;
    :cond_45
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, sFieldsForClasses:Ljava/util/HashMap;

    if-nez v11, :cond_b

    .line 1099
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, sFieldsForClasses:Ljava/util/HashMap;

    .line 1101
    :cond_b
    sget-object v11, sAnnotations:Ljava/util/HashMap;

    if-nez v11, :cond_18

    .line 1102
    new-instance v11, Ljava/util/HashMap;

    const/16 v12, 0x200

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    sput-object v11, sAnnotations:Ljava/util/HashMap;

    .line 1105
    :cond_18
    sget-object v10, sFieldsForClasses:Ljava/util/HashMap;

    .line 1107
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    .line 1108
    .local v5, "fields":[Ljava/lang/reflect/Field;
    if-eqz v5, :cond_24

    move-object v6, v5

    .line 1129
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .local v6, "fields":[Ljava/lang/reflect/Field;
    :goto_23
    return-object v6

    .line 1113
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "fields":[Ljava/lang/reflect/Field;
    :cond_24
    const/4 v11, 0x0

    :try_start_25
    invoke-virtual {p0, v11}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1114
    .local v2, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v7, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_31
    if-ge v8, v9, :cond_58

    aget-object v4, v1, v8

    .line 1117
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_55

    const-class v11, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 1118
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1119
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    sget-object v11, sAnnotations:Ljava/util/HashMap;

    const-class v12, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 1123
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_58
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/reflect/Field;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object v5, v0

    .line 1124
    invoke-virtual {v10, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_25 .. :try_end_69} :catch_6b

    move-object v6, v5

    .line 1129
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_23

    .line 1125
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .restart local v5    # "fields":[Ljava/lang/reflect/Field;
    :catch_6b
    move-exception v3

    .line 1126
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v9, sMethodsForClasses:Ljava/util/HashMap;

    if-nez v9, :cond_d

    .line 1134
    new-instance v9, Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    sput-object v9, sMethodsForClasses:Ljava/util/HashMap;

    .line 1136
    :cond_d
    sget-object v9, sAnnotations:Ljava/util/HashMap;

    if-nez v9, :cond_1a

    .line 1137
    new-instance v9, Ljava/util/HashMap;

    const/16 v10, 0x200

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    sput-object v9, sAnnotations:Ljava/util/HashMap;

    .line 1140
    :cond_1a
    sget-object v5, sMethodsForClasses:Ljava/util/HashMap;

    .line 1142
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/reflect/Method;

    .line 1143
    .local v7, "methods":[Ljava/lang/reflect/Method;
    if-eqz v7, :cond_26

    move-object v8, v7

    .line 1171
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "methods":[Ljava/lang/reflect/Method;
    :goto_25
    return-object v8

    .line 1147
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    :cond_26
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v2, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_33
    if-ge v3, v4, :cond_6b

    aget-object v6, v0, v3

    .line 1153
    .local v6, "method":Ljava/lang/reflect/Method;
    :try_start_37
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1154
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_3d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_37 .. :try_end_3d} :catch_69

    .line 1159
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_66

    const-class v9, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Void;

    if-eq v9, v10, :cond_66

    .line 1162
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1163
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    sget-object v9, sAnnotations:Ljava/util/HashMap;

    const-class v10, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_66
    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1155
    :catch_69
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_66

    .line 1168
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_6b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/reflect/Method;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    check-cast v7, [Ljava/lang/reflect/Method;

    .line 1169
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v5, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    .line 1171
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_25
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .registers 14
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v11, 0x1

    .line 938
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 939
    .local v8, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v7, "null"

    .line 940
    .local v7, "nullString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 941
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v2

    .line 942
    .local v2, "attributes":[I
    array-length v9, v2

    mul-int/lit8 v9, v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    .line 943
    .local v3, "data":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_16
    if-ge v5, v6, :cond_48

    aget v1, v0, v5

    .line 945
    .local v1, "attributeId":I
    :try_start_1a
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 946
    add-int/lit8 v10, v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-virtual {v8}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_31
    aput-object v9, v3, v10

    .line 948
    add-int/lit8 v4, v4, 0x2

    .line 951
    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_43

    .line 952
    add-int/lit8 v9, v4, -0x1

    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_43} :catch_49

    .line 943
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_46
    move-object v9, v7

    .line 946
    goto :goto_31

    .line 958
    .end local v1    # "attributeId":I
    :cond_48
    return-object v3

    .line 954
    .restart local v1    # "attributeId":I
    :catch_49
    move-exception v9

    goto :goto_43
.end method

.method public static getViewInstanceCount()J
    .registers 2

    .prologue
    .line 409
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .registers 2

    .prologue
    .line 420
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 529
    :cond_9
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1693
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1694
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1695
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1697
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$9;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1713
    :try_start_1b
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_30

    .line 1718
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1719
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1714
    :catch_30
    move-exception v7

    .line 1715
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1722
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 996
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 997
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 999
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1004
    .end local v0    # "viewClassName":Ljava/lang/String;
    :goto_1c
    return v1

    .line 1001
    .restart local v0    # "viewClassName":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c

    .line 1004
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_22
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 784
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 779
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 820
    if-eqz p0, :cond_3d

    .line 821
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 822
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 824
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 838
    const-wide/16 v4, 0xfa0

    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 839
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 846
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_1c
    return-object v3

    .line 840
    .restart local v0    # "cache":[Landroid/graphics/Bitmap;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_1d
    move-exception v1

    .line 841
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 846
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_3d
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {p0, p2}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 546
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 548
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_48
    .catchall {:try_start_5 .. :try_end_12} :catchall_3e

    .line 550
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_26

    .line 551
    :try_start_14
    invoke-static {v3, v2}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 556
    :goto_17
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_2f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_45

    .line 561
    if-eqz v2, :cond_4a

    .line 562
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 565
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_25
    :goto_25
    return-void

    .line 553
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_26
    :try_start_26
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_45

    goto :goto_17

    .line 558
    :catch_2f
    move-exception v0

    move-object v1, v2

    .line 559
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :goto_31
    :try_start_31
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3e

    .line 561
    if-eqz v1, :cond_25

    .line 562
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_25

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3e
    move-exception v4

    :goto_3f
    if-eqz v1, :cond_44

    .line 562
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_44
    throw v4

    .line 561
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_45
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3f

    .line 558
    :catch_48
    move-exception v0

    goto :goto_31

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_4a
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_25
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 571
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .registers 14
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v2, 0x0

    .line 576
    if-nez p2, :cond_c

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_74

    :cond_c
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v6

    .line 603
    .local v6, "durationMeasure":J
    :goto_15
    if-nez p2, :cond_1d

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_76

    :cond_1d
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4

    .line 617
    .local v4, "durationLayout":J
    :goto_26
    if-nez p2, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_34

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3d

    :cond_34
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2

    .line 648
    .local v2, "durationDraw":J
    :cond_3d
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 650
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 652
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 654
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_78

    move-object v1, p0

    .line 655
    check-cast v1, Landroid/view/ViewGroup;

    .line 656
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 657
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_67
    if-ge v8, v0, :cond_78

    .line 658
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 657
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "durationDraw":J
    .end local v4    # "durationLayout":J
    .end local v6    # "durationMeasure":J
    .end local v8    # "i":I
    :cond_74
    move-wide v6, v2

    .line 576
    goto :goto_15

    .restart local v6    # "durationMeasure":J
    :cond_76
    move-wide v4, v2

    .line 603
    goto :goto_26

    .line 661
    .restart local v2    # "durationDraw":J
    .restart local v4    # "durationLayout":J
    :cond_78
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 670
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 671
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    .line 673
    .local v0, "duration":[J
    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 690
    const-wide/16 v6, 0xfa0

    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 691
    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_34} :catch_35

    .line 700
    :goto_34
    return-wide v4

    .line 694
    :catch_35
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_34

    .line 700
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_56
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    goto :goto_34
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-static {p0, p1}, findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 533
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 534
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_e
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1501
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1502
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_3f

    .line 1504
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v1

    .line 1512
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_25
    return-object v1

    .line 1506
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_25

    .line 1510
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_3f
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_25
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1731
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1732
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_3f

    .line 1733
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1737
    :cond_3f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1739
    new-instance v2, Landroid/view/ViewDebug$10;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1745
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    return-void
.end method

.method public static stopHierarchyTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    return-void
.end method

.method public static stopRecyclerTracing()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1425
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1426
    invoke-static {p0, p4}, writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1427
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1428
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .registers 6
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    if-eqz p1, :cond_39

    .line 1517
    const-string v0, "[EXCEPTION]"

    .line 1519
    .local v0, "output":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_24

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1522
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1528
    .end local v0    # "output":Ljava/lang/String;
    :goto_23
    return-void

    .line 1521
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1522
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    throw v1

    .line 1526
    .end local v0    # "output":Ljava/lang/String;
    :cond_39
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_23
.end method
