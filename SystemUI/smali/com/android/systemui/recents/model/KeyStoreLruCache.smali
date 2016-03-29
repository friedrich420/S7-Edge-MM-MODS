.class public Lcom/android/systemui/recents/model/KeyStoreLruCache;
.super Ljava/lang/Object;
.source "KeyStoreLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field mTaskKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/model/KeyStoreLruCache$1;-><init>(Lcom/android/systemui/recents/model/KeyStoreLruCache;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    .line 44
    return-void
.end method


# virtual methods
.method final evictAll()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    return-void
.end method

.method final get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 56
    .local v0, "lastKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/KeyStoreLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method final remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 75
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method final trimToSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 92
    .local p0, "this":Lcom/android/systemui/recents/model/KeyStoreLruCache;, "Lcom/android/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    .line 93
    return-void
.end method
