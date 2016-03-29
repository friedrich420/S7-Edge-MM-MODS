.class Lcom/android/settings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortingKey"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 307
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ZonePicker$MyComparator;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .local p1, "map1":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 314
    iget-object v7, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 315
    .local v3, "value1":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 318
    .local v4, "value2":Ljava/lang/Object;
    const-string v7, "name"

    iget-object v8, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 319
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 320
    .local v2, "sCollator":Ljava/text/Collator;
    const/4 v0, 0x0

    .line 321
    .local v0, "alabel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 323
    .local v1, "blabel":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_1
    if-nez v0, :cond_3

    .line 353
    .end local v0    # "alabel":Ljava/lang/String;
    .end local v1    # "blabel":Ljava/lang/String;
    .end local v2    # "sCollator":Ljava/text/Collator;
    .end local v3    # "value1":Ljava/lang/Object;
    :cond_2
    :goto_0
    return v5

    .line 335
    .restart local v0    # "alabel":Ljava/lang/String;
    .restart local v1    # "blabel":Ljava/lang/String;
    .restart local v2    # "sCollator":Ljava/text/Collator;
    .restart local v3    # "value1":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_4

    move v5, v6

    .line 336
    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 347
    .end local v0    # "alabel":Ljava/lang/String;
    .end local v1    # "blabel":Ljava/lang/String;
    .end local v2    # "sCollator":Ljava/text/Collator;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 348
    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 349
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    .line 350
    goto :goto_0

    .line 353
    :cond_7
    check-cast v3, Ljava/lang/Comparable;

    .end local v3    # "value1":Ljava/lang/Object;
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method
