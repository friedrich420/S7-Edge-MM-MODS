.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStylusButtonEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowShown:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, mAlive:Z

    .line 356
    return-void
.end method

.method private checkIsAlive()V
    .registers 3

    .prologue
    .line 886
    iget-boolean v0, p0, mAlive:Z

    if-nez v0, :cond_c

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_c
    return-void
.end method

.method private kill()V
    .registers 2

    .prologue
    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, mAlive:Z

    .line 913
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .prologue
    .line 797
    invoke-direct {p0}, checkIsAlive()V

    .line 799
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_e

    .line 800
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 804
    :cond_e
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method public addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .prologue
    .line 689
    invoke-direct {p0}, checkIsAlive()V

    .line 691
    iget-object v0, p0, mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOnDrawListeners:Ljava/util/ArrayList;

    .line 695
    :cond_e
    iget-object v0, p0, mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .prologue
    .line 831
    invoke-direct {p0}, checkIsAlive()V

    .line 832
    iget-object v0, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_e

    .line 833
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 836
    :cond_e
    iget-object v0, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .prologue
    .line 529
    invoke-direct {p0}, checkIsAlive()V

    .line 531
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_e

    .line 532
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 535
    :cond_e
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 564
    invoke-direct {p0}, checkIsAlive()V

    .line 566
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_e

    .line 567
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 570
    :cond_e
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 571
    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .prologue
    .line 614
    invoke-direct {p0}, checkIsAlive()V

    .line 616
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_e

    .line 617
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 620
    :cond_e
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 725
    invoke-direct {p0}, checkIsAlive()V

    .line 727
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_e

    .line 728
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 731
    :cond_e
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method public addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    .prologue
    .line 860
    invoke-direct {p0}, checkIsAlive()V

    .line 862
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    .line 866
    :cond_e
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .prologue
    .line 759
    invoke-direct {p0}, checkIsAlive()V

    .line 761
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_e

    .line 762
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 765
    :cond_e
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method public addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .prologue
    .line 459
    invoke-direct {p0}, checkIsAlive()V

    .line 461
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_e

    .line 462
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 466
    :cond_e
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .prologue
    .line 494
    invoke-direct {p0}, checkIsAlive()V

    .line 496
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_e

    .line 497
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 501
    :cond_e
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method public addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .prologue
    .line 649
    invoke-direct {p0}, checkIsAlive()V

    .line 651
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_e

    .line 652
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 655
    :cond_e
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 656
    iget-boolean v0, p0, mWindowShown:Z

    if-eqz v0, :cond_1a

    .line 657
    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    .line 659
    :cond_1a
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 7
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 1111
    iget-object v3, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1113
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_24

    .line 1114
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 1116
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :try_start_e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 1117
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_21

    .line 1118
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_25

    .line 1117
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1121
    :cond_21
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1124
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_24
    return-void

    .line 1121
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :catchall_25
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnDraw()V
    .registers 5

    .prologue
    .line 1048
    iget-object v3, p0, mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 1049
    iget-object v1, p0, mOnDrawListeners:Ljava/util/ArrayList;

    .line 1050
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1051
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_19

    .line 1052
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1055
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    .end local v2    # "numListeners":I
    :cond_19
    return-void
.end method

.method public final dispatchOnEnterAnimationComplete()V
    .registers 5

    .prologue
    .line 1134
    iget-object v2, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1136
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;>;"
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1137
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 1138
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    goto :goto_e

    .line 1141
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    :cond_1e
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .prologue
    .line 958
    iget-object v2, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 959
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 960
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 961
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_e

    .line 964
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    :cond_1e
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .registers 6

    .prologue
    .line 976
    iget-object v3, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 977
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_24

    .line 978
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 980
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :try_start_e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 981
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_21

    .line 982
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_25

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 985
    :cond_21
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 988
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_24
    return-void

    .line 985
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :catchall_25
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 1148
    iget-object v3, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    iget-object v3, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_27

    .line 1149
    iget-object v3, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1151
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1152
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v2, :cond_27

    .line 1153
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    invoke-interface {v3, p1, p2}, Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;I)V

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1156
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;>;"
    .end local v2    # "numListeners":I
    :cond_27
    return-void
.end method

.method public final dispatchOnPreDraw()Z
    .registers 7

    .prologue
    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "cancelDraw":Z
    iget-object v4, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1009
    .local v4, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v5

    if-lez v5, :cond_2c

    .line 1010
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 1012
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :try_start_f
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1013
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_29

    .line 1014
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_2d

    move-result v5

    if-nez v5, :cond_27

    const/4 v5, 0x1

    :goto_23
    or-int/2addr v1, v5

    .line 1013
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1014
    :cond_27
    const/4 v5, 0x0

    goto :goto_23

    .line 1017
    :cond_29
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1020
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2c
    return v1

    .line 1017
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :catchall_2d
    move-exception v5

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v5
.end method

.method final dispatchOnScrollChanged()V
    .registers 6

    .prologue
    .line 1080
    iget-object v3, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1081
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_24

    .line 1082
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 1084
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :try_start_e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 1085
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_21

    .line 1086
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_25

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1089
    :cond_21
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1092
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_24
    return-void

    .line 1089
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :catchall_25
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .registers 6
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 1063
    iget-object v2, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1065
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 1066
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 1067
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_e

    .line 1070
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    :cond_1e
    return-void
.end method

.method final dispatchOnWindowAttachedChange(Z)V
    .registers 6
    .param p1, "attached"    # Z

    .prologue
    .line 923
    iget-object v2, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 925
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowAttachListener;>;"
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    .line 926
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 927
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    if-eqz p1, :cond_20

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_e

    .line 928
    :cond_20
    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    goto :goto_e

    .line 931
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    :cond_24
    return-void
.end method

.method final dispatchOnWindowFocusChange(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .prologue
    .line 941
    iget-object v2, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 943
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;>;"
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 944
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 945
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_e

    .line 948
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    :cond_1e
    return-void
.end method

.method public final dispatchOnWindowShown()V
    .registers 6

    .prologue
    .line 1029
    const/4 v4, 0x1

    iput-boolean v4, p0, mWindowShown:Z

    .line 1030
    iget-object v3, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1031
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_27

    .line 1032
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 1034
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :try_start_11
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 1035
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_24

    .line 1036
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_28

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1039
    :cond_24
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1042
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_27
    return-void

    .line 1039
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :catchall_28
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method final hasComputeInternalInsetsListeners()Z
    .registers 3

    .prologue
    .line 1098
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1100
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method final hasOnPreDrawListeners()Z
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 902
    iget-boolean v0, p0, mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 366
    iget-object v0, p1, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_f

    .line 367
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9a

    .line 368
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_f
    :goto_f
    iget-object v0, p1, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1e

    .line 375
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_a0

    .line 376
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_1e
    :goto_1e
    iget-object v0, p1, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2d

    .line 383
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_a6

    .line 384
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 390
    :cond_2d
    :goto_2d
    iget-object v0, p1, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_3c

    .line 391
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_ab

    .line 392
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 398
    :cond_3c
    :goto_3c
    iget-object v0, p1, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_4b

    .line 399
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_b0

    .line 400
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 406
    :cond_4b
    :goto_4b
    iget-object v0, p1, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5a

    .line 407
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_b5

    .line 408
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_5a
    :goto_5a
    iget-object v0, p1, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_69

    .line 415
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_ba

    .line 416
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 422
    :cond_69
    :goto_69
    iget-object v0, p1, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_78

    .line 423
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_bf

    .line 424
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 430
    :cond_78
    :goto_78
    iget-object v0, p1, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_87

    .line 431
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_c4

    .line 432
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 439
    :cond_87
    :goto_87
    iget-object v0, p1, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_96

    .line 440
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c9

    .line 441
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iget-object v1, p1, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 448
    :cond_96
    :goto_96
    invoke-direct {p1}, kill()V

    .line 449
    return-void

    .line 370
    :cond_9a
    iget-object v0, p1, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_f

    .line 378
    :cond_a0
    iget-object v0, p1, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_1e

    .line 386
    :cond_a6
    iget-object v0, p1, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_2d

    .line 394
    :cond_ab
    iget-object v0, p1, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_3c

    .line 402
    :cond_b0
    iget-object v0, p1, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_4b

    .line 410
    :cond_b5
    iget-object v0, p1, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_5a

    .line 418
    :cond_ba
    iget-object v0, p1, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_69

    .line 426
    :cond_bf
    iget-object v0, p1, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_78

    .line 434
    :cond_c4
    iget-object v0, p1, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_87

    .line 443
    :cond_c9
    iget-object v0, p1, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iput-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    goto :goto_96
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0, p1}, removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 587
    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .prologue
    .line 820
    invoke-direct {p0}, checkIsAlive()V

    .line 821
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_8

    .line 825
    :goto_7
    return-void

    .line 824
    :cond_8
    iget-object v0, p0, mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .prologue
    .line 710
    invoke-direct {p0}, checkIsAlive()V

    .line 711
    iget-object v0, p0, mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 715
    :goto_7
    return-void

    .line 714
    :cond_8
    iget-object v0, p0, mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .prologue
    .line 843
    invoke-direct {p0}, checkIsAlive()V

    .line 844
    iget-object v0, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 848
    :goto_7
    return-void

    .line 847
    :cond_8
    iget-object v0, p0, mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .prologue
    .line 548
    invoke-direct {p0}, checkIsAlive()V

    .line 549
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 553
    :goto_7
    return-void

    .line 552
    :cond_8
    iget-object v0, p0, mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 599
    invoke-direct {p0}, checkIsAlive()V

    .line 600
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_8

    .line 604
    :goto_7
    return-void

    .line 603
    :cond_8
    iget-object v0, p0, mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .prologue
    .line 633
    invoke-direct {p0}, checkIsAlive()V

    .line 634
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_8

    .line 638
    :goto_7
    return-void

    .line 637
    :cond_8
    iget-object v0, p0, mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 744
    invoke-direct {p0}, checkIsAlive()V

    .line 745
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_8

    .line 749
    :goto_7
    return-void

    .line 748
    :cond_8
    iget-object v0, p0, mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;

    .prologue
    .line 877
    invoke-direct {p0}, checkIsAlive()V

    .line 878
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 882
    :goto_7
    return-void

    .line 881
    :cond_8
    iget-object v0, p0, mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .prologue
    .line 778
    invoke-direct {p0}, checkIsAlive()V

    .line 779
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 783
    :goto_7
    return-void

    .line 782
    :cond_8
    iget-object v0, p0, mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .prologue
    .line 479
    invoke-direct {p0}, checkIsAlive()V

    .line 480
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 484
    :goto_7
    return-void

    .line 483
    :cond_8
    iget-object v0, p0, mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .prologue
    .line 514
    invoke-direct {p0}, checkIsAlive()V

    .line 515
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 519
    :goto_7
    return-void

    .line 518
    :cond_8
    iget-object v0, p0, mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .registers 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .prologue
    .line 672
    invoke-direct {p0}, checkIsAlive()V

    .line 673
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_8

    .line 677
    :goto_7
    return-void

    .line 676
    :cond_8
    iget-object v0, p0, mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_7
.end method
