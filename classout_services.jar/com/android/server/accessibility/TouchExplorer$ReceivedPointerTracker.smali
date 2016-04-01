.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 4

    .prologue
    const/16 v1, 0x20

    .line 1737
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    new-array v0, v1, [F

    iput-object v0, p0, mReceivedPointerDownX:[F

    .line 1742
    new-array v0, v1, [F

    iput-object v0, p0, mReceivedPointerDownY:[F

    .line 1743
    new-array v0, v1, [J

    iput-object v0, p0, mReceivedPointerDownTime:[J

    return-void
.end method

.method private findPrimaryPointerId()I
    .registers 9

    .prologue
    .line 1946
    const/4 v6, -0x1

    .line 1947
    .local v6, "primaryPointerId":I
    const-wide v2, 0x7fffffffffffffffL

    .line 1950
    .local v2, "minDownTime":J
    iget v5, p0, mReceivedPointersDown:I

    .line 1951
    .local v5, "pointerIdBits":I
    :cond_8
    :goto_8
    if-lez v5, :cond_1e

    .line 1952
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 1953
    .local v4, "pointerId":I
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    .line 1954
    iget-object v7, p0, mReceivedPointerDownTime:[J

    aget-wide v0, v7, v4

    .line 1955
    .local v0, "downPointerTime":J
    cmp-long v7, v0, v2

    if-gez v7, :cond_8

    .line 1956
    move-wide v2, v0

    .line 1957
    move v6, v4

    goto :goto_8

    .line 1960
    .end local v0    # "downPointerTime":J
    .end local v4    # "pointerId":I
    :cond_1e
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 9
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1901
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1902
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1904
    .local v0, "pointerFlag":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastReceivedUpPointerDownTime:J

    .line 1905
    iput v4, p0, mLastReceivedUpPointerDownX:F

    .line 1906
    iput v4, p0, mLastReceivedUpPointerDownX:F

    .line 1908
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, mLastReceivedDownEdgeFlags:I

    .line 1910
    iget v2, p0, mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, mReceivedPointersDown:I

    .line 1911
    iget-object v2, p0, mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 1912
    iget-object v2, p0, mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 1913
    iget-object v2, p0, mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1915
    iput v1, p0, mPrimaryPointerId:I

    .line 1916
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 9
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1925
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1926
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1928
    .local v0, "pointerFlag":I
    invoke-virtual {p0, v1}, getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, mLastReceivedUpPointerDownTime:J

    .line 1929
    iget-object v2, p0, mReceivedPointerDownX:[F

    aget v2, v2, v1

    iput v2, p0, mLastReceivedUpPointerDownX:F

    .line 1930
    iget-object v2, p0, mReceivedPointerDownY:[F

    aget v2, v2, v1

    iput v2, p0, mLastReceivedUpPointerDownY:F

    .line 1932
    iget v2, p0, mReceivedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, mReceivedPointersDown:I

    .line 1933
    iget-object v2, p0, mReceivedPointerDownX:[F

    aput v4, v2, v1

    .line 1934
    iget-object v2, p0, mReceivedPointerDownY:[F

    aput v4, v2, v1

    .line 1935
    iget-object v2, p0, mReceivedPointerDownTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 1937
    iget v2, p0, mPrimaryPointerId:I

    if-ne v2, v1, :cond_36

    .line 1938
    const/4 v2, -0x1

    iput v2, p0, mPrimaryPointerId:I

    .line 1940
    :cond_36
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1766
    iget-object v0, p0, mReceivedPointerDownX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1767
    iget-object v0, p0, mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1768
    iget-object v0, p0, mReceivedPointerDownTime:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 1769
    iput v2, p0, mReceivedPointersDown:I

    .line 1770
    iput v2, p0, mPrimaryPointerId:I

    .line 1771
    iput-wide v4, p0, mLastReceivedUpPointerDownTime:J

    .line 1772
    iput v1, p0, mLastReceivedUpPointerDownX:F

    .line 1773
    iput v1, p0, mLastReceivedUpPointerDownY:F

    .line 1774
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    .prologue
    .line 1891
    iget v0, p0, mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1811
    iget-object v0, p0, mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    .prologue
    .line 1870
    iget-wide v0, p0, mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .registers 2

    .prologue
    .line 1877
    iget v0, p0, mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .registers 2

    .prologue
    .line 1884
    iget v0, p0, mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    .prologue
    .line 1860
    iget v0, p0, mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1861
    invoke-direct {p0}, findPrimaryPointerId()I

    move-result v0

    iput v0, p0, mPrimaryPointerId:I

    .line 1863
    :cond_b
    iget v0, p0, mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    .prologue
    .line 1818
    iget v0, p0, mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 1853
    iget-object v0, p0, mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1837
    iget-object v0, p0, mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 1845
    iget-object v0, p0, mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1828
    shl-int v0, v1, p1

    .line 1829
    .local v0, "pointerFlag":I
    iget v2, p0, mReceivedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1782
    iget-object v1, p0, mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    .line 1783
    iget-object v1, p0, mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1785
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1788
    .local v0, "action":I
    packed-switch v0, :pswitch_data_38

    .line 1805
    :goto_16
    :pswitch_16
    return-void

    .line 1790
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1793
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1796
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1799
    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    .line 1788
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_2f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1966
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {p0}, getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1969
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    .line 1971
    invoke-virtual {p0, v1}, isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1973
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1976
    :cond_31
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    const-string v2, "\nPrimary pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {p0}, getPrimaryPointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1979
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
