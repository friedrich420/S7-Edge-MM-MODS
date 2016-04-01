.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 3

    .prologue
    .line 1659
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mMap:Landroid/util/ArrayMap;

    .line 1660
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1673
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1675
    iput-object p2, p0, mCurOverflow:Ljava/lang/Object;

    .line 1677
    :cond_f
    return-void
.end method

.method public cleanup()V
    .registers 6

    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v4, 0x0

    .line 1680
    iget-object v0, p0, mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_f

    .line 1681
    iget-object v0, p0, mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 1682
    iput-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    .line 1685
    :cond_f
    iget-object v0, p0, mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v0, :cond_47

    .line 1688
    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    const-string v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1689
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMap:Landroid/util/ArrayMap;

    const-string v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    const-string v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_44
    iput-object v4, p0, mCurOverflow:Ljava/lang/Object;

    .line 1701
    :cond_46
    :goto_46
    return-void

    .line 1696
    :cond_47
    iget-object v0, p0, mCurOverflow:Ljava/lang/Object;

    if-eqz v0, :cond_55

    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    const-string v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1697
    :cond_55
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " map="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMap:Landroid/util/ArrayMap;

    const-string v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public clear()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v1, 0x0

    .line 1667
    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1668
    iput-object v1, p0, mCurOverflow:Ljava/lang/Object;

    .line 1669
    iput-object v1, p0, mActiveOverflow:Landroid/util/ArrayMap;

    .line 1670
    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 1663
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v0, p0, mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public startObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1704
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1705
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_a

    move-object v2, v1

    .line 1749
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    :goto_9
    return-object v2

    .line 1711
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    :cond_a
    iget-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4f

    .line 1712
    iget-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    .line 1713
    .local v3, "over":Landroid/util/MutableInt;
    if-eqz v3, :cond_4f

    .line 1715
    iget-object v1, p0, mCurOverflow:Ljava/lang/Object;

    .line 1716
    if-nez v1, :cond_47

    .line 1718
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have active overflow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but null overflow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-virtual {p0}, instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, mCurOverflow:Ljava/lang/Object;

    .line 1720
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    const-string v5, "*overflow*"

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_47
    iget v4, v3, Landroid/util/MutableInt;->value:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/util/MutableInt;->value:I

    move-object v2, v1

    .line 1723
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    goto :goto_9

    .line 1729
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    .end local v3    # "over":Landroid/util/MutableInt;
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    :cond_4f
    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1730
    .local v0, "N":I
    const/16 v4, 0x64

    if-lt v0, v4, :cond_82

    .line 1733
    iget-object v1, p0, mCurOverflow:Ljava/lang/Object;

    .line 1734
    if-nez v1, :cond_6a

    .line 1736
    invoke-virtual {p0}, instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, mCurOverflow:Ljava/lang/Object;

    .line 1737
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    const-string v5, "*overflow*"

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    :cond_6a
    iget-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v4, :cond_75

    .line 1740
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    .line 1742
    :cond_75
    iget-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1743
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    goto :goto_9

    .line 1747
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    :cond_82
    invoke-virtual {p0}, instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .line 1748
    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1749
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    goto/16 :goto_9
.end method

.method public stopObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1753
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v2, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1754
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_a

    move-object v2, v0

    .line 1780
    :goto_9
    return-object v2

    .line 1760
    :cond_a
    iget-object v2, p0, mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2d

    .line 1761
    iget-object v2, p0, mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 1762
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_2d

    .line 1764
    iget-object v0, p0, mCurOverflow:Ljava/lang/Object;

    .line 1765
    if-eqz v0, :cond_2d

    .line 1766
    iget v2, v1, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/util/MutableInt;->value:I

    .line 1767
    iget v2, v1, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2b

    .line 1768
    iget-object v2, p0, mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    move-object v2, v0

    .line 1770
    goto :goto_9

    .line 1777
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_2d
    const-string v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find object for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mapsize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activeoverflow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curoverflow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v2, 0x0

    goto :goto_9
.end method
