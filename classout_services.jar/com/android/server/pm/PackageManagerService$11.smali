.class final Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 9
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 13753
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13754
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13756
    .local v1, "v2":I
    if-eq v0, v1, :cond_d

    .line 13757
    if-le v0, v1, :cond_b

    .line 13776
    :cond_a
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 13757
    goto :goto_a

    .line 13759
    :cond_d
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13760
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13761
    if-eq v0, v1, :cond_17

    .line 13762
    if-gt v0, v1, :cond_a

    move v2, v3

    goto :goto_a

    .line 13764
    :cond_17
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_23

    .line 13765
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 13767
    :cond_23
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 13768
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 13770
    if-eq v0, v1, :cond_2d

    .line 13771
    if-gt v0, v1, :cond_a

    move v2, v3

    goto :goto_a

    .line 13773
    :cond_2d
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_39

    .line 13774
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 13776
    :cond_39
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13751
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
