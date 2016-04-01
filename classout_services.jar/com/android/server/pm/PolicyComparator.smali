.class final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/Policy;",
        ">;"
    }
.end annotation


# instance fields
.field private duplicateFound:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3171
    const/4 v0, 0x0

    iput-boolean v0, p0, duplicateFound:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .registers 9
    .param p1, "p1"    # Lcom/android/server/pm/Policy;
    .param p2, "p2"    # Lcom/android/server/pm/Policy;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 3181
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    move-result v5

    if-eq v4, v5, :cond_15

    .line 3182
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->isDefaultStanza()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3207
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 3182
    goto :goto_12

    .line 3186
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v5

    if-eq v4, v5, :cond_29

    .line 3187
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v4

    if-eqz v4, :cond_27

    :goto_25
    move v2, v3

    goto :goto_12

    :cond_27
    move v3, v2

    goto :goto_25

    .line 3191
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 3193
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3194
    iput-boolean v2, p0, duplicateFound:Z

    .line 3195
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate policy entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v0

    .line 3200
    .local v0, "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v1

    .line 3201
    .local v1, "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 3202
    iput-boolean v2, p0, duplicateFound:Z

    .line 3203
    const-string v2, "SELinuxMMAC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate policy entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    .end local v0    # "p1Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p2Packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8f
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3169
    check-cast p1, Lcom/android/server/pm/Policy;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/pm/Policy;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    move-result v0

    return v0
.end method

.method public foundDuplicate()Z
    .registers 2

    .prologue
    .line 3174
    iget-boolean v0, p0, duplicateFound:Z

    return v0
.end method
