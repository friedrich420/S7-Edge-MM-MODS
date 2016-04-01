.class public Lcom/samsung/android/multidisplay/common/FallbackArrayList;
.super Ljava/util/ArrayList;
.source "FallbackArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final FALLBACK_ENABLED:Z = true

.field public static mFallbackIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, mFallbackIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    .line 35
    :goto_3
    return-void

    .line 29
    :catch_4
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 43
    :goto_4
    return v1

    .line 42
    :catch_5
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 56
    :goto_4
    return-object v1

    .line 55
    :catch_5
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, mFallbackIndex:I

    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 69
    :goto_4
    return-object v1

    .line 68
    :catch_5
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, mFallbackIndex:I

    invoke-super {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 82
    :goto_4
    return-object v1

    .line 81
    :catch_5
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget v1, mFallbackIndex:I

    invoke-super {p0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4
.end method

.method public setFallbackIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/multidisplay/common/FallbackArrayList;, "Lcom/samsung/android/multidisplay/common/FallbackArrayList<TE;>;"
    sput p1, mFallbackIndex:I

    .line 91
    return-void
.end method
